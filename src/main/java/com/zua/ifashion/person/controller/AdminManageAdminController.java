package com.zua.ifashion.person.controller;

import com.github.pagehelper.PageHelper;
import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.entity.AdminRole;
import com.zua.ifashion.person.entity.Role;
import com.zua.ifashion.person.service.*;
import com.zua.ifashion.person.vo.AdminRoleVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
    public String adminRole(HttpSession session) {
        return "admin/role";
    }
    //2.功能模块管理
    @RequestMapping(value = "/modulemanage", method = RequestMethod.GET)
    public String adminModule(HttpSession session) {
        return "admin/module";
    }


}
