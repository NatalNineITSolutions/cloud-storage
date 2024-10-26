import React from 'react';
import { StorageMeter } from './storage-summary/storage-meter';
import { WorkspaceSelector } from '@common/workspace/workspace-selector';
import { RootFolderPage } from '../../drive-page/drive-page';
import { SidebarMenu } from './sidebar-menu';
import { useNavigate } from '@common/utils/hooks/use-navigate';
import { Button } from '@common/ui/buttons/button';
import { Link } from 'react-router-dom';
import { Trans } from '@common/i18n/trans';
import { useAuth } from '@common/auth/use-auth';
import clsx from 'clsx';
import { useSettings } from '@common/core/settings/use-settings';
import { Logo } from '@common/ui/navigation/navbar/logo';
import { useIsDarkMode } from '@common/ui/themes/use-is-dark-mode'; 

interface SidebarProps {
  className?: string;
  logocolor?: 'dark' | 'light';
}

export function Sidebar({ className, logocolor }: SidebarProps) { 
  const { isSubscribed } = useAuth();
  const { billing } = useSettings();
  const isDarkMode = useIsDarkMode();
  const color = logocolor || (isDarkMode ? 'light' : 'dark');
  
  return (
    <div
        className={clsx(
          className,
          'flex flex-col gap-20 bg-white dark:bg-gray-300  text-sm font-medium text-muted h-screen'
        )}
        style={{ boxShadow: '4px 0 10px rgba(0, 0, 0, 0.1)' }}
      >
      <div className="sticky bottom-0 mt-20 flex items-center justify-center">
        <Logo isDarkMode={isDarkMode} color={color} logoColor={logocolor} />
      </div>

        <div className="flex-1 overflow-y-auto">
          <SidebarMenu />
        </div>
        <div className='mb-20 ml-20 w-200 bg-white dark:bg-gray-300 rounded-2xl shadow-lg'>
          <StorageMeter />
          {billing.enable ? (
            <div className="mt-14 mb-20 pl-30">
            <Button
              elementType={Link}
              to={isSubscribed ? '/billing/change-plan' : '/pricing'}
              variant="outline"
              size="xs"
              color="primary"
              className="text-gray-200"
            >
              <Trans message="Upgrade" />
            </Button>
          </div>
        ) : null}
      </div>

      {/* <div className="sticky bottom-0 mt-40">
        <WorkspaceSwitcher/>
      </div> */}
    </div>
  );
}

function WorkspaceSwitcher() {
  const navigate = useNavigate();
  return (
    <WorkspaceSelector
      onChange={() => {
        navigate(RootFolderPage.path);
      }}
      className="mt-auto w-full flex-shrink-0 border-t px-24 py-18"
    />
  );
}
