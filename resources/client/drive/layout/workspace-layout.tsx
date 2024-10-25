import React, { Fragment, useEffect, useMemo, useContext } from 'react';
import { useLocation } from 'react-router-dom';
import { useDriveStore, driveState } from '../drive-store';
import { useActiveWorkspaceId } from '@common/workspace/active-workspace-id-context';
import { FileUploadProvider } from '@common/uploads/uploader/file-upload-provider';
import { StaticPageTitle } from '@common/seo/static-page-title';
import { DashboardLayout } from '@common/ui/layout/dashboard-layout';
import { DashboardNavbar } from '@common/ui/layout/dashboard-navbar';
import { DashboardSidenav } from '@common/ui/layout/dashboard-sidenav';
import { Trans } from '@common/i18n/trans';
import { NavbarSearch } from '../search/navbar-search';
import { CreateNewButton } from './create-new-button';
import { WorkspaceSelector } from '@common/workspace/workspace-selector';
import { Sidebar } from './sidebar/sidebar';
import { DashboardLayoutContext } from '@common/ui/layout/dashboard-layout-context'; 
import {FileView} from '../file-view/workspacefileview';
import { DriveContentHeader } from './drive-content-header';


export function WorkspaceLayout() {
  const { pathname } = useLocation();
  const { workspaceId } = useActiveWorkspaceId();
  const activePage = useDriveStore(s => s.activePage);

  const urlsContextValue = useMemo(() => {
    return { workspaceId };
  }, [workspaceId]);

  useEffect(() => {
    return () => {
      driveState().reset();
    };
  }, []);

  return (
    <Fragment>
      {activePage?.label && (
        <StaticPageTitle>
          <Trans
            message={
              typeof activePage.label === 'string'
                ? activePage.label
                : activePage.label.message
            }
          />
        </StaticPageTitle>
      )}
      <FileUploadProvider>
        <DashboardLayout
          name="workspace"
          onDragOver={e => {
            e.preventDefault();
            e.stopPropagation();
            e.dataTransfer.dropEffect = 'none';
          }}
          onDrop={e => {
            e.preventDefault();
          }}>
          <Navbar />
          <DashboardSidenav position="left" size="md">
            <Sidebar />
          </DashboardSidenav>
          <WorkspaceSelector />
        </DashboardLayout>
      </FileUploadProvider>
    </Fragment>
  );
}

function Navbar() {
  const { isMobileMode } = useContext(DashboardLayoutContext);
  const activePage = useDriveStore(s => s.activePage);

  const children = isMobileMode ? null : <NavbarSearch />;
  const mobileRightChildren = (
    <Fragment>
      <CreateNewButton isCompact />
    </Fragment>
  );

  return (
    <Fragment>
      <DashboardNavbar
        rightChildren={isMobileMode && mobileRightChildren}
        menuPosition="workspace-navbar">
        {children}
      </DashboardNavbar>
    </Fragment>
  );
}
