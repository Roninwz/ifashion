package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.service.MyCollectionService;
import com.zua.ifashion.person.service.UserAttentionService;
import com.zua.ifashion.person.vo.UserAttentionVo2;
import com.zua.ifashion.person.vo.UserCollectArticleVo;
import com.zua.ifashion.person.vo.UserCollectTopicVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class DesignController2 {

    @Autowired
    private UserAttentionService userAttentionService;

    @Autowired
    private MyCollectionService myCollectionService;



    @RequestMapping(value = "/personalHome",method = RequestMethod.GET)
    public String designHome(){

        return "user/personal/designer/design";
    }

    @RequestMapping(value = "/myAttention",method = RequestMethod.GET)
    public String myAttention(HttpSession session,HttpServletRequest request){

        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        List<UserAttentionVo2> fans = new ArrayList<>();
        List<UserAttentionVo2> attentions=new ArrayList<>();
        fans = userAttentionService.selectFansByUserdId(uid);
        attentions = userAttentionService.selectAttentionByUserId(uid);

        request.setAttribute("fans",fans);
        request.setAttribute("attentions",attentions);

        return "user/personal/designer/myAttention";
    }

    @RequestMapping(value = "/mycollections",method = RequestMethod.GET)
    public String myCollections(Map<String, Object> map, HttpSession session, HttpServletRequest request){

        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        List<UserCollectTopicVo> collectTopics = new ArrayList<>();
        collectTopics = myCollectionService.selectTopicCollectByUserId(uid);

        List<UserCollectArticleVo> colletArticles = new ArrayList<>();
        colletArticles = myCollectionService.selectArticleCollectByUserId(uid);

        request.setAttribute("collectArticles",colletArticles);
        request.setAttribute("collectTopics",collectTopics);

        return "user/personal/designer/mycollect";
    }

    @RequestMapping(value = "/designUp",method = RequestMethod.GET)
    public String designUp(HttpSession session, HttpServletRequest request){


        return "user/personal/designer/designUp";
    }


}
