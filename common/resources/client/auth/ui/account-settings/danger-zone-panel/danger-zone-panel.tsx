import {AccountSettingsPanel} from '../account-settings-panel';
import {Button} from '@common/ui/buttons/button';
import {DialogTrigger} from '@common/ui/overlays/dialog/dialog-trigger';
import {ConfirmationDialog} from '@common/ui/overlays/dialog/confirmation-dialog';
import {useDeleteAccount} from './delete-account';
import {Trans} from '@common/i18n/trans';
import {AccountSettingsId} from '@common/auth/ui/account-settings/account-settings-sidenav';

export function DangerZonePanel() {
  const deleteAccount = useDeleteAccount();

  return (
    <AccountSettingsPanel
      id={AccountSettingsId.DeleteAccount}
      title={<Trans message="Danger zone" />}
    >
      <DialogTrigger
        type="modal"
        onClose={isConfirmed => {
          if (isConfirmed) {
            deleteAccount.mutate();
          }
        }}
      >
        <div className='flex justify-center items-center bg-gradient-to-r save-btn'>
          <Button variant="flat" color="danger" className="border-none font-semibold" style={{ backgroundImage: 'linear-gradient(to right, #FF8686, #FF1818)' }}>
            <Trans message="Delete account" />
          </Button>
        </div>
        <ConfirmationDialog
          isDanger
          title={<Trans message="Delete account?" />}
          body={
            <Trans message="Your account will be deleted immediately and permanently. Once deleted, accounts can not be restored." />
          }
          confirm={<Trans message="Delete" />}
        />
      </DialogTrigger>
    </AccountSettingsPanel>
  );
}
