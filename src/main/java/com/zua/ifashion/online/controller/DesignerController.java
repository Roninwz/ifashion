package com.zua.ifashion.online.controller;


import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.online.service.GoodsService;
import com.zua.ifashion.online.service.GoodsReviewService;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class DesignerController {
    @Autowired
    private UserService userService;

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private GoodsReviewService goodsReviewService;

    @RequestMapping("/designerList")
//    得到所有的设计师
    public String getAllDesigner(HttpServletRequest request, HttpServletResponse response){
        List<User> userList=userService.getAllDesigners();
        Map<User,List<GoodsAndImgDesignerVO>> map=new HashMap<User,List<GoodsAndImgDesignerVO>>();
        for(User designer:userList){
            List<GoodsAndImgDesignerVO> goodsAndImgDesignerVOList=goodsService.getGoodsByUserId(designer.getUserId());
            map.put(designer,goodsAndImgDesignerVOList);
        }
        request.setAttribute("userList",userList);
        request.setAttribute("map",map);
        return "user/online/desiger_list";
    }

    @RequestMapping("/online_designerMainPage")
    public String getDesignerMainPage(HttpServletRequest request,HttpServletResponse response){
        String id=request.getParameter("id");
        Integer userId=Integer.parseInt(id);
        User user=userService.selectUserByUserId(userId);
        List<GoodsAndImgDesignerVO> goodsList=goodsService.getGoodsByUserId(userId);
        request.setAttribute("user",user);
        request.setAttribute("goodsList",goodsList);
        return "user/online/desiger_mainpage";
    }

//    根据商品的id得到商品的信息
    @RequestMapping("/online_buy")
    public String getBuyPage(HttpServletRequest request,HttpServletResponse response){
        String id=request.getParameter("id");
        Integer goodsId=Integer.parseInt(id);
        GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goodsId);
        List<GoodsReview> goodsReviewList=goodsReviewService.getGoodsReviewByGoodsId(goodsId);
        List<User> users=new ArrayList<>();
        for(GoodsReview review:goodsReviewList){
            User user=userService.selectUserByUserId(review.getUserId());
            users.add(user);
        }
        request.setAttribute("user",users);
        request.setAttribute("goodsReviewList",goodsReviewList);
        request.setAttribute("goodsAndImgDesignerVO",goodsAndImgDesignerVO);
        return "/user/online/buygoods";
    }
}
