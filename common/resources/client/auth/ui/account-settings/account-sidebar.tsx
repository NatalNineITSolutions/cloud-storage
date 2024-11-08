import React, { useState } from "react";
import { Logo } from '@common/ui/navigation/navbar/logo';
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
import { StorageMeter } from "@app/drive/layout/sidebar/storage-summary/storage-meter";
import { DashboardIcon } from "@common/icons/material/Dashboard";
import { SupportAgentIcon } from "@common/icons/material/SupportAgent";
import { InsertPageBreakIcon } from "@common/icons/material/InsertPageBreak";
import { SupportIcon } from "@common/icons/material/Support";
import { AutoGraphIcon } from "@common/icons/material/AutoGraph";
import { AdUnitsIcon } from "@common/icons/material/AdUnits";
import { LoginIcon } from "@common/icons/material/Login";
import { LocalShippingIcon } from "@common/icons/material/LocalShipping";
import { GraphicEqIcon } from "@common/icons/material/GraphicEq";
import { WorkspacesIcon } from "@common/icons/material/Workspaces";

function Accountsidebar() {
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
        className={`h-screen w-240 bg-white dark:bg-gray-300 lg:static w-full main-sidebar transition-transform transform ${
          isSidebarOpen ? 'translate-x-0' : '-translate-x-full'
        } lg:translate-x-0 z-50 flex flex-col justify-center items-center`}
        style={{ boxShadow: 'rgba(0, 0, 0, 0.2) 8px 0px 20px' }}
      >
        <div className="p-4 border-b">
          <div className="sticky bottom-0 mt-20 flex items-center justify-center">
            <Logo />
          </div>
        </div>
        <div className="flex-1 overflow-y-auto py-12 bg-white dark:bg-gray-300 w-full"> 
          <ul className="list-none m-0 flex flex-col gap-16"> 
            <li className="py-2 flex items-center account-list">
              <Link
                to="/drive"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 rounded-md transition-colors account-list duration-200 ${
                  location.pathname === '/drive'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <DashboardIcon />
                Dashboard
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/drive/workspace"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 rounded-md account-list transition-colors duration-200 ${
                  location.pathname === '/drive/workspace'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <WorkspacesIcon />
                Workspace
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/api-docs"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 account-list rounded-md transition-colors duration-200 ${
                  location.pathname === '/api-docs'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <ApiIcon />
                Developer API
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/integration"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 account-list rounded-md transition-colors duration-200 ${
                  location.pathname === '/integration'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <SupportIcon />
                Integration
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/supportticket"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 account-list rounded-md transition-colors duration-200 ${
                  location.pathname === '/supportticket'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <SupportAgentIcon />
                Support Ticket
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/costoptimizer"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 account-list rounded-md transition-colors duration-200 ${
                  location.pathname === '/costoptimizer'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <AutoGraphIcon />
                Cost Optimizer
              </Link>
            </li>

            <li className="py-2 flex items-center account-list">
              <Link
                to="/auditlogs"
                className={`text-blue-500 font-semibold flex gap-10 px-4 py-4 account-list rounded-md transition-colors duration-200 ${
                  location.pathname === '/auditlogs'
                    ? 'text-gray-200 dark:text-gray-200'
                    : 'text-gray-400 dark:text-white'
                }`}
              >
                <GraphicEqIcon />
                Audit Logs
              </Link>
            </li>
          </ul>
        </div>
        <div className="mb-20 w-200 bg-white dark:bg-gray-300 rounded-2xl shadow-lg sidebar-storage">
          <StorageMeter/>
          {billing?.enable && (
            <div className="mt-14 mb-20 pl-20 pr-20">
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

export default Accountsidebar;
