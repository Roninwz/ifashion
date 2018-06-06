package com.zua.ifashion.talk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class ForumController {

    @RequestMapping(value = "forum",method = {RequestMethod.GET,RequestMethod.POST})
    public String talk(){
        return "user/talk/forum";
    }

    @RequestMapping(value = "topic",method = {RequestMethod.GET,RequestMethod.POST})
    public String topic(){
        return "user/talk/topic";
    }

}
