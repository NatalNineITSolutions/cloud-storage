import { PageBreadcrumbs } from '../page-breadcrumbs';
import { DashboardContentHeader } from '@common/ui/layout/dashboard-content-header';
import React, { useContext } from 'react';
import { driveState, useDriveStore } from '../drive-store';
import { Trans } from '@common/i18n/trans';
import { Tooltip } from '@common/ui/tooltip/tooltip';
import { IconButton } from '@common/ui/buttons/icon-button';
import { ViewListIcon } from '@common/icons/material/ViewList';
import { ViewModuleIcon } from '@common/icons/material/ViewModule';
import { DashboardLayoutContext } from '@common/ui/layout/dashboard-layout-context';
import { InfoIcon } from '@common/icons/material/Info';
import { DriveSortButton } from './sorting/drive-sort-button';
import clsx from 'clsx';

export function DriveContentHeader() {
  const { isMobileMode } = useContext(DashboardLayoutContext);
  const activePage = useDriveStore((s) => s.activePage);

  return (
    <DashboardContentHeader className="px-8 md:px-26 py-4 mt-20 flex items-center gap-20 h-60 drive-text">
      {isMobileMode ? (
        <DriveSortButton isDisabled={activePage?.disableSort} />
      ) : (
        <PageBreadcrumbs />
      )}
      <div className="ml-auto flex items-center gap-[10px]"> 
        <ToggleViewModeButton />
        <ToggleDetailsButton />
      </div>
    </DashboardContentHeader>
  );
}

function ToggleViewModeButton() {
  const viewMode = useDriveStore((s) => s.viewMode);

  return (
    <div className="flex gap-[10px]">
      <Tooltip label={<Trans message="Grid view" />}>
        <IconButton
          size="md"
          onClick={() => {
            driveState().setViewMode('grid');
          }}
          className={clsx(
            'bg-white p-2 drive-btn', // White background and padding
            viewMode === 'grid'
              ? 'text-[#0061FF]' // Set to #0061FF color when active
              : 'text-black dark:text-gray-900', // Black in light mode, dark gray in dark mode when inactive
            'shadow' // Optional: rounded corners and shadow for better appearance
          )}
        >
          <ViewModuleIcon />
        </IconButton>
      </Tooltip>

      <Tooltip label={<Trans message="List view" />}>
        <IconButton
          size="md"
          onClick={() => {
            driveState().setViewMode('list');
          }}
          className={clsx(
            'bg-white p-2 drive-btn', // White background and padding
            viewMode === 'list'
              ? 'text-[#0061FF]' // Set to #0061FF color when active
              : 'text-black dark:text-gray-900', // Black in light mode, dark gray in dark mode when inactive
            'shadow' // Optional: rounded corners and shadow for better appearance
          )}
        >
          <ViewListIcon />
        </IconButton>
      </Tooltip>
    </div>

  );
}

function ToggleDetailsButton() {
  const { rightSidenavStatus: status, setRightSidenavStatus } = useContext(
    DashboardLayoutContext
  );
  const tooltip = status ? (
    <Trans message="Hide details" />
  ) : (
    <Trans message="Show details" />
  );

  return (
    <Tooltip label={tooltip}>
      <IconButton
        size="md"
        onClick={() => {
          setRightSidenavStatus(status === 'open' ? 'closed' : 'open');
        }}
        className={clsx(
          'bg-white p-2 drive-btn shadow', // Background, padding, and shadow
          status === 'open' ? 'text-[#0061FF]' : 'text-black dark:text-gray-900' // #0061FF when open, black or dark gray when closed
        )}
      >
        <InfoIcon />
      </IconButton>
    </Tooltip>
  );
}