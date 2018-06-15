package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class DesignerDesignController {
    @Autowired
    private UserService userService;



    //    设计之家首页
    @RequestMapping(value = "/design", method = RequestMethod.GET)
    public String designerDesign() {

        return "user/personal/designer/design";
    }

}
