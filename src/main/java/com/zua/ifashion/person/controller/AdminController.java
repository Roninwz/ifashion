package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

   @Autowired
    private UserService userService;
    // 文章管理controller
    //1.文章管理首页
    @RequestMapping(value = "/articlemanage", method = RequestMethod.GET)
    public String adminArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");

        return "admin/article";
    }
    //2.更新文章

    @RequestMapping(value = "/updateArticle", method = RequestMethod.GET)
    public String updateArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/updatearticle";
    }
    //3.更新处理

    @RequestMapping(value = "/updateHandleArticle", method = RequestMethod.POST)
    public String updateHandleArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/article";
    }
    //4.添加文章

    @RequestMapping(value = "/addArticle", method = RequestMethod.GET)
    public String addArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/addarticle";
    }
    //5.添加处理

    @RequestMapping(value = "/addHandleArticle", method = RequestMethod.POST)
    public String addHandleArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/article";
    }
    //6.查询后的页面controller
    @RequestMapping(value = "/afterSelect", method = RequestMethod.POST)
    public String afterSelect(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/afterselect";
    }






    //社区管理controller
    @RequestMapping(value = "/topicmanage", method = RequestMethod.GET)
    public String adminTopic(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/topic";
    }





    //用户管理controller
    @RequestMapping(value = "/usermanage", method = RequestMethod.GET)
    public String adminUser(HttpSession session, Map<String, Object> map) {

        List<User> users=userService.getAllUsers();
        map.put("users",users);
        session.getAttribute("adminModuleVos");
        return "admin/user";
    }
    @RequestMapping(value = "/adduser", method = RequestMethod.GET)
    public String addUser(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/adduser";
    }
    @RequestMapping(value = "/addhandleuser", method = RequestMethod.GET)
    public String addHandleUser(HttpSession session) {





        session.getAttribute("adminModuleVos");
        return "admin/adduser";
    }
    @RequestMapping(value = "/updateuser", method = RequestMethod.GET)
    public String updateUser(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/updateuser";
    }
    @RequestMapping(value = "/updatehandleuser", method = RequestMethod.GET)
    public String updateHandleUser(HttpSession session) {






        session.getAttribute("adminModuleVos");





        return "admin/user";
    }

    //管理员管理controller
    //1.角色管理
    @RequestMapping(value = "/rolemanage", method = RequestMethod.GET)
    public String adminRole(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/role";
    }
    //2.功能模块管理
    @RequestMapping(value = "/modulemanage", method = RequestMethod.GET)
    public String adminModule(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/module";
    }

    //其它管理controller
    @RequestMapping(value = "/othermanage", method = RequestMethod.GET)
    public String adminOther(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/other";
    }




    //设置controller
    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String adminSystem(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/system";
    }

}
package com.zua.ifashion.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {


    // 文章管理controller
    @RequestMapping(value = "/articlemanage", method = RequestMethod.GET)
    public String adminArticle() {

        return "admin/article";
    }




    //社区管理controller
    @RequestMapping(value = "/topicmanage", method = RequestMethod.GET)
    public String adminTopic() {

        return "admin/topic";
    }





    //用户管理controller
    @RequestMapping(value = "/usermanage", method = RequestMethod.GET)
    public String adminUser() {

        return "admin/user";
    }


    //管理员管理controller
    //1.角色管理
    @RequestMapping(value = "/rolemanage", method = RequestMethod.GET)
    public String adminRole() {

        return "admin/role";
    }
    //2.功能模块管理
    @RequestMapping(value = "/modulemanage", method = RequestMethod.GET)
    public String adminModule() {

        return "admin/module";
    }

    //其它管理controller
    @RequestMapping(value = "/othermanage", method = RequestMethod.GET)
    public String adminOther() {

        return "admin/other";
    }




    //设置controller
    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String adminSystem() {

        return "admin/system";
    }

}
