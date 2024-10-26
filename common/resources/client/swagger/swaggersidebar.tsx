import React from "react";
import { Logo } from '@common/ui/navigation/navbar/logo';
import { StorageMeter } from '../../../../resources/client/drive/layout/sidebar/storage-summary/storage-meter';
import { Button } from '@common/ui/buttons/button';
import { Link } from 'react-router-dom';
import { Trans } from '@common/i18n/trans';
import { useAuth } from '@common/auth/use-auth'; 
import { useSettings } from '@common/core/settings/use-settings'; 
import { ApiIcon } from "@common/icons/material/Api";
import { TokenIcon } from "@common/icons/material/Token";
import { DeveloperModeIcon } from "@common/icons/material/DeveloperMode";

function Swaggersidebar() { 
  const { isSubscribed } = useAuth();  
  const { billing } = useSettings();  

  return (
    <div className="h-screen bg-white dark:bg-gray-300 w-240 flex flex-col justify-center items-center">
      <div className="w-full p-4 border-b">
        <div className="sticky bottom-0 mt-20 flex items-center justify-center">
          <Logo/>
        </div>
      </div>
      <div className="sticky w-full flex-1 overflow-y-auto py-12 px-16 bg-white dark:bg-gray-300"> 
        <ul className="w-full list-none p-20 m-0 flex flex-col gap-16"> 
          <li className="py-2 flex items-center">
            <Link to="/api-docs" className={`text-blue-500 font-semibold flex gap-10 ${location.pathname === '/api-docs' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}>
              <DeveloperModeIcon/>
              Developer API</Link>
          </li>
          <li className="py-2 flex items-center">
            <Link to="/accesstoken" className={`text-blue-500 font-semibold flex gap-10 ${location.pathname === '/accesstoken' ? 'text-gray-200 dark:text-gray-200' : 'text-gray-400 dark:text-white'}`}>
              <TokenIcon />
              Access Token
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

export default Swaggersidebar;
