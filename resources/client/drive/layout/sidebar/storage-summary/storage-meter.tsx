import React from 'react';
import { useStorageSummary } from './storage-summary';
import { StorageIcon } from '@common/icons/material/Storage';
import { Meter } from '@common/ui/progress/meter';
import { Trans } from '@common/i18n/trans';
import clsx from 'clsx';

export function StorageMeter() {
  const { isLoading, data } = useStorageSummary();

  
  const roundedPercentage = data?.percentage ? Math.round(data.percentage) : 0;

  const label = (
    <span className={clsx('whitespace-nowrap', isLoading && 'invisible')}>
      <Trans
        message=":usedGB of :availableGB used (:percentage%)"
        values={{
          usedGB: data?.usedFormatted,          
          availableGB: data?.availableFormatted, 
          percentage: roundedPercentage,       
        }}
      />
    </span>
  );

  return (
    <div className="pt-24 pl-20 flex flex-col items-start gap-16">
      <img src="./images/Files.png" alt="Storage" className="w-80 h-80" />
      <Meter
        className="flex-auto max-w-144 storage-meter"
        size="xs"
        value={roundedPercentage}
        label={label}
        showValueLabel={false}
        labelPosition="bottom"
      />
    </div>
  );
}