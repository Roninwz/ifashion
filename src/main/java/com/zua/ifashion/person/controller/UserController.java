package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.util.MD5Util;
import com.zua.ifashion.util.MessageInfos;
import com.zua.ifashion.util.RandUtil;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.AccountInfo;
import com.zua.ifashion.util.miaodiyun.httpApiDemo.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;
    @RequestMapping(value="/index",method= RequestMethod.GET)
    public String userIndex(){
        return "user/home";
    }


    @RequestMapping(value = "/ajaxgetresetPasscode", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxGetCode(HttpServletRequest request, @RequestBody User user, HttpSession session, Map<String,Object> map) {
        MessageInfos messageInfo=new MessageInfos();
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
        session.setAttribute("telresetcode",code);
        messageInfo.setMessage("验证码发送成功");
        //userService.addUserSelective(user);
        return messageInfo;
    }


    //判断验证码是否正确
    @RequestMapping(value = "/ajaxResetGetCode", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxRegUsername(HttpServletRequest request, @RequestParam("resetcode")String resetcode, HttpSession session, Map<String,Object> map) {
       String resetcode1= (String) session.getAttribute("telresetcode");

        MessageInfos messageInfo=new MessageInfos();
       if(resetcode.equals(resetcode1)){
           messageInfo.setMessage("验证码正确");
       }else {
           messageInfo.setMessage("验证码错误");
       }

        return messageInfo;
    }

    @RequestMapping(value="/updateResetPass",method= RequestMethod.POST)
    public String updateResetPass(HttpSession session,String tel,String resetcode,String newpass){
        String resetcode1= (String) session.getAttribute("telresetcode");
           User user1=new User();
       User user =userService.selectUserByTel(tel);
        System.out.println(tel);
        System.out.println(resetcode);
        System.out.println(newpass);
        if(resetcode.equals(resetcode1)&&user!=null){
            user1.setUserId(user.getUserId());//newpass
            user1.setPassword(MD5Util.md5Password(newpass));
           int n= userService.updateUserSelective(user1);
        }

        return "user/home";
    }

}
