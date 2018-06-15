package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class DesignerOtherController {
    @Autowired
    private UserService userService;


    //    其它
    @RequestMapping(value = "/other", method = RequestMethod.GET)
    public String designerOther() {

        return "user/personal/designer/other";
    }

}
