import './App.css';
import React from 'react';
import {createRoot, hydrateRoot} from 'react-dom/client';
import {CommonProvider} from '../../common/resources/client/core/common-provider';
import {LandingPageContent} from './landing/landing-page-content';
import * as Sentry from '@sentry/react';
import {rootEl} from '../../common/resources/client/core/root-el';
import {getBootstrapData} from '../../common/resources/client/core/bootstrap-data/use-backend-bootstrap-data';
import {ignoredSentryErrors} from '../../common/resources/client/errors/ignored-sentry-errors';
import {BrowserRouter} from 'react-router-dom';
import {AppRoutes} from '../../resources/client/app-routes';
import {Product} from '../../common/resources/client/billing/product';
import {FetchShareableLinkPageResponse} from '@app/drive/shareable-link/queries/use-shareable-link-page';
import {FetchCustomPageResponse} from '@common/custom-page/use-custom-page';

declare module '@common/core/settings/settings' {
  interface Settings {
    homepage: {
      appearance: LandingPageContent;
      type: 'loginPage' | 'registerPage' | string;
      value?: any;
    };
    drive: {
      details_default_visibility: boolean;
      default_view: 'list' | 'grid';
      send_share_notification: boolean;
    };
    share: {
      suggest_emails: boolean;
    };
    ads?: {
      drive?: string;
      'file-preview'?: string;
      'landing-top'?: string;
      disable?: boolean;
    };
  }
}

declare module '@common/core/bootstrap-data/bootstrap-data' {
  interface BootstrapData {
    loaders?: {
      landingPage?: {
        products: Product[];
      };
      customPage?: FetchCustomPageResponse;
      shareableLinkPage?: FetchShareableLinkPageResponse;
    };
  }
}

const data = getBootstrapData();
const sentryDsn = data.settings.logging.sentry_public;
if (sentryDsn && import.meta.env.PROD) {
  Sentry.init({
    dsn: sentryDsn,
    integrations: [new Sentry.BrowserTracing()],
    tracesSampleRate: 0.2,
    ignoreErrors: ignoredSentryErrors,
    release: data.sentry_release,
  });
}

const app = (
  <BrowserRouter basename={data.settings.html_base_uri}>
    <CommonProvider>
      <AppRoutes />
    </CommonProvider>
  </BrowserRouter>
);

if (data.rendered_ssr) {
  hydrateRoot(rootEl, app);
} else {
  createRoot(rootEl).render(app);
}
