import { Navbar } from '@common/ui/navigation/navbar/navbar';
import { useUser } from '../use-user';
import { ProgressCircle } from '@common/ui/progress/progress-circle';
import { BasicInfoPanel } from './basic-info-panel/basic-info-panel';
import { AccessTokenPanel } from './access-token-panel/access-token-panel';
import { DangerZonePanel } from './danger-zone-panel/danger-zone-panel';
import { Trans } from '@common/i18n/trans';
import { StaticPageTitle } from '@common/seo/static-page-title';
import { useContext, useState } from 'react';
import { SiteConfigContext } from '@common/core/settings/site-config-context';
import Accountsidebar from './account-sidebar';
import { AccountSettingsSidenav } from './account-settings-sidenav';

export function AccountSettingsPage() {
  const { auth } = useContext(SiteConfigContext);
  const { data, isLoading } = useUser('me', {
    with: ['roles', 'social_profiles', 'tokens'],
  });
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);

  return (
    <div className="min-h-screen flex flex-col lg:flex-row bg-alt">
      {/* Sidebar */}
      <div className="lg:h-auto w-full lg:w-1/4 bg-gray-100 lg:sticky top-0">
        <Accountsidebar />
      </div>

      {/* Main Content */}
      <div className="flex-1 flex flex-col">
        <Navbar className="w-full" />
        
        <div className="flex flex-col lg:flex-row flex-1 overflow-y-auto">
          {/* Account Settings Sidebar */}
          <div className="lg:w-1/4 px-4 lg:px-8 mt-8 lg:mt-0">
            <AccountSettingsSidenav />
          </div>

          {/* Content Section */}
          <div className="flex-1 px-4 lg:px-12 py-8 mt-12 lg:mt-0">
            <StaticPageTitle>
              <Trans message="Account Settings" />
            </StaticPageTitle>

            <h1 className="text-3xl">
              <Trans message="Account settings" />
            </h1>
            <p className="mb-4 text-base text-muted">
              <Trans message="View and update your account details, profile and more." />
            </p>

            {isLoading || !data ? (
              <ProgressCircle
                className="my-20"
                aria-label="Loading user.."
                isIndeterminate
              />
            ) : (
              <div className="space-y-8 mt-12">
                {auth.accountSettingsPanels?.map((panel) => (
                  <panel.component key={panel.id} user={data.user} />
                ))}
                <BasicInfoPanel user={data.user} />
                <DangerZonePanel />
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
