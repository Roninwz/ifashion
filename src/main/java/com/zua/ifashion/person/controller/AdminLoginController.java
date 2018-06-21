package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.entity.AdminRole;
import com.zua.ifashion.person.entity.Module;
import com.zua.ifashion.person.entity.RoleModule;
import com.zua.ifashion.person.service.*;
import com.zua.ifashion.person.vo.AdminModuleVo;
import com.zua.ifashion.util.EmptyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/admin")
public class AdminLoginController {
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

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String userLogin() {

        return "admin/login";
    }

    @RequestMapping(value = "/logincheck", method = RequestMethod.POST)
    public String userLoginCheck(HttpSession session, HttpServletRequest request, Admin admin, Map<String, Object> map) {

//        Admin admin=adminService.selectAdminByAdminNameAndPass(adminName,password);
//        session.setAttribute("adminId", admin.getAdminId());
//        session.setAttribute("adminName", admin.getAdminName());
        String code = request.getParameter("code");
        String Ycode = (String) request.getSession().getAttribute("Ycode");
        System.out.println("code:"+code);
        System.out.println("Ycode:"+Ycode);
        // Set<Module> modules=new HashSet<Module>();
        //验证用户名密码
        Admin admin2 = adminService.selectAdminByAdminNameAndPass(admin.getAdminName(), admin.getPassword());
        //判断是否有该用户

        if (EmptyUtil.isEmpty(admin2)) {
            map.put("error", "用户名或密码错误");
            System.out.println( "用户名或密码错误");
            return "admin/login";
        } else if (!Ycode.equalsIgnoreCase(code)) {
            //验证码大小写问题 toLowerCase() toUpperCase() equalsIgnoreCase解决
            System.out.println("验证码错误");
            map.put("error", "验证码错误");
            return "admin/login";
        } else {
//            int adminId=admin2.getAdminId();
//            System.out.println(adminId);
//            //根据管理员id查询用户角色集合
//            List<AdminRole> adminRoles =adminRoleService.selectAdminRoleByAdminId(adminId);
//            if(!adminRoles.isEmpty()){
//                System.out.println(adminRoles.size());
//                System.out.println(adminRoles);
//                for (AdminRole adminRole:adminRoles) {
//
//                    if(!EmptyUtil.isEmpty(adminRole)){
//                        //为什么能获取id而获取不到角色id
//                        //System.out.println("输出角色id:"+adminRole.getRoleId());
//                        System.out.println("输出id:"+adminRole.getAdminId());
//                        //AdminRole adminRole2=adminRoleService.findAdminRoleById(adminRole.getId());
//                        System.out.println(adminRole.getRoleId());
//                        //根据角色id查询角色模块功能集合
//                        List<RoleModule> roleModules=roleModuleService.selectRoleModuleByRoleId(adminRole.getRoleId());
//
//                        for (RoleModule roleModule:roleModules) {
//                            Module mo=moduleService.selectByModuleId(roleModule.getModuleId());
//                            modules.add(mo);
//                            System.out.println(mo.getModuleName());
//                        }
//                    }
//                }
//            }
//            map.put("modules", modules);
//            session.setAttribute("adminName", adminName);

//            List<AdminModuleVo> adminModuleVos=new ArrayList<>();
            Set<AdminModuleVo> adminModuleVos=new HashSet<>();
            int adminId=admin2.getAdminId();
            System.out.println(adminId);
            //通过管理员id查询
           List<AdminRole> adminRoles= adminRoleService.selectAdminRoleByAdminId(adminId);
           if(!adminRoles.isEmpty()){
               System.out.println(adminRoles.size());
                System.out.println(adminRoles);
               for (AdminRole adminRole:adminRoles) {

                    if(!EmptyUtil.isEmpty(adminRole)){


                        //根据角色id查询角色模块功能集合
                        List<RoleModule> roleModules=roleModuleService.selectRoleModuleByRoleId(adminRole.getRoleId());

                        for (RoleModule roleModule:roleModules) {
                            //查一级菜单-先查出所有的权限模块再查出所有的一级菜单，通过判断是否相等，去重
                            Module mo=moduleService.selectByModuleId(roleModule.getModuleId());
                            List<Module> allOneMenus= moduleService.getAllOneMenus();
                         for(Module moo:allOneMenus){
                            if(mo.equals(moo)){

                                System.out.println(mo.getModuleName());
                                List<Module> modules2=moduleService.getOneMenuTwoMenus(mo.getModuleId());
                                AdminModuleVo adminModuleVo=new AdminModuleVo();
                                adminModuleVo.setModuleName(mo.getModuleName());
                                adminModuleVo.setModules(modules2);

                                adminModuleVos.add(adminModuleVo);
                                for (Module module:adminModuleVo.getModules()){

                                    System.out.println("该用户所有模块名如下："+module.getModuleName());
                                }
                                System.out.println(adminModuleVos.size());



                            }
                        }


                        }
                    }
                }
           }
            //根据管理员id查询用户角色集合

            //ListUtil.removeDuplicate(adminModuleVos);去重失败
//            List<AdminModuleVo> moduleList = new ArrayList<>();
//            // 去重
//            adminModuleVos.stream().forEach(
//                    p -> {
//                        if (!moduleList.contains(p)) {
//                            moduleList.add(p);
//                        }
//                    }
//            );

            System.out.println(" 登录成功");
            System.out.println(adminModuleVos.size());
           map.put("adminModuleVos",adminModuleVos);
           session.setAttribute("admin",admin2);
           session.setAttribute("adminModuleVos",adminModuleVos);
            return "admin/index";
        }


    }

    @RequestMapping(value = "/adminlogout")
    public String adminlogout(HttpSession session){
        //清除session
        session.invalidate();
        //重定向到登录页面的跳转方法
        return "admin/";
    }
}
