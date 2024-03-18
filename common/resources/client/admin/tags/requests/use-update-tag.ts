import {useMutation} from '@tanstack/react-query';
import {apiClient, queryClient} from '@common/http/query-client';
import {useTrans} from '@common/i18n/use-trans';
import {BackendResponse} from '@common/http/backend-response/backend-response';
import {toast} from '@common/ui/toast/toast';
import {message} from '@common/i18n/message';
import {Tag} from '@common/tags/tag';
import {DatatableDataQueryKey} from '@common/datatable/requests/paginated-resources';
import {onFormQueryError} from '@common/errors/on-form-query-error';
import {UseFormReturn} from 'react-hook-form';
import {slugifyString} from '@common/utils/string/slugify-string';

interface Response extends BackendResponse {
  tag: Tag;
}

export interface UpdateTagPayload extends Partial<Tag> {
  id: number;
}

export function useUpdateTag(form: UseFormReturn<UpdateTagPayload>) {
  
}

