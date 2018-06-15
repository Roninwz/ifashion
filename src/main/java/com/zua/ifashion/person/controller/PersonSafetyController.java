package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonSafetyController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;


    //    安全设置页面
    @RequestMapping(value = "/safety", method = RequestMethod.GET)
    public String userSafety() {
        return "user/personal/user/safety";
    }
//updatepassword
    @RequestMapping(value = "/updatepassword", method = RequestMethod.GET)
    public String updatepassword() {
        return "user/personal/user/updatepassword";
    }
    @RequestMapping(value = "/updatepasswordcheck", method = RequestMethod.POST)
    public String userUpdatePassword(HttpSession session,String beforePass,String password,String surePass,Map<String,Object> map) {
        Integer userId = (Integer) session.getAttribute("userId");
        User user = userService.selectUserByUserId(userId);
        User user1=new User();
        user1.setUserId(userId);
        user1.setPassword(password);

        String isError = "";
        if (!user.getPassword().equals(beforePass)) {
            isError = "原密码输入错误";
            System.out.println(isError);
            map.put("isError",isError);
            return "user/personal/user/updatepassword";
        } else if (!password.equals(surePass)) {
            isError = "两次密码输入不一致";
            System.out.println(isError);

            map.put("isError",isError);
            return "user/personal/user/updatepassword";
        } else {
            System.out.println("密码修改成功");
            userService.updatePassword(user1);
            return "user/personal/user/safety";
        }
    }

    @RequestMapping(value = "/updatetel", method = RequestMethod.GET)
    public String updatetel() {
        return "user/personal/user/updatetel";
    }
        @RequestMapping(value = "/updatetelcheck", method = RequestMethod.POST)
        public String userUpdateTel(HttpSession session,String beforTel,String tel,Map<String,Object> map) {
            Integer userId= (Integer) session.getAttribute("userId");
            User user=userService.selectUserByUserId(userId);
            User user1=new User();
            user1.setUserId(userId);
            user1.setTel(tel);
            String isError="";
            if(!user.getTel().equals(beforTel)){
                isError="原手机号输入错误";
                return "user/personal/user/updatetel";
            } else {
                userService.updateTel(user1);
                return "user/personal/user/safety";
            }
    }

    @RequestMapping(value = "/updateemail", method = RequestMethod.GET)
    public String updateemail() {
        return "user/personal/user/updateemail";
    }
    @RequestMapping(value = "/updateemailcheck", method = RequestMethod.POST)
    public String userUpdateEmail(HttpSession session,String beforEmail,String email,Map<String,Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);
        User user1=new User();
        user1.setUserId(userId);
        user1.setEmail(email);
        String isError="";
        if(!user.getEmail().equals(beforEmail)){
            isError="原邮箱输入错误";
            System.out.println(isError);
            return "user/personal/user/updateemail";
        } else {
            isError="修改成功";
            System.out.println(isError);
            userService.updateEmail(user1);
            return "user/personal/user/safety";
        }

    }





}
