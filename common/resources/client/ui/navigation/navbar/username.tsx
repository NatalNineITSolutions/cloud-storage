import { useAuth } from '@common/auth/use-auth';
import { useThemeSelector } from '@common/ui/themes/theme-selector-context';
import { ReactElement } from 'react';

export function Username(): ReactElement | null {
  const { user } = useAuth();
  const { selectedTheme } = useThemeSelector();

  if (!selectedTheme || !user) return null;

  return (
    <div className="flex flex-col pl-16">
      <h1 className="text-2xl font-semibold text-blue-900">My Cloud</h1>
      <p className="text-lg text-gray-500">
        Welcome, {user.display_name}! <span className="wave-emoji">👋</span>
      </p>
    </div>
  );
}
