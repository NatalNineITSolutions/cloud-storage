import {MenuConfig} from '../core/settings/settings';
import {useAuth} from '../auth/use-auth';
import {useSettings} from '../core/settings/use-settings';

export function useCustomMenu(menuOrPosition?: string | MenuConfig) {
  const settings = useSettings();
  const {user, hasPermission} = useAuth();
  console.log("user",user);
  if (!menuOrPosition) {
    return null;
  }

  const userAccess =['user.access']
  const fileAccess =['file.access']
  const settingsAccess =['settings.access']
  const subscriptionAccess =['subscription.access']
  const planAccess =['plan.access']
  const roleAccess =['role.access']
  const appearanceAccess =['appearance.access']
  
  const menu =
    typeof menuOrPosition === 'string'
      ? settings.menus?.find(s => s.positions?.includes(menuOrPosition))
      : menuOrPosition;

      console.log("menu",menu)

  if (menu) {
    menu.items = menu.items.filter(item => {
      if (user?.user_type === 'super_admin') {
        return item.action; 
      }
      const hasRoles = (item.roles || []).every(a =>
        user?.roles.find(b => b.id === a)
      );
      const hasPermissions = (item.permissions || []).every(a =>
        hasPermission(a)
      );
      const usersMenu = user?.permissions?.some((item)=>userAccess.includes(item.name))
      const fileMenu = user?.permissions?.some((item)=>fileAccess.includes(item.name))
      const settingMenu = user?.permissions?.some((item)=>settingsAccess.includes(item.name))
      const subscriptionMenu = user?.permissions?.some((item)=>subscriptionAccess.includes(item.name))
      const planMenu = user?.permissions?.some((item)=>planAccess.includes(item.name))
      const roleMenu = user?.permissions?.some((item)=>roleAccess.includes(item.name))
      const appearanceMenu = user?.permissions?.some((item)=>appearanceAccess.includes(item.name))
      

      console.log("usersMenu",usersMenu)

      if(item.action ==='/admin/users' && !usersMenu) {
          return false
      } 
      if(item.action ==='/admin/files' && !fileMenu) {
          return false
      } 
      if(item.action ==='/admin/settings' && !settingMenu) {
          return false
      } 
      if(item.action ==='/admin/subscriptions' && !subscriptionMenu) {
          return false
      } 
      if(item.action ==='/admin/roles' && !roleMenu) {
          return false
      } 
      if(item.action ==='/admin/plans' && !planMenu) {
          return false
      } 
      if(item.action ==='/admin/appearance' && !appearanceMenu) {
          return false
      } 

      console.log("item.action",item.action,"hasPermissions",hasPermissions,"hasrole",hasRoles,'usermenu',usersMenu,"file",fileMenu,'settings',settingMenu)
      // make sure item has action, otherwise router link will error out
      return item.action && hasRoles && hasPermissions ;
      // return  hasRoles;
    });
  }
  console.log('menu',menu)
  return menu;
}
