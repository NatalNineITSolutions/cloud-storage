<?php
 
namespace Common\Files\Controllers;
 
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
use Illuminate\Support\Facades\Storage;
use App\Models\UserS3Conf;
use Illuminate\Support\Facades\Log;
 
class FileEntriesController extends BaseController
{
    public function __construct(
        protected Request $request,
        protected FileEntry $entry,
    ) {
        $this->middleware('auth')->only(['index']);
    }
 
    public function index()
    {
        $params = $this->request->all();
        $currentUser = Auth::user();
 
        $query = $this->entry
            ->join('users', 'file_entries.owner_id', '=', 'users.id') 
            ->select('file_entries.*', 'users.admin_user_id');
 
        if ($currentUser->user_type === 'super_admin') {
            $this->authorize('index', FileEntry::class);
            $dataSource = new Datasource($this->entry->with(['users']), $params);
        } else {
            $query->where(function ($subQuery) use ($currentUser) {
                $subQuery->where('file_entries.owner_id', $currentUser->id)
                         ->orWhere('users.admin_user_id', $currentUser->id);
            });
            $this->authorize('index', FileEntry::class);
            $dataSource = new Datasource($query->with(['users']), $this->request->all());
        }
 
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
        // // Store the file on S3
        $fileUrl = $this->storeFileOnS3($file, Auth::user());
 
        $payload->file_url = $fileUrl;
 
        app(StoreFile::class)->execute($payload, ['file' => $file]);
 
        $fileEntry = app(CreateFileEntry::class)->execute($payload);
 
        event(new FileUploaded($fileEntry));
 
        return $this->success(['fileEntry' => $fileEntry->load('users')], 201);
    }
 
 
    protected function storeFileOnS3(UploadedFile $file, $user)
    {
        $user = Auth::user();
        $folderPath = $user->user_type !== 'super_admin' ? rtrim($user->name, '/') . '/' : '';
 
        $originalName = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
        $extension = $file->getClientOriginalExtension();
 
        $fileName = $originalName . '.' . $extension;
        $fullPath = $folderPath . $fileName;
 
        $fileExists = Storage::disk('s3')->exists($fullPath);
 
        if ($fileExists) {
            $counter = 1;
            do {
                $fileName = $originalName . "({$counter})." . $extension;
                $fullPath = $folderPath . $fileName;
                $fileExists = Storage::disk('s3')->exists($fullPath);
                $counter++;
            } while ($fileExists);
        }
 
 
        Storage::disk('s3')->put($fullPath, file_get_contents($file));
 
        return Storage::disk('s3')->url($fullPath);
    }
 
    public function getFilesForCurrentUser($currentUser)
    {
        return FileEntry::join('users', 'file_entries.owner_id', '=', 'users.id')
                        ->where(function ($subQuery) use ($currentUser) {
                            $subQuery->where('file_entries.owner_id', $currentUser->id)
                                     ->orWhere('users.admin_user_id', $currentUser->id);
                        })
                        ->select('file_entries.*', 'users.admin_user_id')
                        ->get();
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
 
        if ($this->request->get('emptyTrash')) {
            $entryIds = $this->entry
                ->where('owner_id', $userId)
                ->onlyTrashed()
                ->pluck('id')
                ->toArray();
        }
 
        try {
            app(DeleteEntries::class)->execute([
                'paths' => $this->request->get('paths'),
                'entryIds' => $entryIds,
                'soft' => !$this->request->get('deleteForever', true) && !$this->request->get('emptyTrash'),
            ]);
    
            return $this->success();
    
        } catch (\Exception $e) {
     
            return response()->json([
                'status' => 'error',
                'message' => 'An error occurred while deleting files.',
                'error' => $e->getMessage(),
            ], 500); 
        }
 
        return $this->success();
    }
}