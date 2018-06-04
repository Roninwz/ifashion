package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserLoginController {
    @Autowired
    private UserService userService;
   @RequestMapping(value="login",method=RequestMethod.GET)
    public String userLogin(){

        return "user/index";
    }

    @SuppressWarnings("unused")
    @RequestMapping(value="/logincheck",method= RequestMethod.POST)
    public String userCheckLogin(HttpSession session, String name, String password, Map<String, Object> map){

        User user=userService.selectUserByUnameAndPass(name, password);
        session.setAttribute("userid", user.getUserId());
        session.setAttribute("username", user.getUsername());
        if(user!=null){
            return "user/index";
        }else {
            return "test/login";
        }
    }
    @RequestMapping(value="/ajaxlogin",method= RequestMethod.POST)
    public String ajaxLoginUser(HttpSession session, String username, String password, Map<String, Object> map){

        User user=userService.selectUserByUnameAndPass(username, password);
        session.setAttribute("userid", user.getUserId());
        session.setAttribute("username", user.getUsername());
        if(user!=null){
            return "user/index";
        }else {
            return "test/login";
        }
    }



}
