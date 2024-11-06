import { jsxs, jsx } from "react/jsx-runtime";
import SwaggerUI from "swagger-ui-react";
import { useMemo } from "react";
import { u as useSettings, bz as Swaggersidebar, aF as Navbar, bA as Footer } from "../server-entry.mjs";
import "react-dom/server";
import "process";
import "http";
import "@tanstack/react-query";
import "axios";
import "react-router-dom/server.mjs";
import "framer-motion";
import "clsx";
import "@internationalized/date";
import "nano-memoize";
import "zustand";
import "zustand/middleware/immer";
import "nanoid";
import "react-router-dom";
import "deepmerge";
import "@internationalized/number";
import "@react-stately/utils";
import "@react-aria/utils";
import "@floating-ui/react-dom";
import "react-merge-refs";
import "@react-aria/focus";
import "react-dom";
import "@react-aria/ssr";
import "react-hook-form";
import "dot-object";
import "immer";
import "axios-retry";
import "tus-js-client";
import "react-use-cookie";
import "mime-match";
import "react-use-clipboard";
const swaggerUi = "";
const swagger = "";
function SwaggerApiDocsPage() {
  const settings = useSettings();
  const plugins = useMemo(() => {
    return getPluginsConfig(settings);
  }, [settings]);
  return /* @__PURE__ */ jsxs("div", { className: "min-h-screen bg-alt flex", children: [
    /* @__PURE__ */ jsx("div", { className: "h-screen bg-gray-100 sticky top-0", children: /* @__PURE__ */ jsx(Swaggersidebar, {}) }),
    /* @__PURE__ */ jsxs("div", { className: "flex-1 flex flex-col", children: [
      /* @__PURE__ */ jsx(Navbar, {}),
      /* @__PURE__ */ jsx("div", { className: "flex-1 p-4 overflow-y-auto", children: /* @__PURE__ */ jsx(
        SwaggerUI,
        {
          url: `${settings.base_url}/swagger.yaml`,
          plugins,
          onComplete: (system) => {
            var _a;
            const hash = location.hash.slice(1);
            if (hash) {
              const el = document.querySelector(
                `#operations-${hash.replace(/\//g, "-")}`
              );
              if (el) {
                el.scrollIntoView();
                (_a = el.querySelector("button")) == null ? void 0 : _a.click();
              }
            }
          }
        }
      ) }),
      /* @__PURE__ */ jsx(Footer, { className: "px-20" })
    ] })
  ] });
}
function getPluginsConfig(settings) {
  return [
    {
      statePlugins: {
        spec: {
          wrapActions: {
            updateSpec: (oriAction) => {
              return (spec) => {
                spec = spec.replaceAll("SITE_NAME", settings.branding.site_name);
                spec = spec.replaceAll("SITE_URL", settings.base_url);
                return oriAction(spec);
              };
            },
            updateJsonSpec: (oriAction) => {
              return (spec) => {
                spec.servers = [{ url: `${settings.base_url}/api/v1` }];
                return oriAction(spec);
              };
            }
          }
        }
      }
    }
  ];
}
export {
  SwaggerApiDocsPage as default
};
//# sourceMappingURL=swagger-api-docs-page-fa894c84.mjs.map
