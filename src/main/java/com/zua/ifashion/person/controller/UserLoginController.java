package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.util.websocket.SpringWebSocketHandler;
import com.zua.ifashion.util.MessageInfos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserLoginController {
    @Autowired
    private UserService userService;

    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

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
            return "user/index-login";
        }else if(!code.equalsIgnoreCase(ycode)){
            isError="验证码错误";
            System.out.println(isError);
            map.put("isError",isError);
            return "user/index-login";
        }else if(user.getState()==0){
            isError="您的账户已被禁用。";
            map.put("isError",isError);
            return "user/index-login";
        } else {
            System.out.println(uname+"登录");
            //System.out.println("登录成功");
            session.setAttribute("userId", user.getUserId());
            session.setAttribute("uname", uname);
            session.setAttribute("user", user);
            return "user/index";
        }

    }



    @RequestMapping(value="/ajaxlogin",method= RequestMethod.POST)
    public String ajaxLoginUser(HttpSession session, String uname, String password, Map<String, Object> map){
        MessageInfos messageInfos=new MessageInfos();
        User user=userService.selectUserByUnameAndPass(uname, password);
        session.setAttribute("userid", user.getUserId());
        session.setAttribute("uname", uname);
        String isError="";

        if(user==null){
            isError="用户名或密码错误";
            messageInfos.setMessage(isError);
            return "user/index1";
        }else {

            messageInfos.setMessage(isError);
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

    @RequestMapping("/websocket/send")
    @ResponseBody
    public String send(HttpServletRequest request) {
       // String username = request.getParameter("username");
        String username = request.getParameter("username");

        infoHandler().sendMessageToUser(username, new TextMessage("你好，测试！！！！"));
        return null;
    }

}
