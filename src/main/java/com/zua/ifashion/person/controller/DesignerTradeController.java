package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class DesignerTradeController {
    @Autowired
    private UserService userService;


    //    交易中心首页
    @RequestMapping(value = "/trade", method = RequestMethod.GET)
    public String designerTrade() {
        return "user/personal/designer/trade";
    }

}
