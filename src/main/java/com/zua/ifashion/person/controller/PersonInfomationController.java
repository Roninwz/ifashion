package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonInfomationController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;

    //    个人信息页面
    @RequestMapping(value = "/information", method = RequestMethod.GET)
    public String userInformation(HttpSession session, Map<String,Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
       //Integer uid=Integer.parseInt(userId);
        User user=userService.selectUserByUserId(userId);
        map.put("user",user);
        return "user/personal/user/information";
    }
    //updateinfo
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
        @RequestMapping(value = "/updateuserinfo", method = RequestMethod.POST)
    public String updateUserInfo(HttpSession session,User user,Map<String,Object> map){

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

        return "user/personal/user/information";
    }

}
