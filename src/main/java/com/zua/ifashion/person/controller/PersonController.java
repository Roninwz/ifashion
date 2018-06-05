package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class PersonController {
    @Autowired
    private UserService userService;

    //    个人中心首页
    @RequestMapping(value = "/personal", method = RequestMethod.GET)
    public String userPersonal() {

        return "user/personal/user/person";
    }
    //    个人信息页面
    @RequestMapping(value = "/information", method = RequestMethod.GET)
    public String userInformation() {

        return "user/personal/user/information";
    }
    //    安全设置页面
    @RequestMapping(value = "/safety", method = RequestMethod.GET)
    public String userSafety() {

        return "user/personal/user/safety";
    }

    //   收货地址页面
    @RequestMapping(value = "/address", method = RequestMethod.GET)
    public String userAddress() {

        return "user/personal/user/address";
    }

}
