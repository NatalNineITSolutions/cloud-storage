import { useState, useEffect } from 'react';
import axios from 'axios';

export interface Permission {
  id: number;
  name: string;
  advanced?: boolean;
  display_name: string;
  description: string;
  group: string;
  restrictions: PermissionRestriction[];
}

export interface PermissionRestriction {
  name: string;
  type: string;
  value?: string | number | boolean;
  description?: string;
}


export function usePermissions() {
  const [permissions, setPermissions] = useState<Permission[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchPermissions = async () => {
      try {
        const response = await axios.get('api/permissions/subscriptions/plan');
        console.log("url",response.data)
        setPermissions(response.data);
      } catch (error) {
        console.error('Failed to fetch permissions', error);
      } finally {
        setLoading(false);
      }
    };

    fetchPermissions();
  }, []);

  return { permissions, loading };
}