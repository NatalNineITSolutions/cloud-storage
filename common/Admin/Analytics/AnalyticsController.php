<?php

namespace Common\Admin\Analytics;

use Carbon\CarbonImmutable;
use Common\Admin\Analytics\Actions\BuildAnalyticsReport;
use Common\Admin\Analytics\Actions\BuildNullAnalyticsReport;
use Common\Admin\Analytics\Actions\GetAnalyticsHeaderDataAction;
use Common\Core\BaseController;
use Common\Database\Metrics\MetricDateRange;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Auth;
use App\Models\File;
use App\Models\Folder;
use App\Models\User;

class AnalyticsController extends BaseController
{
    public function __construct(
        protected Request $request,
        protected BuildAnalyticsReport $getDataAction,
        protected GetAnalyticsHeaderDataAction $getHeaderDataAction,
    ) {}

    public function report()
    {
        $this->authorize('index', 'ReportPolicy');

        $types = explode(',', $this->request->get('types', 'visitors,header'));
        $dateRange = $this->getDateRange();
        $cacheKey = sprintf(
            '%s-%s',
            $dateRange->getCacheKey(),
            implode(',', $types),
        );

        $response = [];
        $reportParams = ['dateRange' => $dateRange];
        if (in_array('visitors', $types)) {
            try {
                $response['visitorsReport'] = Cache::remember(
                    "adminReport.main.$cacheKey",
                    CarbonImmutable::now()->addDay(),
                    fn() => $this->getDataAction->execute($reportParams),
                );
            } catch (Exception $e) {
                $response['visitorsReport'] = app(
                    BuildNullAnalyticsReport::class,
                )->execute($reportParams);
            }
        }
        if (in_array('header', $types)) {
            $response['headerReport'] = Cache::remember(
                "adminReport.header.$cacheKey",
                CarbonImmutable::now()->addDay(),
                fn() => $this->getHeaderDataAction->execute($reportParams),
            );
        }

        return $this->success($response);
    }

    public function userReport()
    {
        // Initialize the response array
        $response = [];

        $currentUserId = Auth::id();
        $usersEmplyeesId = User::query()
            ->where('admin_user_id', $currentUserId)
            ->pluck('id');

        // Get current user details
        $currentUser = User::find($currentUserId);
        $isSuperAdmin = $currentUser->user_type === 'super_admin';

        // --- Get New Files Count ---
        $newFilesCount = File::withTrashed()
            ->when(!$isSuperAdmin, function ($query) use ($currentUserId, $usersEmplyeesId) {
                $query->where('owner_id', $currentUserId)
                    ->orWhereIn('owner_id', $usersEmplyeesId);
            })
            ->count();

        // --- Get New Folders Count ---
        $newFoldersCount = Folder::withTrashed()
            ->when(!$isSuperAdmin, function ($query) use ($currentUserId, $usersEmplyeesId) {
                $query->where('owner_id', $currentUserId)
                    ->orWhereIn('owner_id', $usersEmplyeesId);
            })
            ->count();

        // --- Get Total File Size ---
        $totalFileSize = File::query()
            ->when(!$isSuperAdmin, function ($query) use ($currentUserId, $usersEmplyeesId) {
                $query->where('owner_id', $currentUserId)
                    ->orWhereIn('owner_id', $usersEmplyeesId);
            })
            ->sum('file_size'); // Assuming 'file_size' is a column in the 'files' table

        // Add the data to the response
        $response['headerReport'] = [
            'newFiles' => $newFilesCount,
            'newFolders' => $newFoldersCount,
            'totalFileSize' => $totalFileSize,
        ];

        // Return the response
        return $this->success($response);
    }


    protected function getDateRange(): MetricDateRange
    {
        $startDate = $this->request->get('startDate');
        $endDate = $this->request->get('endDate');
        $timezone = $this->request->get('timezone', config('app.timezone'));

        return new MetricDateRange(
            start: $startDate,
            end: $endDate,
            timezone: $timezone,
        );
    }
}
