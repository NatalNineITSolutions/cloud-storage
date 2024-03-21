import { jsx } from "react/jsx-runtime";
import { renderToPipeableStream } from "react-dom/server";
import process from "process";
import { createServer } from "http";
import { setBootstrapData } from "@common/core/bootstrap-data/use-backend-bootstrap-data";
import { StaticRouter } from "react-router-dom/server.mjs";
import { CommonProvider } from "@common/core/common-provider";
import { AppRoutes } from "@app/app-routes";
import { QueryClient } from "@tanstack/react-query";
import axios from "axios";
function isAbsoluteUrl(url) {
  if (!url)
    return false;
  return /^[a-zA-Z][a-zA-Z\d+\-.]*?:/.test(url);
}
function errorStatusIs(err, status) {
  var _a;
  return axios.isAxiosError(err) && ((_a = err.response) == null ? void 0 : _a.status) == status;
}
const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: 3e4,
      retry: (failureCount, err) => {
        return !errorStatusIs(err, 401) && !errorStatusIs(err, 403) && !errorStatusIs(err, 404) && failureCount < 2;
      }
    }
  }
});
const apiClient = axios.create();
apiClient.defaults.withCredentials = true;
apiClient.defaults.responseType = "json";
apiClient.defaults.headers = {
  common: {
    Accept: "application/json"
  }
};
apiClient.interceptors.request.use((config) => {
  var _a, _b, _c, _d, _e, _f;
  if (!((_a = config.url) == null ? void 0 : _a.startsWith("auth")) && !((_b = config.url) == null ? void 0 : _b.startsWith("secure")) && !isAbsoluteUrl(config == null ? void 0 : config.url)) {
    config.url = `api/v1/${config.url}`;
  }
  const method = (_c = config.method) == null ? void 0 : _c.toUpperCase();
  if (method === "GET" && Array.isArray((_d = config.params) == null ? void 0 : _d.with)) {
    config.params.with = config.params.with.join(",");
  }
  if (method === "GET" && Array.isArray((_e = config.params) == null ? void 0 : _e.load)) {
    config.params.load = config.params.load.join(",");
  }
  if (method === "GET" && Array.isArray((_f = config.params) == null ? void 0 : _f.loadCount)) {
    config.params.loadCount = config.params.loadCount.join(",");
  }
  if (method === "PUT" || method === "DELETE" || method === "PATCH") {
    config.headers = {
      ...config.headers,
      "X-HTTP-Method-Override": method
    };
    config.method = "POST";
    config.params = {
      ...config.params,
      _method: method
    };
  }
  {
    config.headers = {
      ...config.headers,
      referer: "http://localhost"
    };
  }
  return config;
});
let port = 13714;
process.argv.forEach((value) => {
  if (value.startsWith("port=")) {
    port = parseInt(value.substring("port=".length));
  }
});
const readableToString = (readable) => {
  return new Promise((resolve, reject) => {
    let data = "";
    readable.on("data", (chunk) => data += chunk);
    readable.on("end", () => resolve(data));
    readable.on("error", (err) => reject(err));
  });
};
const getPayload = async (request) => {
  const payload = await readableToString(request);
  return payload ? JSON.parse(payload) : {};
};
createServer(async (request, response) => {
  if (request.url === "/render") {
    return render(request, response);
  } else {
    return handleOtherRoutes(request, response);
  }
}).listen(port, () => console.log("SSR server started."));
async function render(request, response) {
  const data = await getPayload(request);
  setBootstrapData(data.bootstrapData);
  const { pipe, abort } = renderToPipeableStream(
    /* @__PURE__ */ jsx(StaticRouter, { location: data.url, children: /* @__PURE__ */ jsx(CommonProvider, { children: /* @__PURE__ */ jsx(AppRoutes, {}) }) }),
    {
      onAllReady() {
        response.setHeader("content-type", "text/html");
        pipe(response);
        queryClient.clear();
        response.end();
      }
    }
  );
  setTimeout(() => {
    abort();
  }, 2e3);
}
async function handleOtherRoutes(request, response) {
  if (request.url === "/screenshot") {
    takeScreenshot(request, response);
  } else if (request.url === "/health") {
    writeJsonResponse(response, { status: "OK", timestamp: Date.now() });
  } else if (request.url === "/shutdown") {
    response.end();
    process.exit();
  } else {
    writeJsonResponse(response, { status: "NOT_FOUND", timestamp: Date.now() });
  }
}
function writeJsonResponse(response, data) {
  try {
    response.writeHead(200, {
      "Content-Type": "application/json"
    });
    response.write(JSON.stringify(data));
  } catch (e) {
    console.error(e);
  }
  response.end();
}
async function takeScreenshot(request, response) {
  try {
    const payload = await getPayload(request);
    const puppeteer = await import("puppeteer");
    const browser = await puppeteer.launch({
      executablePath: "/snap/bin/chromium",
      headless: "new",
      defaultViewport: {
        width: 800,
        height: 600
      }
    });
    const page = await browser.newPage();
    await page.goto(payload.url);
    const image = await page.screenshot({
      type: "jpeg",
      optimizeForSpeed: true,
      quality: 40,
      encoding: "binary"
    });
    await browser.close();
    response.writeHead(200, {
      "Content-Type": "image/jpeg"
    });
    response.write(image);
    response.end();
  } catch (e) {
    console.error(e);
  }
  setTimeout(() => {
    response.end();
  }, 3e3);
}
console.log(`Starting SSR server on port ${port}...`);
//# sourceMappingURL=server-entry.mjs.map
