import SwaggerUI from 'swagger-ui-react';
import 'swagger-ui-react/swagger-ui.css';
import { Settings } from '../core/settings/settings';
import { useMemo } from 'react';
import { Navbar } from '../ui/navigation/navbar/navbar';
import { Footer } from '../ui/footer/footer';
import { useSettings } from '../core/settings/use-settings';
import './swagger.css';
import Swaggersidebar from './swaggersidebar';

export default function SwaggerApiDocsPage() {
  const settings = useSettings();

  const plugins = useMemo(() => {
    return getPluginsConfig(settings);
  }, [settings]);

  return (
    <div className="min-h-screen bg-alt flex">
      <div className="h-screen bg-gray-100 sticky top-0">
        <Swaggersidebar />
      </div>

      {/* Main Content */}
      <div className="flex-1 flex flex-col main-api-page">
        <Navbar />

        <div className="flex-1 p-4 overflow-y-auto">
          <SwaggerUI
            url={`${settings.base_url}/swagger.yaml`}
            plugins={plugins}
            onComplete={(system) => {
              const hash = location.hash.slice(1);
              if (hash) {
                const el = document.querySelector(
                  `#operations-${hash.replace(/\//g, '-')}`,
                );
                if (el) {
                  el.scrollIntoView();
                  el.querySelector('button')?.click();
                }
              }
            }}
          />
        </div>

        <Footer className="px-20" />
      </div>
    </div>
  );
}

function getPluginsConfig(settings: Settings) {
  return [
    {
      statePlugins: {
        spec: {
          wrapActions: {
            updateSpec: (oriAction: any) => {
              return (spec: any) => {
                // Replace site name
                spec = spec.replaceAll('SITE_NAME', settings.branding.site_name);
                // Replace site URL
                spec = spec.replaceAll('SITE_URL', settings.base_url);
                return oriAction(spec);
              };
            },
            updateJsonSpec: (oriAction: any) => {
              return (spec: any) => {
                spec.servers = [{ url: `${settings.base_url}/api/v1` }];
                return oriAction(spec);
              };
            },
          },
        },
      },
    },
  ];
}
