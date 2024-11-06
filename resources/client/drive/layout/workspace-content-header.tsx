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

export function WorkspaceContentHeader() {
  const { isMobileMode } = useContext(DashboardLayoutContext);
  const activePage = useDriveStore((s) => s.activePage);

  return (
    <DashboardContentHeader className="px-8 md:px-26 py-4 mt-20 flex items-center gap-20 h-60">
        <li className='relative inline-flex min-w-0 flex-shrink-0 items-center justify-start text-lg'>
            <div className='ml-16 cursor-pointer overflow-hidden whitespace-nowrap rounded px-8 py-4 font-semibold text-bg-600 hover:bg-hover'>Workspace</div>
        </li>
      {/* {isMobileMode ? (
        <DriveSortButton isDisabled={activePage?.disableSort} />
      ) : (
        <PageBreadcrumbs />
      )} */}
      <div className="ml-auto flex items-center gap-2"> 
        {/* <ToggleViewModeButton /> */}
      </div>
    </DashboardContentHeader>
  );
}

function ToggleViewModeButton() {
  const viewMode = useDriveStore((s) => s.viewMode);

  return (
    <div className="flex gap-2">
      <Tooltip label={<Trans message="Grid view" />}>
        <IconButton
          size="md"
          onClick={() => {
            driveState().setViewMode('grid');
          }}
          className={clsx(
            viewMode === 'grid' ? 'text-gray-200 dark:text-white' : 'text-gray-400'
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
            viewMode === 'list' ? 'text-gray-200 dark:text-white' : 'text-gray-400'
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
        color={status === 'open' ? 'primary' : null}
        onClick={() => {
          setRightSidenavStatus(status === 'open' ? 'closed' : 'open');
        }}
      >
        <InfoIcon />
      </IconButton>
    </Tooltip>
  );
}
