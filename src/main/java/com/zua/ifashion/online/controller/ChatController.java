package com.zua.ifashion.online.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class ChatController {


    @RequestMapping(value = "/chat",method = {RequestMethod.GET,RequestMethod.POST})
    public String design(HttpSession session, Map<String,Object> map){

        String userid= (String) session.getAttribute("uname");
        map.put("userid",userid);
        return "user/online/websocket/index";
    }
}
