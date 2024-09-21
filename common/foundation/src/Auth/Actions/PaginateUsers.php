<?php

namespace Common\Auth\Actions;

use App\Models\User;
use Common\Database\Datasource\Datasource;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Pagination\AbstractPaginator;
use Illuminate\Support\Arr;

class PaginateUsers
{
    public function execute(array $params): AbstractPaginator
    {
        \Log::info("data: " . json_encode($params['admin_user_id']));
        $query = User::with(['roles', 'permissions']);

        if (Arr::has($params, 'admin_user_id')) {
            // Retrieve the 'admin_user_id' from params
            $adminUserId = $params['admin_user_id'];

            $adminUser = User::find($adminUserId);
            if ($adminUser) {
                $userType = $adminUser->user_type;

                if ($userType === 'super_admin') {
                    // Super admin can see all users, no additional filters
                } else {
                    $query->where("admin_user_id", $adminUserId);
                }
            } else {
                \Log::warning("Admin user with ID $adminUserId not found.");
            }
        } else {
            \Log::warning("No 'admin_user_id' provided in parameters.");
        }

        if ($roleId = Arr::get($params, 'roleId')) {
            $relation = $query->getModel()->roles();
            $query
                ->leftJoin(
                    $relation->getTable(),
                    $relation->getQualifiedParentKeyName(),
                    '=',
                    $relation->getQualifiedForeignPivotKeyName(),
                )
                ->where(
                    $relation->getQualifiedRelatedPivotKeyName(),
                    '=',
                    $roleId,
                );
            $query->select(['users.*', 'user_role.created_at as created_at']);
        }

        if ($roleName = Arr::get($params, 'roleName')) {
            $query->whereHas(
                'roles',
                fn(Builder $q) => $q->where('roles.name', $roleName),
            );
        }

        if ($permission = Arr::get($params, 'permission')) {
            $query
                ->whereHas(
                    'permissions',
                    fn(Builder $query) => $query->whereIn('name', [
                        $permission,
                        'admin',
                    ]),
                )
                ->orWhereHas(
                    'roles',
                    fn(Builder $query) => $query->whereHas(
                        'permissions',
                        fn(Builder $query) => $query->whereIn('name', [
                            $permission,
                            'admin',
                        ]),
                    ),
                );
        }

        return (new Datasource($query, $params))->paginate();
    }
}
