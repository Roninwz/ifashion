package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.util.websocket.SpringWebSocketHandler;
import com.zua.ifashion.util.MessageInfos;
import com.zua.ifashion.util.RandUtil;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.AccountInfo;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserRegisterController {

    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String userLogin() {

        return "user/register1";
    }
    @RequestMapping(value = "/ajaxgetcode", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxGetCode(HttpServletRequest request, @RequestBody User user, HttpSession session, Map<String,Object> map) {
        MessageInfos messageInfo=new MessageInfos();
        System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhh");
       // String tel=request.getParameter("tel");
        String code = RandUtil.getRandNum();
        //String ttel=tel;
        // 获取开发者账号信息
        AccountInfo.execute();
        //System.out.println(tel);
        //System.out.println(ttel);
        System.out.println(code);
        // 验证码通知短信接口
        IndustrySMS.execute(user.getTel(),'"'+code+'"');
        session.setAttribute("telcode",code);
        messageInfo.setMessage("验证码发送成功");
        //userService.addUserSelective(user);
        return messageInfo;
    }



        //判断手机号是否已被注册
    @RequestMapping(value = "/ajaxRegTel", method = RequestMethod.POST)
    @ResponseBody
    public User ajaxRegTel(HttpServletRequest request, @RequestBody User user, HttpSession session, Map<String,Object> map) {

       User user1= userService.selectUserByTel(user.getTel());

        return user1;
    }

    //判断手机号是否已被注册
    @RequestMapping(value = "/ajaxRegUsername", method = RequestMethod.POST)
    @ResponseBody
    public User ajaxRegUsername(HttpServletRequest request, @RequestBody User user, HttpSession session, Map<String,Object> map) {

        User user1= userService.selectUserByUsername(user.getUsername());

        return user1;
    }








    @RequestMapping(value = "/registercheck", method = RequestMethod.POST)
    public String userRegisterCheck(HttpServletRequest request, User user, HttpSession session, Map<String,Object> map) {

        String telcode = (String) request.getSession().getAttribute("telcode");
        String yzm = request.getParameter("code");
        System.out.println("telcode:"+telcode);
        System.out.println("yzm"+yzm);
        if (telcode.equals(yzm)) {
            userService.addUserSelective(user);

            infoHandler().sendMessageToUser(user.getUsername(), new TextMessage("欢迎您"+user.getUsername()+"注册"));
            return "user/index";
        } else {
            System.out.println("验证码错误");
            return "user/register1";
        }
    }


}