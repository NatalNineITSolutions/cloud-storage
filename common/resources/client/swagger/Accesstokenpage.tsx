import { Navbar } from "@common/ui/navigation/navbar/navbar";
import React from "react";
import Swaggersidebar from "./swaggersidebar";
import { AccessTokenPanel } from "@common/auth/ui/account-settings/access-token-panel/access-token-panel";
import { useUser } from "@common/auth/ui/use-user";

export default function AccessTokenPage() {
  const { data, isLoading } = useUser('me', {
    with: ['roles', 'social_profiles', 'tokens'],
  });

  return (
    <div className="h-screen flex">
      {/* Sidebar */}
      <div className="h-screen bg-gray-100">
        <Swaggersidebar />
      </div>

      {/* Main Content Area */}
      <div className="flex-1 flex flex-col">
        <Navbar />

        <div className="p-8 mt-40 overflow-y-auto">

          <div>
            {!isLoading && data?.user ? (
              <AccessTokenPanel user={data.user} />
            ) : (
              <p>Loading...</p>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
