import { Navbar } from '@common/ui/navigation/navbar/navbar';
import { useUser } from '../use-user';
import { ProgressCircle } from '@common/ui/progress/progress-circle';
import { BasicInfoPanel } from './basic-info-panel/basic-info-panel';
import { AccessTokenPanel } from './access-token-panel/access-token-panel';
import { DangerZonePanel } from './danger-zone-panel/danger-zone-panel';
import { Trans } from '@common/i18n/trans';
import { StaticPageTitle } from '@common/seo/static-page-title';
import { useContext } from 'react';
import { SiteConfigContext } from '@common/core/settings/site-config-context';
import Accountsidebar from './account-sidebar';

export function AccountSettingsPage() {
  const { auth } = useContext(SiteConfigContext);
  const { data, isLoading } = useUser('me', {
    with: ['roles', 'social_profiles', 'tokens'],
  });

  return (
    <div className="min-h-screen bg-alt flex">
      {/* Sidebar */}
      <div className="w-1/7 h-screen bg-gray-100 sticky top-0">
        <Accountsidebar />
      </div>

      {/* Main content container (Navbar + Page content) */}
      <div className="flex-1 flex flex-col">
        {/* Navbar */}
        <div className="w-full">
          <Navbar menuPosition="account-settings-page" />
        </div>

        {/* Page Title */}
        <div className="container mx-auto px-8 py-4">
          <StaticPageTitle>
            <Trans message="Account Settings" />
          </StaticPageTitle>

          <h1 className="text-3xl">
            <Trans message="Account settings" />
          </h1>
          <div className="mb-4 text-base text-muted">
            <Trans message="View and update your account details, profile and more." />
          </div>

          {/* Page content */}
          {isLoading || !data ? (
            <ProgressCircle
              className="my-20"
              aria-label="Loading user.."
              isIndeterminate
            />
          ) : (
            <div className="space-y-8">
              {/* Dynamically loaded panels */}
              {auth.accountSettingsPanels?.map((panel) => (
                <panel.component key={panel.id} user={data.user} />
              ))}

              {/* Specific Panels */}
              <BasicInfoPanel user={data.user} />
              <AccessTokenPanel user={data.user} />
              <DangerZonePanel />
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
