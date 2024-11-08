import {List, ListItem} from '@common/ui/list/list';
import {PersonIcon} from '@common/icons/material/Person';
import {Trans} from '@common/i18n/trans';
import {DangerousIcon} from '@common/icons/material/Dangerous';
import {ReactNode, useContext} from 'react';
import {useAuth} from '@common/auth/use-auth';
import {useSettings} from '@common/core/settings/use-settings';
import {SiteConfigContext} from '@common/core/settings/site-config-context';

export enum AccountSettingsId {
  AccountDetails = 'account-details',
  SocialLogin = 'social-login',
  Password = 'password',
  TwoFactor = 'two-factor',
  LocationAndLanguage = 'location-and-language',
  Developers = 'developers',
  DeleteAccount = 'delete-account',
  Sessions = 'sessions',
}

export function AccountSettingsSidenav() {
  const p = AccountSettingsId;

  const {hasPermission} = useAuth();
  const {api, social} = useSettings();
  const {auth} = useContext(SiteConfigContext);

  const socialEnabled =
    social?.envato || social?.google || social?.facebook || social?.twitter;

  return (
    <aside className="sticky top-10 mt-[9.3rem] hidden flex-shrink-0 lg:block"
    >
      <List padding="p-0">
        {auth.accountSettingsPanels?.map(panel => (
          <Item
            key={panel.id}
            icon={<panel.icon viewBox="0 0 50 50" />}
            panel={panel.id as AccountSettingsId}
          >
            <Trans {...panel.label} />
          </Item>
        ))}
        <div className='bg-white dark:bg-gray-300 account-settings-tab py-10 px-8 ml-10' style={{ boxShadow: '0px 0px 20px rgba(0, 0, 0, 0.2)' }}>
          <Item icon={<PersonIcon />} panel={p.AccountDetails}>
            <Trans message="Account details" />
          </Item>
          {/* <Item icon={<LanguageIcon />} panel={p.LocationAndLanguage}>
            <Trans message="Location and language" />
          </Item> */}
          {/* {api?.integrated && hasPermission('api.access') ? (
            <Item icon={<ApiIcon />} panel={p.Developers}>
              <Trans message="Developers" />
            </Item>
          ) : null} */}
          <Item icon={<DangerousIcon />} panel={p.DeleteAccount}>
            <Trans message="Delete account" />
          </Item>
        </div>
      </List>
    </aside>
  );
}

interface ItemProps {
  children: ReactNode;
  icon: ReactNode;
  isLast?: boolean;
  panel: AccountSettingsId;
}
function Item({children, icon, isLast, panel}: ItemProps) {
  return (
    <ListItem
      startIcon={icon}
      className={isLast ? undefined : 'mb-10'}
      onSelected={() => {
        const panelEl = document.querySelector(`#${panel}`);
        if (panelEl) {
          panelEl.scrollIntoView({
            behavior: 'smooth',
            block: 'start',
          });
        }
      }}
    >
      {children}
    </ListItem>
  );
}
