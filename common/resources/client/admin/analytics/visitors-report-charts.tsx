import React, {Fragment} from 'react';
import {LineChart} from '@common/charts/line-chart';
import {Trans} from '@common/i18n/trans';
import {PolarAreaChart} from '@common/charts/polar-area-chart';
import {BarChart} from '@common/charts/bar-chart';
import {VisitorsReportData} from '@common/admin/analytics/visitors-report-data';
import {FormattedNumber} from '@common/i18n/formatted-number';
import {GeoChart} from '@common/admin/analytics/geo-chart/geo-chart';

export const AdminReportPageColGap = 'gap-12 md:gap-24 mb-12 md:mb-24';
const rowClassName = `flex flex-col md:flex-row md:items-center overflow-x-auto ${AdminReportPageColGap}`;

interface AdminReportChartsProps {
  report?: VisitorsReportData;
  isLoading: boolean;
}
export function VisitorsReportCharts({
  report,
  isLoading,
}: AdminReportChartsProps) {
  const totalViews = report?.pageViews.total;
  return (
    <Fragment>
    </Fragment>
  );
}
