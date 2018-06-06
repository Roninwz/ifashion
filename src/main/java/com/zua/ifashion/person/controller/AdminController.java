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
