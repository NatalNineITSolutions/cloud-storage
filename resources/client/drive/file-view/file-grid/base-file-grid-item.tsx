import React, {ComponentPropsWithoutRef, ReactNode} from 'react';
import clsx from 'clsx';
import {FileThumbnail} from '@common/uploads/file-type-icon/file-thumbnail';
import {DriveEntry} from '../../files/drive-entry';

interface BaseFileGridItemProps extends ComponentPropsWithoutRef<'div'> {
  entry: DriveEntry;
  className?: string;
  isSelected?: boolean;
  isMobileMode?: boolean;
  footerAdornment?: ReactNode;
}

export const BaseFileGridItem = React.forwardRef<
  HTMLDivElement,
  BaseFileGridItemProps
>(
  (
    {entry, className, isSelected, isMobileMode, footerAdornment, ...domProps},
    ref
  ) => {
    return (
      <div
        {...domProps}
        ref={ref}
        className={clsx(
          'drive-files rounded aspect-square flex flex-col grid-item transition-shadow-opacity select-none overflow-hidden outline-none bg-white dark:bg-transparent dark:border',
          isSelected &&'',
          className
        )}
      >
        <div className="flex-auto relative min-h-0">
          <FileThumbnail
            className="h-full w-full"
            iconClassName="block w-70 h-70 absolute m-auto inset-0"
            file={entry}
          />
        </div>
        <Footer
          entry={entry}
          isSelected={isSelected}
          isMobile={isMobileMode}
          adornment={footerAdornment}
        />
      </div>
    );
  }
);

interface FooterProps {
  entry: DriveEntry;
  isSelected?: boolean;
  isMobile?: boolean;
  adornment?: ReactNode;
}
function Footer({ entry, isSelected, isMobile, adornment }: FooterProps) {
  return (
    <div
      className={clsx(
        'text-sm h-48 flex-shrink-0 flex items-center gap-10',
        isMobile ? 'justify-between pl-18 pr-2' : 'justify-center px-16'
      )}
    >
      <FileThumbnail
        className="w-20 h-20 mr-8" 
        iconClassName="block"
        file={entry}
      />
      <div className="min-w-0 whitespace-nowrap overflow-hidden overflow-ellipsis">
        {entry.name}
      </div>
      {adornment}
    </div>
  );
}