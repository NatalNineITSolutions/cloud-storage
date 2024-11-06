import React, { useState } from "react";
import { Logo } from '@common/ui/navigation/navbar/logo';
import { StorageMeter } from '../../../../resources/client/drive/layout/sidebar/storage-summary/storage-meter';
import { Button } from '@common/ui/buttons/button';
import { Link, useLocation } from 'react-router-dom';
import { Trans } from '@common/i18n/trans';
import { useAuth } from '@common/auth/use-auth'; 
import { useSettings } from '@common/core/settings/use-settings'; 
import { ApiIcon } from "@common/icons/material/Api";
import { TokenIcon } from "@common/icons/material/Token";
import { DeveloperModeIcon } from "@common/icons/material/DeveloperMode";
import { MenuIcon } from '@common/icons/material/Menu';
import { CloseIcon } from '@common/icons/material/Close';

function Swaggersidebar() {
  const { isSubscribed } = useAuth();  
  const { billing } = useSettings();  
  const location = useLocation();
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);

  const toggleSidebar = () => setIsSidebarOpen(!isSidebarOpen);

  return (
    <div className="relative h-screen">
      {/* Hamburger Menu Button */}
      <button
        className="fixed top-4 left-4 lg:hidden text-gray-700 dark:text-gray-300"
        onClick={toggleSidebar}
        aria-label="Toggle Sidebar"
      >
        {isSidebarOpen ? <CloseIcon fontSize="large" /> : <MenuIcon fontSize="large" />}
      </button>

      {/* Sidebar Overlay for Mobile */}
      {isSidebarOpen && (
        <div
          className="fixed inset-0 bg-black bg-opacity-50 z-40 lg:hidden"
          onClick={toggleSidebar}
        ></div>
      )}

      {/* Sidebar */}
      <div
        className={`h-screen w-240 bg-white dark:bg-gray-300 lg:static transition-transform transform ${
          isSidebarOpen ? 'translate-x-0' : '-translate-x-full'
        } lg:translate-x-0 z-50 flex flex-col justify-center items-center`}
      >
        <div className="p-4 border-b">
          <div className="sticky bottom-0 mt-20 flex items-center justify-center">
            <Logo />
          </div>
        </div>
        <div className="flex-1 overflow-y-auto py-12 px-16 bg-white dark:bg-gray-300"> 
          <ul className="list-none p-20 m-0 flex flex-col gap-16"> 
            <li className="py-2 flex items-center">
              <Link
                to="/api-docs"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 rounded-md transition-colors duration-200 ${
                  location.pathname === '/api-docs'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                } hover:bg-gray-100 dark:hover:bg-gray-700`}
              >
                <DeveloperModeIcon />
                Developer API
              </Link>
            </li>
            <li className="py-2 flex items-center">
              <Link
                to="/accesstoken"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 rounded-md transition-colors duration-200 ${
                  location.pathname === '/accesstoken'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                } hover:bg-gray-100 dark:hover:bg-gray-700`}
              >
                <TokenIcon />
                Access Token
              </Link>
            </li>

          </ul>
        </div>
        <div className="mb-20 ml-20 w-200 bg-white dark:bg-gray-300 rounded-2xl shadow-lg">
          <StorageMeter />
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
    </div>
  );
}

export default Swaggersidebar;
