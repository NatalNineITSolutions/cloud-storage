import clsx from 'clsx';
import { PersonalWorkspace, useUserWorkspaces } from './user-workspaces';
import { NewWorkspaceDialog } from './new-workspace-dialog';
import { WorkspaceMembersDialog } from './workspace-members-dialog';
import { useActiveWorkspaceId } from './active-workspace-id-context';
import { Workspace } from './types/workspace';
import { Button, ButtonProps } from '../ui/buttons/button';
import { Menu, MenuItem, MenuTrigger } from '../ui/navigation/menu/menu-trigger';
import { KeyboardArrowDownIcon } from '../icons/material/KeyboardArrowDown';
import { PersonAddIcon } from '../icons/material/PersonAdd';
import { DeleteIcon } from '../icons/material/Delete';
import { ExitToAppIcon } from '../icons/material/ExitToApp';
import { EditIcon } from '../icons/material/Edit';
import { RenameWorkspaceDialog } from './rename-workspace-dialog';
import { ConfirmationDialog } from '../ui/overlays/dialog/confirmation-dialog';
import { useDeleteWorkspace } from './requests/delete-workspace';
import { useRemoveMember } from './requests/remove-member';
import { useAuth } from '../auth/use-auth';
import { Trans } from '../i18n/trans';
import { LeaveWorkspaceConfirmation } from './leave-workspace-confirmation';
import { openDialog } from '@common/ui/overlays/store/dialog-store';
import React, { useEffect, Fragment, ReactElement, useState } from 'react';
import { useNavigate } from '@common/utils/hooks/use-navigate';
import { useDialogContext } from '@common/ui/overlays/dialog/dialog-context';
import { UnfoldMoreIcon } from '@common/icons/material/UnfoldMore';
import { ButtonBase } from '@common/ui/buttons/button-base';
import { Link} from 'react-router-dom';

interface WorkspaceSelectorProps {
  className?: string;
  onChange?: (id: number) => void;
  trigger?: ReactElement<ButtonProps>;
}

export function WorkspaceSelector({
  onChange,
  className,
  trigger: propsTrigger,
}: WorkspaceSelectorProps) {
  const { data: workspaces, isFetched, isFetching } = useUserWorkspaces();
  const { workspaceId, setWorkspaceId } = useActiveWorkspaceId();
  const activeWorkspace = workspaces?.find(w => w.id === workspaceId);
  const { hasPermission } = useAuth();

  useEffect(() => {
    // Ensure active workspace is not unset while fetching workspaces
    if (isFetched && !isFetching && !activeWorkspace) {
      setWorkspaceId(PersonalWorkspace.id);
    }
  }, [activeWorkspace, workspaces, setWorkspaceId, isFetched, isFetching]);

  if (
    !activeWorkspace ||
    (!hasPermission('workspaces.create') && workspaces?.length === 1)
  ) {
    return null;
  }


  const defaultTrigger = (
    <ButtonBase
      className={clsx(
        'flex items-center gap-10 rounded ring-inset hover:bg-hover focus-visible:ring-2',
        className,
      )}
    >
      <span className="default mr-auto block flex-auto overflow-hidden text-left">
        <span className="block overflow-hidden overflow-ellipsis text-sm font-medium text-main">
          {activeWorkspace.default ? (
            <Trans message={activeWorkspace.name} />
          ) : (
            activeWorkspace.name
          )}
        </span>
        <span className="block text-xs text-muted">
          {activeWorkspace.default ? (
            <Trans message="Personal workspace" />
          ) : (
            <Trans
              message=":count members"
              values={{count: activeWorkspace.members_count}}
            />
          )}
        </span>
      </span>
    </ButtonBase>
  );

  const trigger = propsTrigger || defaultTrigger;

  return (
    <Fragment>
      <div className={clsx('workspace-selector', className)}>
        <div className="workspace-list flex flex-wrap gap-24 mx-36">
          <WorkspaceAddNewButton onChange={onChange} />

          {workspaces?.map(workspace => (
            <WorkspaceItem
              key={workspace.id}
              workspace={workspace}
              onChange={onChange}
              setSelectorIsOpen={() => {}}
            />
          ))}
        </div>
      </div>
    </Fragment>
  );
}

interface WorkspaceAddNewButtonProps {
  onChange?: (id: number) => void;
}

function WorkspaceAddNewButton({ onChange }: WorkspaceAddNewButtonProps) {
  const { setWorkspaceId } = useActiveWorkspaceId();
  const navigate = useNavigate(); 
  
  return (
    <div className="add-workspace mb-4 px-4 text-center w-1/5">
      <Button
        onClick={async (e) => {
          e.preventDefault();
          e.stopPropagation();
          const workspaceId = await openDialog(NewWorkspaceDialog);
          if (workspaceId) {
            setWorkspaceId(workspaceId);
            onChange?.(workspaceId);
            navigate('/drive');
          }
        }}
        className="relative w-full rounded-xl bg-gradient-to-r from-[#6375f2] to-[#4a52ec] p-80 text-white shadow-lg hover:shadow-xl transform hover:scale-105 transition-transform duration-300"
      >
        <div className="text-left w-full">
          <div className="text-xl font-semibold">+ Add New</div>
          <div className="text-3xl font-bold mt-1">Workspace</div>
        </div>

        <div className="absolute top-30 right-8">
          <svg width="92" height="45" viewBox="0 0 92 45" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M2 42.2949C2 42.2949 8.27975 -5.21045 24 16.7949C39.7203 38.8003 46 37.7896 52 20.7949C59.4168 -0.212582 86.758 17.8755 89.5 2.79492" stroke="url(#paint0_linear_26_2666)" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
            <defs>
            <linearGradient id="paint0_linear_26_2666" x1="-1.50002" y1="47.2949" x2="70.5778" y2="-16.1194" gradientUnits="userSpaceOnUse">
            <stop stop-color="white"/>
            <stop offset="1" stop-color="white" stop-opacity="0"/>
            </linearGradient>
            </defs>
          </svg>
        </div>
      </Button>
    </div>
  );
}

interface WorkspaceItemProps {
  workspace: Workspace;
  onChange: WorkspaceSelectorProps['onChange'];
  setSelectorIsOpen: (value: boolean) => void;
}

function WorkspaceItem({
  workspace,
  onChange,
  setSelectorIsOpen,
}: WorkspaceItemProps) {
  const { workspaceId, setWorkspaceId } = useActiveWorkspaceId();
  const isActive = workspaceId === workspace.id;
  const navigate = useNavigate(); 


  const creationDate = workspace.created_at ? new Date(workspace.created_at) : new Date();
  const formattedTime = creationDate instanceof Date && !isNaN(creationDate.getTime())
    ? creationDate.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
    : 'Invalid time';
  const formattedDate = creationDate instanceof Date && !isNaN(creationDate.getTime())
    ? creationDate.toLocaleDateString()
    : 'Invalid date';

    return (
      <Link
        to="/drive" // Set the desired route here
        onClick={(e) => {
          // Prevent default navigation to handle workspace logic first
          e.preventDefault(); // Prevent immediate navigation
    
          // Set the workspace ID and trigger onChange
          setWorkspaceId(workspace.id);
          onChange?.(workspace.id);
          setSelectorIsOpen(false);
    
          // Now navigate to the /drive page
          navigate("/drive"); // Trigger the navigation manually
        }}
        className="add-workspace mb-4 flex cursor-pointer items-center gap-10 p-20 rounded-2xl shadow-md bg-white dark:bg-gray-300 text-black dark:text-white dark:border-2 border-gray-700"
      >
        <div className="w-40 py-2 px-8 bg-gray-100 rounded-2xl flex items-center justify-center">
          <svg
            width="40"
            height="40"
            viewBox="0 0 24 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M10 4L4 4C3.44771 4 3 4.44771 3 5L3 19C3 19.5523 3.44771 20 4 20L20 20C20.5523 20 21 19.5523 21 19L21 8C21 7.44772 20.5523 7 20 7L12 7C11.4477 7 11 6.55228 11 6L11 5C11 4.44772 10.5523 4 10 4Z"
              fill="#2563EB"
            />
          </svg>
        </div>
        <div className="flex-auto">
          <div className={clsx('text-lg font-semibold text-black dark:text-white truncate')}>
            {workspace.name}
          </div>
          {workspace.default ? (
            <div className="text-xs text-muted dark:text-white">
              Personal Workspace
            </div>
          ) : (
            <div className="text-xs text-muted dark:text-white">
              {formattedTime} • {formattedDate}
            </div>
          )}
        </div>
        <div>
        {!workspace.default && (
        <ManageButton
          setSelectorIsOpen={setSelectorIsOpen}
          workspace={workspace}
          onChange={onChange}
        />
        )}
        </div>
      </Link>
    );
}

interface DeleteWorkspaceConfirmationProps {
  workspace: Workspace;
  onChange?: (id: number) => void;
}

function DeleteWorkspaceConfirmation({
  workspace,
  onChange,
}: DeleteWorkspaceConfirmationProps) {
  const deleteWorkspace = useDeleteWorkspace();
  const {close} = useDialogContext();
  return (
    <ConfirmationDialog
      isDanger
      title={<Trans message="Delete workspace" />}
      body={
        <Trans
          message="Are you sure you want to delete “:name“?"
          values={{name: workspace.name}}
        />
      }
      confirm={<Trans message="Delete" />}
      isLoading={deleteWorkspace.isPending}
      onConfirm={() => {
        deleteWorkspace.mutate(
          {id: workspace.id},
          {
            onSuccess: () => {
              close();
              onChange?.(PersonalWorkspace.id);
            },
          },
        );
      }}
    />
  );
}

interface ManageButtonProps {
  setSelectorIsOpen: (value: boolean) => void;
  workspace: Workspace;
  onChange?: (id: number) => void;
}

function ManageButton({
  setSelectorIsOpen,
  workspace,
  onChange,
}: ManageButtonProps) {
  const { user } = useAuth();

  return (
    <MenuTrigger onItemSelected={() => setSelectorIsOpen(false)}>
      <Button
        onClick={e => {
          e.preventDefault();
          e.stopPropagation();
        }}
        color="primary"
        size="xs"
        variant="outline"
        endIcon={<KeyboardArrowDownIcon className='h-40 hover:bg-transparent' />}
        className='border-none hover:bg-transparent'
      >
        {/* <Trans message="Manage" /> */}
      </Button>
      <Menu>
        <MenuItem
          onClick={e => {
            e.stopPropagation();
            openDialog(WorkspaceMembersDialog, { workspace });
          }}
          value="workspaceMembers"
          startIcon={<PersonAddIcon />}
        >
          <Trans message="Members" />
        </MenuItem>
        {workspace.owner_id === user?.id && (
          <MenuItem
            onClick={e => {
              e.stopPropagation();
              openDialog(RenameWorkspaceDialog, { workspace });
            }}
            value="updateWorkspace"
            startIcon={<EditIcon />}
          >
            <Trans message="Rename" />
          </MenuItem>
        )}
        {workspace.owner_id !== user?.id && (
          <MenuItem
            onClick={e => {
              e.stopPropagation();
              openDialog(LeaveWorkspaceDialog, { workspace, onChange });
            }}
            value="leaveWorkspace"
            startIcon={<ExitToAppIcon />}
          >
            <Trans message="Leave" />
          </MenuItem>
        )}
        {workspace.owner_id === user?.id && (
          <MenuItem
          onClick={e => {
            e.stopPropagation();
            openDialog(DeleteWorkspaceConfirmation, {workspace, onChange});
          }}
          value="deleteWorkspace"
          startIcon={<DeleteIcon />}
        >
          <Trans message="Delete" />
        </MenuItem>
        )}
      </Menu>
    </MenuTrigger>
  );
}