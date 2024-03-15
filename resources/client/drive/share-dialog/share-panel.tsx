import {useState} from 'react';
import {Button} from '@common/ui/buttons/button';
import {useShareEntry} from './queries/use-share-entry';
import {
  PermissionSelector,
  PermissionSelectorItem,
  PermissionSelectorItems,
} from './permission-selector';
import {MemberList} from './member-list';
import {
  ChipField,
  ChipValue,
} from '@common/ui/forms/input-field/chip-field/chip-field';
import {Avatar} from '@common/ui/images/avatar';
import {useTrans} from '@common/i18n/use-trans';
import {Trans} from '@common/i18n/trans';
import {DriveEntry} from '../files/drive-entry';
import {Item} from '@common/ui/forms/listbox/item';
import {isEmail} from '@common/utils/string/is-email';
import {useNormalizedModels} from '@common/users/queries/use-normalized-models';
import {useSettings} from '@common/core/settings/use-settings';

interface SharePanelProps {
  className?: string;
  entry: DriveEntry;
}
export function SharePanel({className, entry}: SharePanelProps) {
  const {trans} = useTrans();
  const {share} = useSettings();
  const shareEntry = useShareEntry();
  const [chips, setChips] = useState<ChipValue[]>([]);
  const [isSharing, setIsSharing] = useState(false);
  const [selectedPermission, setSelectedPermission] =
    useState<PermissionSelectorItem>(PermissionSelectorItems[0]);
  const allEmailsValid = chips.every(chip => !chip.invalid);
  const [inputValue, setInputValue] = useState('');
  const query = useNormalizedModels(
    'normalized-models/user',
    {perPage: 7, query: inputValue},
    {enabled: share.suggest_emails},
  );

  // show user's email, instead of name in the chip
  const displayWith = (chip: ChipValue) => chip.description || chip.name;

}
