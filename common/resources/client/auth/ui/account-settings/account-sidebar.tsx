import React from "react";
import { Logo } from '@common/ui/navigation/navbar/logo';

import { Button } from '@common/ui/buttons/button';
import { Link } from 'react-router-dom';
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

  return (
    <div className="h-screen bg-alt w-200 flex flex-col justify-center items-center">
      <div className="w-full p-4 border-b">
        <div className="sticky bottom-0 mt-20 flex items-center justify-center">
          <Logo/>
        </div>
      </div>
      <div className="sticky w-full flex-1 overflow-y-auto p-4"> 
        <ul className="w-full list-none p-20 m-0 flex flex-col gap-16"> 
          <li className="py-2 flex items-center">
              <Link to="/drive" className="text-blue-500 flex gap-10">
                <DashboardIcon/>
                 Dashboard
              </Link>
          </li>
          <li className="py-2 flex items-center">
            <Link to="/drive/workspace" className="text-blue-500 flex gap-10">
              <WorkIcon/>
                Workspace
            </Link>
          </li> 
          <li className="py-2 flex items-center">
            <Link to="/api-docs" className="text-blue-500 flex gap-10">
              <ApiIcon/>
              Developer API
              </Link>
          </li>
          <li className="py-2 flex items-center">
            <Link to="/drive/integration" className="text-blue-500 flex gap-10">
              <InsertChartIcon/>
              Integration</Link>
          </li>
          <li className="py-2 flex items-center">
            <Link to="/drive/supportticket" className="text-blue-500 flex gap-10">
              <SupportIcon/>
              Support ticket</Link>
          </li>
        </ul>
      </div>
      <StorageMeter/>
      {billing?.enable && (
        <div className="mt-14 pl-30">
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
  );
}

export default Accountsidebar;
