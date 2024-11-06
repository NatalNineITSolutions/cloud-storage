import { jsx, jsxs, Fragment as Fragment$1 } from "react/jsx-runtime";
import { Fragment, isValidElement, cloneElement, useState } from "react";
import { useQuery, keepPreviousData } from "@tanstack/react-query";
import { c as apiClient, $ as createSvgIconFromTree, q as opacityAnimation, r as Skeleton, d as useIsMobileMediaQuery, n as DialogTrigger, B as Button, bs as DateFormatPresets, O as useAuth, s as StaticPageTitle, T as Trans } from "../server-entry.mjs";
import { T as TrendingUpIcon, a as TrendingFlatIcon, b as TrendingDownIcon } from "./TrendingUp-c5dd3c50.mjs";
import { a0 as FormattedNumber, a1 as DateRangeIcon, a2 as FormattedDateTimeRange, a3 as useDateRangePickerState, a4 as DateRangeComparePresets, a5 as DateRangeDialog, a6 as DateRangePresets } from "./ArrowBack-ac331367.mjs";
import { F as FormattedBytes } from "./admin-routes-e9b7e0a0.mjs";
import { AnimatePresence, m } from "framer-motion";
import "react-dom/server";
import "process";
import "http";
import "axios";
import "react-router-dom/server.mjs";
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
import "@react-aria/interactions";
import "./Edit-19a60eb6.mjs";
import "zustand/middleware";
import "deep-object-diff";
import "@react-stately/color";
import "react-colorful";
import "@tanstack/react-virtual";
import "./use-resume-subscription-8a9e2163.mjs";
import "slugify";
const Endpoint = "admin/reports";
function useAdminReport(payload = {}) {
  return useQuery({
    queryKey: [Endpoint, payload],
    queryFn: () => fetchAnalyticsReport(payload),
    placeholderData: keepPreviousData
  });
}
function fetchAnalyticsReport({
  types,
  dateRange
}) {
  const params = {};
  if (types) {
    params.types = types.join(",");
  }
  if (dateRange) {
    params.startDate = dateRange.start.toAbsoluteString();
    params.endDate = dateRange.end.toAbsoluteString();
    params.timezone = dateRange.start.timeZone;
  }
  return apiClient.get(Endpoint, { params }).then((response) => response.data);
}
const AdminReportPageColGap = "gap-12 md:gap-24 mb-12 md:mb-24";
function VisitorsReportCharts({
  report,
  isLoading
}) {
  report == null ? void 0 : report.pageViews.total;
  return /* @__PURE__ */ jsx(Fragment, {});
}
function AdminHeaderReport({ report, isLoading }) {
  return /* @__PURE__ */ jsx(
    "div",
    {
      className: `flex h-[97px] flex-shrink-0 items-center overflow-x-auto ${AdminReportPageColGap}`,
      children: report == null ? void 0 : report.map((datum) => /* @__PURE__ */ jsx(ReportItem, { datum, isLoading }, datum.name))
    }
  );
}
function ReportItem({ datum, isLoading = false }) {
  let icon;
  if (isValidElement(datum.icon)) {
    icon = cloneElement(datum.icon, { size: "lg" });
  } else {
    const IconEl = createSvgIconFromTree(datum.icon);
    icon = /* @__PURE__ */ jsx(IconEl, { size: "lg" });
  }
  return /* @__PURE__ */ jsxs(
    "div",
    {
      className: "rounded-panel flex h-full flex-auto items-center gap-18 whitespace-nowrap border p-20",
      children: [
        /* @__PURE__ */ jsx("div", { className: "flex-shrink-0 rounded-lg bg-primary-light/20 p-10 text-primary", children: icon }),
        /* @__PURE__ */ jsxs("div", { className: "flex-auto", children: [
          /* @__PURE__ */ jsx("div", { className: "flex items-center justify-between gap-20", children: /* @__PURE__ */ jsx("div", { className: "text-lg font-bold text-main", children: /* @__PURE__ */ jsx(AnimatePresence, { initial: false, mode: "wait", children: isLoading ? /* @__PURE__ */ jsx(m.div, { ...opacityAnimation, children: /* @__PURE__ */ jsx(Skeleton, { className: "min-w-24" }) }, "skeleton") : /* @__PURE__ */ jsx(m.div, { ...opacityAnimation, children: /* @__PURE__ */ jsx(FormattedValue, { datum }) }, "value") }) }) }),
          /* @__PURE__ */ jsxs("div", { className: "flex items-center justify-between gap-20", children: [
            /* @__PURE__ */ jsx("h2", { className: "text-sm text-muted", children: datum.name }),
            (datum.percentageChange != null || datum.previousValue != null) && /* @__PURE__ */ jsx("div", { className: "flex items-center gap-10", children: /* @__PURE__ */ jsx(TrendingIndicator, { datum }) })
          ] })
        ] })
      ]
    },
    datum.name
  );
}
function FormattedValue({ datum }) {
  switch (datum.type) {
    case "fileSize":
      return /* @__PURE__ */ jsx(FormattedBytes, { bytes: datum.currentValue });
    case "percentage":
      return /* @__PURE__ */ jsx(
        FormattedNumber,
        {
          value: datum.currentValue,
          style: "percent",
          maximumFractionDigits: 1
        }
      );
    default:
      return /* @__PURE__ */ jsx(FormattedNumber, { value: datum.currentValue });
  }
}
function TrendingIndicator({ datum }) {
  const percentage = calculatePercentage(datum);
  let icon;
  if (percentage > 0) {
    icon = /* @__PURE__ */ jsx(TrendingUpIcon, { size: "md", className: "text-positive" });
  } else if (percentage === 0) {
    icon = /* @__PURE__ */ jsx(TrendingFlatIcon, { className: "text-muted" });
  } else {
    icon = /* @__PURE__ */ jsx(TrendingDownIcon, { className: "text-danger" });
  }
  return /* @__PURE__ */ jsxs(Fragment, { children: [
    icon,
    /* @__PURE__ */ jsxs("div", { className: "text-sm font-semibold text-muted", children: [
      percentage,
      "%"
    ] })
  ] });
}
function calculatePercentage({
  percentageChange,
  previousValue,
  currentValue
}) {
  if (percentageChange != null || previousValue == null || currentValue == null) {
    return percentageChange ?? 0;
  }
  if (previousValue === 0) {
    return 100;
  }
  return Math.round((currentValue - previousValue) / previousValue * 100);
}
const monthDayFormat = {
  month: "short",
  day: "2-digit"
};
function ReportDateSelector({
  value,
  onChange,
  disabled,
  compactOnMobile = true,
  enableCompare = false,
  granularity = "minute"
}) {
  const isMobile = useIsMobileMediaQuery();
  return /* @__PURE__ */ jsxs(
    DialogTrigger,
    {
      type: "popover",
      onClose: (value2) => {
        if (value2) {
          onChange(value2);
        }
      },
      children: [
        /* @__PURE__ */ jsx(
          Button,
          {
            variant: "outline",
            color: "chip",
            endIcon: /* @__PURE__ */ jsx(DateRangeIcon, {}),
            disabled,
            children: /* @__PURE__ */ jsx(
              FormattedDateTimeRange,
              {
                start: value.start,
                end: value.end,
                options: isMobile && compactOnMobile ? monthDayFormat : DateFormatPresets.short
              }
            )
          }
        ),
        /* @__PURE__ */ jsx(
          DateSelectorDialog,
          {
            value,
            enableCompare,
            granularity
          }
        )
      ]
    }
  );
}
function DateSelectorDialog({
  value,
  enableCompare,
  granularity
}) {
  const isMobile = useIsMobileMediaQuery();
  const state = useDateRangePickerState({
    granularity,
    defaultValue: {
      start: value.start,
      end: value.end,
      preset: value.preset
    },
    closeDialogOnSelection: false
  });
  const compareHasInitialValue = !!value.compareStart && !!value.compareEnd;
  const compareState = useDateRangePickerState({
    granularity,
    defaultValue: compareHasInitialValue ? {
      start: value.compareStart,
      end: value.compareEnd,
      preset: value.comparePreset
    } : DateRangeComparePresets[0].getRangeValue(state.selectedValue)
  });
  return /* @__PURE__ */ jsx(
    DateRangeDialog,
    {
      state,
      compareState: enableCompare ? compareState : void 0,
      compareVisibleDefault: compareHasInitialValue,
      showInlineDatePickerField: !isMobile
    }
  );
}
function AdminReportPage() {
  const [dateRange, setDateRange] = useState(() => {
    return DateRangePresets[2].getRangeValue();
  });
  const { isLoading, data } = useAdminReport({ dateRange });
  console.log("analadata", data);
  const title = /* @__PURE__ */ jsx(Trans, { message: "Visitors report" });
  const { user } = useAuth();
  const isSuperAdmin = (user == null ? void 0 : user.user_type) === "super_admin";
  const userName = (user == null ? void 0 : user.first_name) || "User";
  return /* @__PURE__ */ jsxs("div", { className: "min-h-full gap-12 overflow-x-hidden p-12 md:gap-24 md:p-24", children: [
    /* @__PURE__ */ jsxs("div", { className: "mb-24 items-center justify-between gap-24 md:flex", children: [
      /* @__PURE__ */ jsx(StaticPageTitle, { children: title }),
      isSuperAdmin && /* @__PURE__ */ jsx("h1", { className: "mb-24 text-3xl font-light md:mb-0", children: title }),
      !isSuperAdmin && /* @__PURE__ */ jsx(Fragment$1, { children: /* @__PURE__ */ jsxs("h1", { className: "mb-24 text-3xl font-light md:mb-0", children: [
        "Welcome back ",
        /* @__PURE__ */ jsx("b", { children: userName })
      ] }) }),
      /* @__PURE__ */ jsx(ReportDateSelector, { value: dateRange, onChange: setDateRange })
    ] }),
    /* @__PURE__ */ jsx(AdminHeaderReport, { report: data == null ? void 0 : data.headerReport }),
    /* @__PURE__ */ jsx(
      VisitorsReportCharts,
      {
        report: data == null ? void 0 : data.visitorsReport,
        isLoading
      }
    )
  ] });
}
export {
  AdminReportPage as default
};
//# sourceMappingURL=admin-report-page-3c0ee3b7.mjs.map
