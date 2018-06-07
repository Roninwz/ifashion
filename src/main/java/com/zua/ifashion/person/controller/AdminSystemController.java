package com.zua.ifashion.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminSystemController {



    //设置controller
    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String adminSystem(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/system";
    }

}
