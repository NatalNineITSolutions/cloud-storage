<?php namespace Common\Files\Controllers;

use Auth;
use Common\Core\BaseController;
use Common\Database\Datasource\Datasource;
use Common\Files\Actions\CreateFileEntry;
use Common\Files\Actions\Deletion\DeleteEntries;
use Common\Files\Actions\StoreFile;
use Common\Files\Actions\ValidateFileUpload;
use Common\Files\Events\FileUploaded;
use Common\Files\FileEntry;
use Common\Files\FileEntryPayload;
use Common\Files\Response\FileResponseFactory;
use Illuminate\Contracts\Filesystem\FileNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Http\UploadedFile;

class FileEntriesController extends BaseController
{
    public function __construct(
        protected Request $request,
        protected FileEntry $entry,
    ) {
        $this->middleware('auth')->only(['index']);
    }

    // public function index()
    // {
    //     $params = $this->request->all();
    //     $params['userId'] = $this->request->get('userId');

    //     // scope files to current user by default if it's an API request
    //     if (!requestIsFromFrontend() && !$params['userId']) {
    //         $params['userId'] = Auth::id();
    //     }

    //     $this->authorize('index', FileEntry::class);

    //     $dataSource = new Datasource($this->entry->with(['users']), $params);

    //     $pagination = $dataSource->paginate();

    //     return $this->success(['pagination' => $pagination]);
    // }

    public function index()
    {
        $params = $this->request->all();
        
        $currentUser = Auth::user();
        
        //join the Two table users and file_entries
        $query = $this->entry
        ->join('users', 'file_entries.owner_id', '=', 'users.id') // Join on owner_id
        ->select('file_entries.*', 'users.admin_user_id');
        
        if ($currentUser->user_type === 'super_admin') {
            $this->authorize('index', FileEntry::class);
            $dataSource = new Datasource($this->entry->with(['users']), $params);
        }  else {
            $query->where(function ($subQuery) use ($currentUser) {
                $subQuery->where('file_entries.owner_id', $currentUser->id) // Filter by ownership
                         ->orWhere('users.admin_user_id', $currentUser->id); // Filter by admin oversight
            });
            $this->authorize('index', FileEntry::class);
            $dataSource = new Datasource($query->with(['users']), $this->request->all());
        }
        // Paginate the results
        $pagination = $dataSource->paginate();
        return $this->success(['pagination' => $pagination]);
    }

    public function show(FileEntry $fileEntry, FileResponseFactory $response)
    {
        $this->authorize('show', $fileEntry);

        try {
            return $response->create($fileEntry);
        } catch (FileNotFoundException $e) {
            abort(404);
        }
    }

    public function showModel(FileEntry $fileEntry)
    {
        $this->authorize('show', $fileEntry);

        return $this->success(['fileEntry' => $fileEntry]);
    }

    public function store()
    {
        $parentId = (int) request('parentId') ?: null;
        request()->merge(['parentId' => $parentId]);

        $this->authorize('store', [FileEntry::class, request('parentId')]);

        $this->validate($this->request, [
            'file' => [
                'required',
                'file',
                function ($attribute, UploadedFile $value, $fail) {
                    $errors = app(ValidateFileUpload::class)->execute([
                        'extension' => $value->guessExtension(),
                        'size' => $value->getSize(),
                    ]);
                    if ($errors) {
                        $fail($errors->first());
                    }
                },
            ],
            'parentId' => 'nullable|exists:file_entries,id',
            'relativePath' => 'nullable|string',
        ]);

        $file = $this->request->file('file');
        $payload = new FileEntryPayload($this->request->all());

        app(StoreFile::class)->execute($payload, ['file' => $file]);

        $fileEntry = app(CreateFileEntry::class)->execute($payload);

        event(new FileUploaded($fileEntry));

        return $this->success(['fileEntry' => $fileEntry->load('users')], 201);
    }

    public function update(int $entryId)
    {
        $this->authorize('update', [FileEntry::class, [$entryId]]);

        $this->validate($this->request, [
            'name' => 'string|min:3|max:200',
            'description' => 'nullable|string|min:3|max:200',
        ]);

        $params = $this->request->all();
        $entry = $this->entry->findOrFail($entryId);

        $entry->fill($params)->update();

        return $this->success(['fileEntry' => $entry->load('users')]);
    }

    public function destroy(string $entryIds = null)
    {
        if ($entryIds) {
            $entryIds = explode(',', $entryIds);
        } else {
            $entryIds = $this->request->get('entryIds');
        }

        $userId = Auth::id();

        $this->validate($this->request, [
            'entryIds' => 'array|exists:file_entries,id',
            'paths' => 'array',
            'deleteForever' => 'boolean',
            'emptyTrash' => 'boolean',
        ]);

        // get all soft deleted entries for user, if we are emptying trash
        if ($this->request->get('emptyTrash')) {
            $entryIds = $this->entry
                ->where('owner_id', $userId)
                ->onlyTrashed()
                ->pluck('id')
                ->toArray();
        }

        app(DeleteEntries::class)->execute([
            'paths' => $this->request->get('paths'),
            'entryIds' => $entryIds,
            'soft' =>
                !$this->request->get('deleteForever', true) &&
                !$this->request->get('emptyTrash'),
        ]);

        return $this->success();
    }
}
