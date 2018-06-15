package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
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
    public String userCheckLogin(HttpServletRequest request,HttpSession session, String uname, String password, Map<String, Object> map){

        User user=userService.selectUserByUnameAndPass(uname, password);

        String code = request.getParameter("code");
        String ycode= (String) request.getSession().getAttribute("Ycode");
        String isError="";
        if(user==null){
            isError="用户名或密码错误";
            map.put("isError",isError);
            System.out.println(isError);
            return "user/index1";
        }else if(!code.equalsIgnoreCase(ycode)){
            isError="验证码错误";
            System.out.println(isError);
            map.put("isError",isError);
            return "user/index1";
        }else {
            System.out.println("登录成功");
            session.setAttribute("userId", user.getUserId());
            session.setAttribute("uname", uname);
            session.setAttribute("user", user);
            return "user/index";
        }

    }



    @RequestMapping(value="/ajaxlogin",method= RequestMethod.POST)
    public String ajaxLoginUser(HttpSession session, String uname, String password, Map<String, Object> map){

        User user=userService.selectUserByUnameAndPass(uname, password);
        session.setAttribute("userid", user.getUserId());
        session.setAttribute("uname", uname);
        String isError="";

        if(user==null){
            isError="用户名或密码错误";
            return "user/index1";
        }else {

            return "user/index1";
        }
    }



    @RequestMapping(value = "/userlogout")
     public String userlogout(HttpSession session){
                 //清除session
        session.invalidate();
                 //重定向到登录页面的跳转方法
        return "user/index";
   }

}
