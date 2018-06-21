package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class PersonOrderController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;

    //订单状态
    //


    //   订单管理页面
    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public String userOrders() {




        return "user/personal/user/orders";
    }






}
