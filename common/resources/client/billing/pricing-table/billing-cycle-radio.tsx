import { Trans } from '../../i18n/trans';
import { Radio } from '../../ui/forms/radio-group/radio';
import {
  RadioGroup,
  RadioGroupProps,
} from '../../ui/forms/radio-group/radio-group';
import { Product } from '../product';
import { UpsellBillingCycle } from './find-best-price';
import { UpsellLabel } from './upsell-label';

interface BillingCycleRadioProps extends Omit<RadioGroupProps, 'children'> {
  selectedCycle: UpsellBillingCycle;
  onChange: (value: UpsellBillingCycle) => void;
  products?: Product[];
}

export function BillingCycleRadio({

  
  selectedCycle,
  onChange,
  products,
  className,
  ...radioGroupProps
}: BillingCycleRadioProps) {

  const isMobile = window.innerWidth < 768;

  return (
    <RadioGroup {...radioGroupProps} >
      <div
      className={className}
      style={{
        display: 'flex',
        flexDirection: isMobile ? 'column' : 'row',
        justifyContent: 'center',  
        alignItems: 'center',      
        gap: '20px',               
        width: '100%', 
      }}
    >
      <Radio
        value="yearly"
        checked={selectedCycle === 'yearly'}
        onChange={e => {
          onChange(e.target.value as UpsellBillingCycle);
        }}
      >
        <Trans message="Annual" />
        <UpsellLabel products={products} />
      </Radio>
      <Radio
        value="monthly"
        checked={selectedCycle === 'monthly'}
        onChange={e => {
          onChange(e.target.value as UpsellBillingCycle);
        }}
      >
        <Trans message="Monthly" />
      </Radio>
      </div>
    </RadioGroup>
  );
}
