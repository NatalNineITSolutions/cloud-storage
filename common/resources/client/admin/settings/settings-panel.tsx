import {FieldErrors, useForm} from 'react-hook-form';
import {Fragment, ReactNode} from 'react';
import {
  AdminSettingsWithFiles,
  useUpdateAdminSettings,
} from './requests/update-admin-settings';
import {AdminSettings} from './admin-settings';
import {useAdminSettings} from './requests/use-admin-settings';
import {Form} from '../../ui/forms/form';
import {Button} from '../../ui/buttons/button';
import {ProgressCircle} from '../../ui/progress/progress-circle';
import {ProgressBar} from '../../ui/progress/progress-bar';
import {Trans} from '../../i18n/trans';
import { useAuth } from '@common/auth/use-auth';

interface Props {
  title: ReactNode;
  description: ReactNode;
  children: ReactNode;
  transformValues?: (values: AdminSettingsWithFiles) => AdminSettingsWithFiles;
}
export function SettingsPanel({
  title,
  description,
  children,
  transformValues,
}: Props) {

  let {data} = useAdminSettings();
  const {user} = useAuth()
  const isSuperAdmin = user?.user_type==='super_admin'
  if (data && !isSuperAdmin) {
    data.server.storage_s3_key = '';
    data.server.storage_s3_secret = '';
    data.server.storage_s3_region = '';
    data.server.storage_s3_bucket = '';
    data.server.storage_s3_endpoint = '';
  }
  // if (data && !isSuperAdmin) {
  //   data.server.storage_s3_key = '';
  //   data.server.storage_s3_secret = '';
  //   data.server.storage_s3_region = '';
  //   data.server.storage_s3_bucket = '';
  //   data.server.storage_s3_endpoint = '';

  //   // user ID
  //   // data.server.storage_s3_key = `${data.server.storage_s3_key}-${user?.id || ''}`;
  //   // data.server.storage_s3_secret = `${data.server.storage_s3_secret}-${user?.id || ''}`;
  //   // data.server.storage_s3_region = `${data.server.storage_s3_region}-${user?.id || ''}`;
  //   // data.server.storage_s3_bucket = `${data.server.storage_s3_endpoint}-${user?.id || ''}`;
  //   // data.server.storage_s3_endpoint = `${data.server.storage_s3_endpoint}-${user?.id || ''}`;
  // }
  console.log('data', data);

  return (
    <section>
      <div className="mb-40">
        <h2 className="mb-4 text-xl">{title}</h2>
        <div className="text-sm text-muted">{description}</div>
      </div>
      {data ? (
        <FormWrapper defaultValues={data} transformValues={transformValues}>
          {children}
        </FormWrapper>
      ) : (
        <ProgressCircle isIndeterminate aria-label="Loading settings..." />
      )}
    </section>
  );
}

interface FormWrapperProps {
  children: ReactNode;
  defaultValues: AdminSettings;
  transformValues?: (values: AdminSettingsWithFiles) => AdminSettingsWithFiles;
}
function FormWrapper({
  children,
  defaultValues,
  transformValues,
}: FormWrapperProps) {
  const form = useForm<AdminSettingsWithFiles>({defaultValues});
  const updateSettings = useUpdateAdminSettings(form);
  return (
    <Fragment>
      <Form
        form={form}
        onBeforeSubmit={() => {
          // clear group errors, because hook form won't automatically
          // clear errors that are not bound to a specific form field
          const errors = form.formState.errors as FieldErrors<object>;
          const keys = Object.keys(errors).filter(key => {
            return key.endsWith('_group');
          });
          form.clearErrors(keys as any);
        }}
        onSubmit={value => {
          console.log("value",value)
          // value = transformValues ? transformValues(value) : value;
          // updateSettings.mutate(value);
        }}
      >
        {children}
        <div className="mt-40">
          <Button
            type="submit"
            variant="flat"
            color="primary"
            disabled={updateSettings.isPending}
          >
            <Trans message="Update" />
          </Button>
        </div>
      </Form>
      {updateSettings.isPending && (
        <ProgressBar
          size="xs"
          className="absolute -bottom-14 left-30 w-full"
          isIndeterminate
          aria-label="Saving settings..."
        />
      )}
    </Fragment>
  );
}
