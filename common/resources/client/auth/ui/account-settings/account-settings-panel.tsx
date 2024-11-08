import {ReactNode} from 'react';
import Accountsidebar from './account-sidebar';

interface Props {
  id: string;
  title: ReactNode;
  titleSuffix?: ReactNode;
  children: ReactNode;
  actions?: ReactNode;
}
export function AccountSettingsPanel({
  id,
  title,
  titleSuffix,
  children,
  actions,
}: Props) {
  return (
    <section
      id={id}
      className="mb-24 w-full bg-paper px-20 py-20 rounded-3xl"
      style={{ boxShadow: '0px 0px 20px rgba(0, 0, 0, 0.2)' }}
    >
      <div className="flex items-center gap-14 pb-10">
        <div className="text-lg font-semibold">{title}</div>
        {titleSuffix && <div className="ml-auto">{titleSuffix}</div>}
      </div>
      <div className="pt-24 form-field">{children}</div>
      {actions && (
        <div className="mt-36 flex justify-end pt-10 save-btn">{actions}</div>
      )}
    </section>
  );
}
