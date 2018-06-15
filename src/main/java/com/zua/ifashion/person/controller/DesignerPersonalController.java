package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class DesignerPersonalController {
    @Autowired
    private UserService userService;

    //    设计师首页
    @RequestMapping(value = "/designer", method = RequestMethod.GET)
    public String designerDesigner() {

        return "user/personal/designer/designer";
    }

}
