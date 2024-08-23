<?php namespace Common\Core\Controllers;

use Common\Core\AppUrl;
use Common\Core\BaseController;
use Common\Core\Bootstrap\BootstrapData;
use Common\Settings\Settings;
use App\Models\Permission;
use App\Models\Permissionable;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends BaseController
{
    public function __construct(
        protected BootstrapData $bootstrapData,
        protected Settings $settings,
    ) {
    }

    public function show()
    {
        // only get meta tags if we're actually
        // rendering homepage and not a fallback route
        $data = [];
        if (
            request()->path() === '/' &&
            ($response = $this->handleSeo($data))
        ) {
            return $response;
        }

        $this->bootstrapData->init();

        $view = view('app')
            ->with('bootstrapData', $this->bootstrapData)
            ->with('htmlBaseUri', app(AppUrl::class)->htmlBaseUri)
            ->with('settings', $this->settings)
            ->with(
                'customHtmlPath',
                public_path('storage/custom-code/custom-html.html'),
            )
            ->with(
                'customCssPath',
                public_path('storage/custom-code/custom-styles.css'),
            );

        if (isset($data['seo'])) {
            $view->with('meta', $data['seo']);
        }

        return response($view);
    }

    /**
     * Render basic client side page with optional SSR when page has no data or seo tags.
     * (contact page, login, register, etc.)
     */
    public function render() {
        return $this->renderClientOrApi([]);
    }


    public function permission(Request $request): JsonResponse
    {
        // // Fetch all permissions and permissionables from the database
        // $permissions = Permission::all();
        // $permissionables = Permissionable::all();
        // // dd("permissions",$permissions,$permissionables);
        // // Return a JSON response with the data
        // return response()->json([
        //     'permissions' => $permissions,
        //     'permissionables' => $permissionables,
        // ]);

        $permissions = Permission::select('permissions.id', 'permissions.name', 'permissions.display_name')
        ->join('permissionables', 'permissions.id', '=', 'permissionables.permission_id')
        ->get();
    
        // Return a JSON response with the data
        return response()->json([
            'permissions' => $permissions,
        ]);
    }
}
