import { Link } from 'react-router-dom';
import clsx from 'clsx';
import { AccountSettingsPanel } from '../account-settings-panel';
import { User } from '../../../user';
import { IllustratedMessage } from '../../../../ui/images/illustrated-message';
import { SvgImage } from '../../../../ui/images/svg-image/svg-image';
import { Button } from '../../../../ui/buttons/button';
import { FormattedDate } from '../../../../i18n/formatted-date';
import { AccessToken } from '../../../access-token';
import { DialogTrigger } from '../../../../ui/overlays/dialog/dialog-trigger';
import { ConfirmationDialog } from '../../../../ui/overlays/dialog/confirmation-dialog';
import { useDeleteAccessToken } from './delete-access-token';
import { CreateNewTokenDialog } from './create-new-token-dialog';
import { LinkStyle } from '../../../../ui/buttons/external-link';
import { useAuth } from '../../../use-auth';
import { Trans } from '../../../../i18n/trans';
import secureFilesSvg from './secure-files.svg';
import { useSettings } from '../../../../core/settings/use-settings';
import { queryClient } from '@common/http/query-client';
import { AccountSettingsId } from '@common/auth/ui/account-settings/account-settings-sidenav';

interface Props {
  user: User;
}

export function AccessTokenPanel({ user }: Props) {
  const tokens = user.tokens || [];
  const { hasPermission } = useAuth();
  const { api } = useSettings();
  if (!api?.integrated || !hasPermission('api.access')) return null;

  return (
    <AccountSettingsPanel
      id={AccountSettingsId.Developers}
      title={<Trans message="API access tokens" />}
      titleSuffix={
        <div className="flex gap-4">
          {/* <Link
            className={`${LinkStyle} px-4 py-2 text-gray-200 rounded-lg`}
            to="/api-docs"
            target="_blank"
          >
            <Trans message="Documentation" />
          </Link> */}
          <CreateNewTokenButton />
        </div>
      }
    >
      {!tokens.length ? (
        <IllustratedMessage
          className="py-40"
          image={<SvgImage src={secureFilesSvg} />}
          title={<Trans message="You have no personal access tokens yet" />}
        />
      ) : (
        tokens.map((token, index) => (
          <TokenLine token={token} key={token.id} isLast={index === tokens.length - 1} />
        ))
      )}
    </AccountSettingsPanel>
  );
}

interface TokenLineProps {
  token: AccessToken;
  isLast: boolean;
}

function TokenLine({ token, isLast }: TokenLineProps) {
  return (
    <div
      className={clsx(
        'gap-4 p-4 rounded-lg bg-white dark:bg-gray-300',
        !isLast && 'mb-4'
      )}
    >
      <div className="flex justify-start items-center gap-60">
        <div className='flex flex-col flex-start'>
          <div className="text-sm font-semibold text-gray-800">
            <Trans message="Name" />
          </div>
          <div className="w-500 mt-1 p-8 border border-gray-300 rounded-md bg-gray-50 text-gray-600">
            {token.name}
          </div>
        </div>
        <div className='flex flex-col'>
          <div className="text-sm font-semibold text-gray-800 mt-4">
            <Trans message="Last used" />
          </div>
          <div className="w-500 mt-1 p-8 border border-gray-300 rounded-md bg-gray-50 text-gray-600">
            {token.last_used_at ? <FormattedDate date={token.last_used_at} /> : <Trans message="Never" />}
          </div>
        </div>
      </div>
      <DeleteTokenButton token={token} />
    </div>
  );
}

function CreateNewTokenButton() {
  return (
    <DialogTrigger type="modal">
      <Button className="create px-4 py-2 text-white rounded-lg flex">
        <Trans message="Create Token" />
      </Button>
      <CreateNewTokenDialog />
    </DialogTrigger>
  );
}

interface DeleteTokenButtonProps {
  token: AccessToken;
}

function DeleteTokenButton({ token }: DeleteTokenButtonProps) {
  const deleteToken = useDeleteAccessToken();

  return (
    <DialogTrigger
      type="modal"
      onClose={(isConfirmed) => {
        if (isConfirmed) {
          deleteToken.mutate(
            { id: token.id },
            {
              onSuccess: () => queryClient.invalidateQueries({ queryKey: ['users'] }),
            }
          );
        }
      }}
    >
      <Button
        size="xs"
        className="delete px-12 py-12 mt-32 text-white rounded-lg"
      >
        <Trans message="Delete" />
      </Button>
      <ConfirmationDialog
        isDanger
        title={<Trans message="Delete token?" />}
        body={<Trans message="This token will be deleted immediately and permanently. Once deleted, it can no longer be used to make API requests." />}
        confirm={<Trans message="Delete" />}
      />
    </DialogTrigger>
  );
}
