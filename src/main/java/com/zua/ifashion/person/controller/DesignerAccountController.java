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
public class DesignerAccountController {
    @Autowired
    private UserService userService;

    //    账户管理首页
    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String designerAccount() {

        return "user/personal/designer/account";
    }
    //    账户管理首页
    @RequestMapping(value = "/updatedesigneraccount", method = RequestMethod.POST)
    public String updateDesignerAccount(HttpSession session,User user, Map<String,Object> map) {
        Integer userId = (Integer) session.getAttribute("userId");
        user.setUserId(userId);
        System.out.println("userid:"+user.getUserId());
        System.out.println(user.getUsername());
        //System.out.println(user.getPassword());
        //System.out.println(user.getUserIntroduce());
        System.out.println(user.getUserImgurl());
        String isError="";
        int k=userService.updateUserSelective(user);
        if(k>0){
            isError="更新成功";

        }else {
            isError="更新失败";
        }
        System.out.println(isError);
        map.put("isError",isError);
        return "user/personal/designer/account";
    }
    //updatedesignerpass
    @RequestMapping(value = "/updatedesignerpass", method = RequestMethod.POST)
    public String updateDesignerPass(HttpSession session,String beforePass, String password,String surePass, Map<String,Object> map) {
        Integer userId = (Integer) session.getAttribute("userId");
        User user1=userService.selectUserByUserId(userId);
        String isError="";
        User user=new User();
        user.setUserId(userId);
        System.out.println(beforePass);
        System.out.println(password);
        System.out.println(surePass);
        if (!user1.getPassword().equals(beforePass)) {
            isError = "原密码输入错误";
            System.out.println(isError);
            map.put("isError",isError);
            return "user/personal/designer/account";
        } else if (!password.equals(surePass)) {
            isError = "两次密码输入不一致";
            System.out.println(isError);

            map.put("isError",isError);
            return "user/personal/designer/account";
        } else {
            user.setPassword(password);
            System.out.println("密码修改成功");
            userService.updatePassword(user);
            return "user/personal/designer/account";
        }

    }
}
