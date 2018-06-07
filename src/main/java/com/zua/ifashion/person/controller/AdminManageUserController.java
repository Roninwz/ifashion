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
public class AdminManageUserController {

    @Autowired
    private UserService userService;



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
}
