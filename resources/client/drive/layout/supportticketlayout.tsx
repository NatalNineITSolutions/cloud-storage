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
import { Sidebar } from './sidebar/sidebar';
import { DashboardLayoutContext } from '@common/ui/layout/dashboard-layout-context'; 
import {FileView} from '../file-view/workspacefileview';
import { CreateQuickTicket } from '@common/supportticket/supportticket';
import Accountsidebar from '@common/auth/ui/account-settings/account-sidebar';


export function SupportticketLayout() {
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
            <Accountsidebar />
          </DashboardSidenav>
          <CreateQuickTicket/>
        </DashboardLayout>
      </FileUploadProvider>
    </Fragment>
  );
}

function Navbar() {
  const { isMobileMode } = useContext(DashboardLayoutContext); // Ensure useContext is correct here
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
