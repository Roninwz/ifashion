package com.zua.ifashion.online.controller;

import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.service.UserAttentionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class AttentionDesignerController {
    @Autowired
    private UserAttentionService userAttentionService;

    @RequestMapping(value = "online_addAttention",method = RequestMethod.POST)
    public void addAttentionDesigner(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        System.out.println("guanzhu");
        Integer userId= (Integer) session.getAttribute("userId");
        String des=request.getParameter("desId");
        Integer desId=Integer.parseInt(des);
        UserAttention userAttention=new UserAttention();
        userAttention.setUserId(userId);
        userAttention.setUserdId(desId);
        userAttentionService.addUserAttentionSelective(userAttention);
        System.out.println("tianjia");

    }

    @RequestMapping(value = "online_removeAttention",method = RequestMethod.POST)
    public void removeAttentionDesigner(HttpSession session,HttpServletRequest request,HttpServletResponse response){
        System.out.println("quxuao");
        Integer userId=(Integer) session.getAttribute("userId");
        String des=request.getParameter("desId");
        Integer desId=Integer.parseInt(des);
        userAttentionService.deleteUserAttentionByUserIdAndUsered(userId,desId);
        System.out.println("shanchu");
    }

}
