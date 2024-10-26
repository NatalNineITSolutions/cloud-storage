import React, { useState } from 'react';
import { Trans } from '@common/i18n/trans';
import { CreateNewTokenDialog } from '@common/auth/ui/account-settings/access-token-panel/create-new-token-dialog';
import { DialogTrigger } from '@common/ui/overlays/dialog/dialog-trigger';

const AccessHeader: React.FC = () => {
    const [isDialogOpen, setIsDialogOpen] = useState(false);

    const openDialog = () => setIsDialogOpen(true);
    const closeDialog = () => setIsDialogOpen(false);

    return (
        <div className="flex justify-between items-center p-40 border-b border-gray-200">
            <h2 className="text-2xl font-semibold text-gray-800">API access tokens</h2>
        </div>
    );
};

export default AccessHeader;
