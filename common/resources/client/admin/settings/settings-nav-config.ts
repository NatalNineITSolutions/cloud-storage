import {AppSettingsNavConfig} from '@app/admin/settings/app-settings-nav-config';
import {message} from '../../i18n/message';
import {MessageDescriptor} from '../../i18n/message-descriptor';
import {To} from 'react-router-dom';
import {getBootstrapData} from '@common/core/bootstrap-data/use-backend-bootstrap-data';

export interface SettingsNavItem {
  label: MessageDescriptor;
  to: To;
}

const filteredSettingsNavConfig: (SettingsNavItem | false)[] = [
  {label: message('General'), to: 'general'},
  getBootstrapData().settings.billing.integrated && {
    label: message('Subscriptions'),
    to: 'subscriptions',
  },
  {label: message('Localization'), to: 'localization'},
  {
    label: message('Authentication'),
    to: 'authentication',
  },
  {label: message('Uploading'), to: 'uploading'},
  {label: message('Outgoing email'), to: 'outgoing-email'},
  {label: message('Cache'), to: 'cache'},
].filter(Boolean);

export const SettingsNavConfig = filteredSettingsNavConfig as SettingsNavItem[];
