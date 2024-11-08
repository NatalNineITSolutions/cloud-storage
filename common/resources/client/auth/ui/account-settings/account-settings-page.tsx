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
import { AccountSettingsSidenav } from './account-settings-sidenav';

export function AccountSettingsPage() {
  const { auth } = useContext(SiteConfigContext);
  const { data, isLoading } = useUser('me', {
    with: ['roles', 'social_profiles', 'tokens'],
  });

  return (
    <div className="min-h-screen bg-alt flex">
      <div className="h-screen bg-gray-100 sticky top-0">
        <Accountsidebar />
      </div>

      <div className="flex-1 flex-col">
        <div className="w-full">
          <Navbar/>
        </div>
        
        <div className='flex main-account'>
          <AccountSettingsSidenav/>

            <div className="container px-8 pl-[2rem] pr-40 mt-60">
              <div>
                <StaticPageTitle>
                  <Trans message="Account Settings" />
                </StaticPageTitle>

                  <h1 className="text-3xl mb-2 text-[#051F61] font-semibold">
                    <Trans message="Account settings" />
                  </h1>
                  <div className="mb-4 text-base text-muted text-[#757897] font-medium">
                    <Trans message="View and update your account details, profile and more." />
                  </div>
                </div>

              {isLoading || !data ? (
                <ProgressCircle
                  className="my-20"
                  aria-label="Loading user.."
                  isIndeterminate
                />
              ) : (
                <div className="space-y-8 mt-28">
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
