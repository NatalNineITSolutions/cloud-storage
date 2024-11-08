import Accountsidebar from '@common/auth/ui/account-settings/account-sidebar';
import { Navbar } from '@common/ui/navigation/navbar/navbar';
import DashboardStats from '@common/dashboard/dashboard-stats';
import RecentFiles from '@common/dashboard/recentfiles';

export function MainDashboardLayout() {
  return (
    <div className="min-h-screen flex bg-gray-50">
      <div className="bg-white shadow-lg flex flex-col">
        <Accountsidebar />
      </div>

      <div className="flex-1 flex flex-col">
        <Navbar/>

        <div className="p-6 overflow-y-auto flex-1">
          <div>
            <DashboardStats/>
            <RecentFiles/>
          </div>
        </div>
      </div>
    </div>
  );
} 