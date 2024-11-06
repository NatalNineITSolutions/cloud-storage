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

interface WorkspaceSelectorProps {
  className?: string;
  onChange?: (id: number) => void;
  trigger?: ReactElement<ButtonProps>;
}

export function WorkspaceSelector({
  onChange,
  className,
}: WorkspaceSelectorProps) {
  const { data: workspaces, isFetched, isFetching } = useUserWorkspaces();
  const { workspaceId, setWorkspaceId } = useActiveWorkspaceId();
  const activeWorkspace = workspaces?.find(w => w.id === workspaceId);
  const { hasPermission } = useAuth();

  useEffect(() => {
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

  return (
    <Fragment>
      <div className={clsx('workspace-selector', className)}>
        <div className="workspace-list flex flex-wrap gap-10 mt-20 mx-36 justify-between">
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
  
  return (
    <div className="mb-4 px-4 text-center w-1/5">
      <Button
        onClick={async (e) => {
          e.preventDefault();
          e.stopPropagation();
          const workspaceId = await openDialog(NewWorkspaceDialog);
          if (workspaceId) {
            setWorkspaceId(workspaceId);
            onChange?.(workspaceId);
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

  // Check if workspace.createdAt exists and is a valid value
  const creationDate = workspace.created_at ? new Date(workspace.created_at) : new Date();

  // If the creationDate is invalid, fallback to the current date
  const formattedTime = creationDate instanceof Date && !isNaN(creationDate.getTime())
    ? creationDate.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })
    : 'Invalid time';

  const formattedDate = creationDate instanceof Date && !isNaN(creationDate.getTime())
    ? creationDate.toLocaleDateString()
    : 'Invalid date';

  return (
    <div
      onClick={() => {
        setWorkspaceId(workspace.id);
        onChange?.(workspace.id);
        setSelectorIsOpen(false);
      }}
      className={clsx(
        'mb-4 flex cursor-pointer items-center gap-10 p-20 rounded-2xl shadow-md bg-white dark:bg-gray-300 text-black dark:text-white dark:border-2 border-gray-600', isActive && 'bg-primary/5'
      )}
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
        <div className={clsx('text-lg font-semibold text-gray-900')}>
          {workspace.name || "Project 29"}
        </div>
        <div className="text-sm text-gray-300 dark:text-white">
          {formattedDate} {formattedTime}
        </div>
      </div>

      <div>
        <ManageButton
          setSelectorIsOpen={setSelectorIsOpen}
          workspace={workspace}
          onChange={onChange}
        />
      </div>
    </div>
  );
}

interface LeaveWorkspaceDialogProps {
  workspace: Workspace;
  onChange?: (id: number) => void;
}

function LeaveWorkspaceDialog({
  workspace,
  onChange,
}: LeaveWorkspaceDialogProps) {
  const removeMember = useRemoveMember();
  const { user } = useAuth();
  return (
    <LeaveWorkspaceConfirmation
      isLoading={removeMember.isPending}
      onConfirm={() => {
        removeMember.mutate(
          {
            workspaceId: workspace.id,
            memberId: user!.id,
            memberType: 'member',
          },
          {
            onSuccess: () => {
              onChange?.(PersonalWorkspace.id);
            },
          },
        );
      }}
    />
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
  return (
    <ConfirmationDialog
      isDanger
      title={<Trans message="Delete workspace" />}
      body={
        <Trans
          message="Are you sure you want to delete “:name“?"
          values={{ name: workspace.name }}
        />
      }
      confirm={<Trans message="Delete" />}
      isLoading={deleteWorkspace.isPending}
      onConfirm={() => {
        deleteWorkspace.mutate(
          { id: workspace.id },
          {
            onSuccess: () => {
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
        endIcon={<KeyboardArrowDownIcon className='h-40' />}
        className='border-none'
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
              openDialog(DeleteWorkspaceConfirmation, { workspace, onChange });
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
