<?php

namespace Common\Files\Response;

use Carbon\Carbon;
use Common\Files\FileEntry;
use Illuminate\Support\Collection;
use ZipStream\Option\Archive;
use ZipStream\ZipStream;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;


class DownloadFilesResponse
{
    // basename with extension => count
    // for incrementing file names in zip for files that have duplicate name
    protected array $filesInZip = [];

    public function __construct(
        protected FileResponseFactory $fileResponseFactory,
    ) {
    }

    /**
     * @param Collection|FileEntry[] $entries
     * @return mixed
     */
    public function create($entries)
    {
        if ($entries->count() === 1 && $entries->first()->type !== 'folder') {
            return $this->fileResponseFactory->create(
                $entries->first(),
                'attachment',
            );
        } else {
            $this->streamZip($entries);
        }
    }

   /* private function streamZip(Collection $entries): void
    {
        header('X-Accel-Buffering: no');
        $options = new Archive();
        $options->setSendHttpHeaders(true);

        // downloading multiple files from s3 will error out without this
        $options->setZeroHeader(true);

        $timestamp = Carbon::now()->getTimestamp();
        $zip = new ZipStream("download-$timestamp.zip", $options);

        $this->fillZip($zip, $entries);
        dd($zip);

        $zip->finish();

    }*/

    private function streamZip(Collection $entries): void
    {
        // dd($entries);
        header('X-Accel-Buffering: no');

        $timestamp = Carbon::now()->getTimestamp();
        $zip = new ZipStream(outputName:"download-$timestamp.zip",  sendHttpHeaders: true,);

        $this->fillZip($zip, $entries);
        $zip->finish();
    }

   /* private function fillZip(ZipStream $zip, Collection $entries): void
    {
        $entries->each(function (FileEntry $entry) use ($zip) {
            if ($entry->type === 'folder') {
                Log::info("Processing folder: " . $entry->name);

                // this will load all children, nested at any level, so no need to do a recursive loop
                $entry
                    ->allChildren()
                    ->select([
                        'id',
                        'name',
                        'extension',
                        'path',
                        'type',
                        'file_name',
                        'disk_prefix',
                    ])
                    ->orderBy('path', 'asc')
                    ->chunk(300, function (Collection $chunk) use (
                        $zip,
                        $entry,
                    ) {
                        $chunk->each(function (FileEntry $childEntry) use (
                            $zip,
                            $entry,
                            $chunk,
                        ) {
                            $path = $this->transformPath(
                                $childEntry,
                                $entry,
                                $chunk,
                            );
                            if ($childEntry->type === 'folder') {
                                // add empty folder in case it has no children
                                $zip->addFile("$path/", '');
                            } else {
                                $this->addFileToZip($childEntry, $zip, $path);
                            }
                        });
                    });
            } else {
                Log::info("Adding file to zip: " . $entry->getNameWithExtension());

                $this->addFileToZip($entry, $zip);
            }
        });
    }*/
    
    private function fillZip(ZipStream $zip, Collection $entries): void
    {
        $entries->each(function (FileEntry $entry) use ($zip) {
            if ($entry->type === 'folder') {
                Log::info("Processing folder: " . $entry->name);
    
                // Log the children being fetched
                Log::info("Fetching children of folder: " . $entry->name);
    
                $entry
                    ->allChildren()
                    ->select([
                        'id',
                        'name',
                        'extension',
                        'path',
                        'type',
                        'file_name',
                        'disk_prefix',
                        'public',
                    ])
                    ->orderBy('path', 'asc')
                    ->chunk(300, function (Collection $chunk) use ($zip, $entry) {
                        // Log the number of children in the chunk
                        Log::info("Processing chunk of " . $chunk->count() . " children for folder: " . $entry->name);
    
                        $chunk->each(function (FileEntry $childEntry) use ($zip, $entry, $chunk) { // Added $chunk as argument
                            $path = $this->transformPath(
                                $childEntry,
                                $entry,
                                $chunk, // Pass $chunk to the transformPath method
                            );
                            if ($childEntry->type === 'folder') {
                                // add empty folder in case it has no children
                                $zip->addFile("$path/", '');
                            } else {
                                Log::info("Adding file to zip: " . $childEntry->getNameWithExtension());
                                $this->addFileToZip($childEntry, $zip, $path);

                            }
                        });
                    });
            } else {
                Log::info("Adding file to zip: " . $entry->getNameWithExtension());
                $this->addFileToZip($entry, $zip);

            }
        });
    }
    

    

   private function addFileToZip(
        FileEntry $entry,
        ZipStream $zip,
        string|null $path = null,
    ): void {
        if (!$path) {
            $path = $entry->getNameWithExtension();
        }
        Log::info("Addingg file to zip: $path");

        $parts = pathinfo($path);
        $basename = $parts['basename'];
        $filename = $parts['filename'];
        $extension = $parts['extension'];
        $dirname = $parts['dirname'] === '.' ? '' : $parts['dirname'];

        // add number to duplicate file names (file(1).png, file(2).png etc)
        if (isset($this->filesInZip[$basename])) {
            $newCount = $this->filesInZip[$basename] + 1;
            $this->filesInZip[$basename] = $newCount;
            $path = "$dirname/$filename($newCount).$extension";

        } else {
            Log::info("else part worked");

            $this->filesInZip[$basename] = 0;
        }
        Log::info("path". $entry->getStoragePath());

        //$path = 'uploads/48c06bea-a008-44f0-ba0c-3684a13957b5/';
       // $stream = Storage::disk('s3')->readStream($path);
       // $stream = Storage::disk('s3')->readStream($entry->getStoragePath());
      //$stream = $entry->getDisk()->readStream($entry->getStoragePath());
        //Log::info("value of stream is".$stream);
        $stream = fopen('https://jebin.s3.ap-south-1.amazonaws.com/uploads%5Cd595de4a-e17b-481e-a16c-e0a05ecc08b4/d595de4a-e17b-481e-a16c-e0a05ecc08b4', 'r');

        if ($stream) {
            $zip->addFileFromStream($path, $stream);
            fclose($stream);
        }
        Log::info("no stream found");
    }

    /*
     * Replace entry IDs with names inside "path" property.
     */
    private function transformPath(
        FileEntry $entry,
        FileEntry $parent,
        Collection $folders,
    ): string {
        if (!$entry->path) {
            return $entry->getNameWithExtension();
        }

        // '56/55/54 => [56,55,54]
        $path = array_filter(explode('/', $entry->path));
        $path = array_map(function ($id) {
            return (int) $id;
        }, $path);

        //only generate path until specified parent and not root
        $path = array_slice($path, array_search($parent->id, $path));

        // last value will be id of the file itself, remove it
        array_pop($path);

        // map parent folder IDs to names
        $path = array_map(function ($id) use ($folders, $parent) {
            if ($id === $parent->id) {
                return $parent->name;
            }
            return $folders->find($id)->name;
        }, $path);

        return implode('/', $path) . '/' . $entry->getNameWithExtension();
    }
}
