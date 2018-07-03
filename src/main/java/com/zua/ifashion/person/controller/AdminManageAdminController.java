package com.zua.ifashion.person.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zua.ifashion.person.entity.*;
import com.zua.ifashion.person.service.*;
import com.zua.ifashion.person.vo.AdminRoleVo;
import com.zua.ifashion.person.vo.ModuleVo;
import com.zua.ifashion.util.ListUtil;
import com.zua.ifashion.util.MessageInfos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminManageAdminController {
    @Autowired
    private AdminService adminService;

    @Autowired
    private RoleService roleService;
    @Autowired
    private ModuleService moduleService;
    @Autowired
    private AdminRoleService adminRoleService;
    @Autowired
    private RoleModuleService roleModuleService;
    @RequestMapping(value = "/adminmanage", method = RequestMethod.GET)
    public String userPersonal(HttpSession session, Map<String,Object> map) {
       List<Admin> admins= adminService.getAllAdmins();
       List<AdminRoleVo> adminRoleVos=new ArrayList<>();

       if(admins.size()>0){
           for (Admin admin:admins){
               AdminRoleVo adminRoleVo=new AdminRoleVo();
               adminRoleVo.setAdminId(admin.getAdminId());
               adminRoleVo.setAdminName(admin.getAdminName());
               List<Role> roles=roleService.selectRoleNameByAdminId(admin.getAdminId());
               adminRoleVo.setRoles(roles);
               adminRoleVos.add(adminRoleVo);
           }
       }





        map.put("adminRoleVos",adminRoleVos);
        map.put("admins",admins);
        map.put("n",admins.size());
        return "admin/adminlist";
    }


    @RequestMapping(value = "/addadmin", method = RequestMethod.GET)
    public String addAdmin(HttpSession session,Map<String,Object> map) {

       List<Role> roles= roleService.getAllRoles();

        map.put("roles",roles);
        return "admin/addadmin";
    }

//@RequestParam("interest") String[] interest,

    @RequestMapping(value = "/addhandleadmin", method = RequestMethod.POST)
    public String addhandleadmin(HttpSession session,String adminName, @RequestParam("roleId") String[] roleId, Map<String,Object> map) {

        Admin admin=new Admin();
        admin.setAdminName(adminName);
        admin.setCreateDate(new Date());
        int adminId=adminService.addAdminSelective(admin);
        System.out.println("adminId:"+adminId);
        System.out.println("adminId:"+admin.getAdminId());
       for(int i=0;i<roleId.length;i++){
           if(!"emptyroleId".equals(roleId[i])){
               int roleid= Integer.valueOf(roleId[i]).intValue();

               AdminRole adminRole=new AdminRole();
               adminRole.setAdminId(admin.getAdminId());
               adminRole.setRoleId(roleid);
               adminRoleService.addAdminRoleSelective(adminRole);
           }else {
               System.out.println("roleId:"+roleId);
               continue;
           }

       }

        return "redirect:/admin/adminmanage.action";
    }


    //更新管理员页面
    @RequestMapping(value = "/updateadmin", method = RequestMethod.GET)
    public String updateAdmin(HttpSession session,Integer adminId,Map<String,Object> map) {

        System.out.println("adminId:"+adminId);

      Admin admin =  adminService.selectAdminByAdminId(adminId);
      List<AdminRole> adminRoles= adminRoleService.selectAdminRoleByAdminId(adminId);
      List<Role> rolemys=new ArrayList<>();
      if(!adminRoles.isEmpty()){
          for(AdminRole adminRole:adminRoles){
             Role role=roleService.selectRoleByRoleId(adminRole.getRoleId()) ;
              rolemys.add(role);
          }
      }

        List<Role> roles= roleService.getAllRoles();

        map.put("roles",roles);
       // adminRoleVo.setRoles(roles);
        map.put("admin",admin);
        map.put("rolemys",rolemys);

        return "admin/updateadmin";
    }

    @RequestMapping(value = "/updatehandleadmin", method = RequestMethod.POST)
    public String updatehandleadmin(HttpSession session,Integer adminId,String adminName,@RequestParam("roleId") String[] roleId) {

        Admin admin=new Admin();
        admin.setAdminName(adminName);
        admin.setAdminId(adminId);
        adminService.updateAdminSelective(admin);
        System.out.println("adminId:"+adminId);
        List<AdminRole> adminRoles=adminRoleService.selectAdminRoleByAdminId(adminId);
            if(!adminRoles.isEmpty()){
                for(AdminRole adminRole:adminRoles){
                      adminRoleService.deleteAdminRole( adminRole.getRoleId())     ;
                }
            }

        for(int i=0;i<roleId.length;i++){
            if(!"emptyroleId".equals(roleId[i])){
                int roleid= Integer.valueOf(roleId[i]).intValue();

                AdminRole adminRole=new AdminRole();
                adminRole.setAdminId(admin.getAdminId());
                adminRole.setRoleId(roleid);
                adminRoleService.addAdminRoleSelective(adminRole);
            }else {
                System.out.println("roleId:"+roleId);
                continue;
            }

        }


        return "redirect:/admin/adminmanage.action";
    }

//删除管理员


    @RequestMapping(value = "/ajaxdeleteadmin", method = RequestMethod.POST)
    @ResponseBody
    public Admin ajaxdeleteadmin(HttpSession session, @RequestBody Admin admin, Map<String,Object> map) {

        int n=adminService.deleteAdmin(admin.getAdminId());


        List<AdminRole> adminRoles=adminRoleService.selectAdminRoleByAdminId(admin.getAdminId());
        if(!adminRoles.isEmpty()){
            for(AdminRole adminRole:adminRoles){
                adminRoleService.deleteAdminRole( adminRole.getAdminroleId()) ;
            }
        }

        return admin;
    }





    // adminmanage.action
    //管理员管理controller
    //1.角色管理
    @RequestMapping(value = "/rolemanage", method = RequestMethod.GET)
    public String adminRole(HttpSession session,Map<String,Object> map) {

     List<Role> roles=   roleService.getAllRoles();
        map.put("roles",roles);
        List<ModuleVo> moduleVos=new ArrayList<>();

        List<Module> modules= moduleService.getAllModules();
        if(modules.size()>0&&modules!=null){
            for (Module m:modules){
                if(m!=null){
                    ModuleVo moduleVo=new ModuleVo();
                    moduleVo.setId(m.getModuleId());
                    moduleVo.setName(m.getModuleName());
                    moduleVo.setpId(m.getpId());
//                    if(m.getpId()!=0){
//                        moduleVo.setHasSubModule(false);
//                    }else {
//                        moduleVo.setHasSubModule(true);
//                    }
                    moduleVos.add(moduleVo);
                }
            }


        }

//
//        JSONArray jsonArray = JSONArray.fromObject(moduleVos);
//        String json = jsonArray.toString();
//
//        json = json.replaceAll("moduleId","id").replaceAll("pId","pId").
//                replaceAll("moduleName","name").replaceAll("hasSubMenu","checked");
        map.put("moduleVos",moduleVos);
        map.put("n",roles.size());
        return "admin/rolelist";
    }

    @RequestMapping(value = "/getTree", method = RequestMethod.GET)
    @ResponseBody
    public  List<ModuleVo> getTree(HttpSession session, Map<String,Object> map) {

        List<ModuleVo> moduleVos=new ArrayList<>();

        List<Module> modules= moduleService.getAllModules();
        if(modules.size()>0&&modules!=null){
            for (Module m:modules){
                if(m!=null){
                    ModuleVo moduleVo=new ModuleVo();
                    moduleVo.setId(m.getModuleId());
                    moduleVo.setName(m.getModuleName());
                    moduleVo.setpId(m.getpId());
//                    if(m.getpId()!=0){
//                        moduleVo.setHasSubModule(false);
//                    }else {
//                        moduleVo.setHasSubModule(true);
//                    }
                    moduleVos.add(moduleVo);
                }
            }


        }

//        JSONArray jsonArray = JSONArray.fromObject(moduleVos);
//        String json = jsonArray.toString();
//
//        json = json.replaceAll("moduleId","id").replaceAll("pId","pId").
//                replaceAll("moduleName","name").replaceAll("hasSubMenu","checked");
        map.put("moduleVos",moduleVos);

        return moduleVos;
    }


    @RequestMapping(value = "/updateZtree", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos updateZtree(HttpSession session, HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        List<RoleModule> roleModules2=new ArrayList<>();
        String s=request.getParameter("classpurview");
        String roleId=request.getParameter("roleId");
        Integer roleid=Integer.parseInt(roleId);
        System.out.println(s);
        System.out.println("roleId:"+roleId);
        MessageInfos messageInfos = new MessageInfos();
        String[] as = s.split(",");
        for (int i = 0; i < as.length; i++) {
            System.out.println(as[i]);
            Integer mas=Integer.parseInt(as[i]);
            System.out.println(mas);
           List<RoleModule> roleModules= roleModuleService.selectRoleModuleByRoleId(roleid);
            if(!ListUtil.isEmptyList(roleModules)){
                for (RoleModule roleModule:roleModules){
                    System.out.println("getModuleId："+roleModule.getModuleId());
                   int rmn= roleModuleService.deleteRoleModule(roleModule.getRolemoduleId());
                   System.out.println("rmn"+rmn);
                }
            }
            RoleModule roleModule=new RoleModule();
            roleModule.setRoleId(roleid);
            roleModule.setModuleId(mas);
              // int addrm= roleModuleService.addRoleModule(roleModule);
            roleModules2.add(roleModule);
//            if(addrm>0){
//                   messageInfos.setMessage("授权成功");
//               }else {
//                   messageInfos.setMessage("授权出错");
//               }
//            System.out.println("addrm"+addrm);
        }

        int batch=roleModuleService.addBatchRoleModule(roleModules2);
        System.out.println("batch:"+batch);
        return messageInfos;
    }
    //更新角色
    @RequestMapping(value = "/updaterole", method = RequestMethod.GET)
    public String updaterole(HttpSession session,Integer roleId,Map<String,Object> map) {


        Role role= roleService.selectRoleByRoleId(roleId);
        map.put("role",role);
        return "admin/updaterole";
    }
    @RequestMapping(value = "/updatehandlerole", method = RequestMethod.POST)
    public String updatehandlerole(HttpSession session,Integer roleId,String roleName) {
        System.out.println("roleId:"+roleId);
        System.out.println("roleName:"+roleName);
        Role role=new Role();
        role.setRoleId(roleId);
        role.setRoleName(roleName);
          int n= roleService.updateRole(role);
          if(n>0){
              System.out.println("更新成功");
          }else {
              System.out.println("更新失败");
          }
        return "redirect:/admin/rolemanage.action";
    }


    @RequestMapping(value = "/addrole", method = RequestMethod.POST)
    @ResponseBody
    public Role addRole(HttpSession session, @RequestBody Role role,Map<String, Object> map) {
           int n= roleService.addRole(role);
        System.out.println("添加角色："+n);
        session.getAttribute("adminModuleVos");
        return role;
    }
    @RequestMapping(value = "/ajaxdeleterole", method = RequestMethod.POST)
    @ResponseBody
    public Role ajaxDeleteRole(HttpSession session, @RequestBody Role role, Map<String,Object> map) {
        String msg="";


       int n=roleService.deleteRole(role.getRoleId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);
        session.getAttribute("adminModuleVos");

        return role;
    }









    //3.功能模块管理
    @RequestMapping(value = "/modulemanage", method = RequestMethod.GET)
    public String adminModule(HttpSession session,  Map<String, Object> map) {

       //int pageSize=10;
       // PageHelper.startPage(curPage,pageSize);
        List<Module> modules=moduleService.getAllModules();
        //PageInfo<Module> pageInfo = new PageInfo<>(modules);
       // map.put("pageInfo",pageInfo);
        //map.put("users",users);
        map.put("modules",modules);
        int n=moduleService.getAllModuleCount();
        map.put("n",n);
        return "admin/modulelist";
    }

    //添加功能模块
    @RequestMapping(value = "/addmodule", method = RequestMethod.GET)
    public String addmodule(Map<String,Object> map) {
       List<Module> modules= moduleService.getAllOneMenus();
       map.put("modules",modules);
        return "admin/addmodule";
    }
    //处理添加
    @RequestMapping(value = "/addhandlemodule", method = RequestMethod.POST)
    public String addhandlemodule(Module module,Map<String,Object> map) {


        moduleService.addModuleSelective(module);
        return "redirect:/admin/modulemanage.action";
    }
    //更新功能模块
    @RequestMapping(value = "/updatemodule", method = RequestMethod.GET)
    public String updatemodule(Integer moduleId,Map<String,Object> map) {
        System.out.println("moduleId:"+moduleId);
        Module module=  moduleService.selectByModuleId(moduleId);
        map.put("module",module);
        List<Module> modules= moduleService.getAllOneMenus();
        map.put("modules",modules);
        return "admin/updatemodule";
    }
    //更新处理
    @RequestMapping(value = "/updatehandlemodule", method = RequestMethod.POST)
    public String updatehandlemodule(Module module) {
        System.out.println(module.getModuleId());
        System.out.println(module.getModuleName());
        System.out.println(module.getpId());
       int n= moduleService.updateModuleSelective(module);
        System.out.println("n::::"+n);
        return "redirect:/admin/modulemanage.action";
    }


    @RequestMapping(value = "/ajaxdeletemodule", method = RequestMethod.POST)
    @ResponseBody
    public Module ajaxDeleteRole(HttpSession session, @RequestBody Module module, Map<String,Object> map) {
        String msg="";


        int n=moduleService.deleteModule(module.getModuleId());
       // roleModuleService.deleteRoleModule();
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);
        session.getAttribute("adminModuleVos");

        return module;
    }
}
