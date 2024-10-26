import React from "react";
import { Logo } from '@common/ui/navigation/navbar/logo';
import { Button } from '@common/ui/buttons/button';
import { Link, useLocation } from 'react-router-dom';
import { Trans } from '@common/i18n/trans';
import { useAuth } from '@common/auth/use-auth';
import { useSettings } from '@common/core/settings/use-settings';
import { ApiIcon } from "@common/icons/material/Api";
import { TokenIcon } from "@common/icons/material/Token";
import { StorageMeter } from "@app/drive/layout/sidebar/storage-summary/storage-meter";
import { SupportIcon } from "@common/icons/material/Support";
import { InsertChartIcon } from "@common/icons/material/InsertChart";
import { DashboardIcon } from "@common/icons/material/Dashboard";
import { WorkIcon } from "@common/icons/material/Work";

function Accountsidebar() { 
  const { isSubscribed } = useAuth();  
  const { billing } = useSettings();
  const location = useLocation();

  return (
    <div className="h-screen bg-alt w-240 flex flex-col justify-center items-center bg-white dark:bg-gray-300">
      <div className="w-full p-4 border-b">
        <div className="sticky bottom-0 mt-20 flex items-center justify-center bg-white dark:bg-gray-300">
          <Logo/>
        </div>
      </div>
      <div className="sticky w-full flex-1 overflow-y-auto py-12 px-16 bg-white dark:bg-gray-300"> 
        <ul className="w-full list-none p-20 m-0 flex flex-col gap-16"> 
          <li className="py-2 flex items-center">
              <Link 
                to="/drive" 
                className={`flex gap-10 font-semibold ${location.pathname === '/drive' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
              >
                <DashboardIcon className={`flex gap-10 ${location.pathname === '/drive' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
                />
                Dashboard
              </Link>
          </li>
          <li className="py-2 flex items-center">
            <Link 
              to="/drive/workspace" 
              className={`flex gap-10 font-semibold ${location.pathname === '/drive/workspace' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
            >
              <WorkIcon className={`flex gap-10 ${location.pathname === '/drive/workspace' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}/>
              Workspace
            </Link>
          </li> 
          <li className="py-2 flex items-center">
            <Link 
              to="/api-docs" 
              className={`flex gap-10 font-semibold ${location.pathname === '/api-docs' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
            >
              <ApiIcon className={`flex gap-10 ${location.pathname === '/api-docs' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}/>
              Developer API
            </Link>
          </li>
          <li className="py-2 flex items-center">
            <Link 
              to="/integration" 
              className={`flex gap-10 font-semibold ${location.pathname === '/integration' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
            >
              <InsertChartIcon  className={`flex gap-10 ${location.pathname === '/integration' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}/>
              Integration
            </Link>
          </li>
          <li className="py-2 flex items-center">
            <Link 
              to="/supportticket" 
              className={`flex gap-10 font-semibold ${location.pathname === '/supportticket' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}
            >
              <SupportIcon className={`flex gap-10 ${location.pathname === '/supportticket' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}/>
              Support ticket
            </Link>
          </li>
        </ul>
      </div>
      <div className="mb-20 ml-20 w-200 bg-white dark:bg-gray-300 rounded-2xl shadow-lg">
        <StorageMeter/>
        {billing?.enable && (
          <div className="mt-14 mb-20 pl-30">
            <Button
              elementType={Link}
              to={isSubscribed ? '/billing/change-plan' : '/pricing'}
              variant="outline"
              color="primary"
              size="xs"
            >
              <Trans message="Upgrade" />
            </Button>
          </div>
        )}
      </div>
    </div>
  );
}

export default Accountsidebar;
