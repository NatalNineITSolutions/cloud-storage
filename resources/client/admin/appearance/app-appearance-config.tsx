import {
  IAppearanceConfig,
  MenuSectionConfig,
  SeoSettingsSectionConfig,
} from '@common/admin/appearance/types/appearance-editor-config';
import {message} from '@common/i18n/message';
import {LandingPageSectionGeneral} from '@app/admin/appearance/sections/landing-page-section/landing-page-section-general';
import {LandingPageSectionActionButtons} from '@app/admin/appearance/sections/landing-page-section/landing-page-section-action-buttons';
import {LandingPageSectionPrimaryFeatures} from '@app/admin/appearance/sections/landing-page-section/landing-page-section-primary-features';
import {LandingPageSecondaryFeatures} from '@app/admin/appearance/sections/landing-page-section/landing-page-section-secondary-features';
import {AppearanceEditorBreadcrumbItem} from '@common/admin/appearance/types/appearance-editor-section';

export const AppAppearanceConfig: IAppearanceConfig = {
  preview: {
    defaultRoute: 'drive',
    navigationRoutes: ['s', 'drive'],
  },
  sections: {
    
    // missing label will get added by deepMerge from default config
    // @ts-ignore
    menus: {
      config: {
        positions: [
          'drive-navbar',
          'drive-sidebar',
          'homepage-navbar',
          'shareable-link-page',
          'footer',
          'footer-secondary',
        ],
        availableRoutes: [
          '/drive',
          '/drive/shares',
          '/drive/recent',
          '/drive/starred',
          '/drive/trash',
        ],
      } as MenuSectionConfig,
    },
    // @ts-ignore
    'seo-settings': {
      config: {
        pages: [
          {
            key: 'landing-page',
            label: message('Landing page'),
          },
          {
            key: 'shareable-link-page',
            label: message('Shareable link page'),
          },
        ],
      } as SeoSettingsSectionConfig,
    },
  },
};
