package com.zua.ifashion.online.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.online.entity.*;
import com.zua.ifashion.online.service.*;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import com.zua.ifashion.online.vo.ReceiveOrderInfo;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/designer")
public class DesignController {

    @Autowired
    private ArticleService articleService;
    @Autowired
    private TopicService topicService;
    @Autowired
    private UserService userService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private ReceiveOrderService receiveOrderService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private AddressService addressService;
    @Autowired
    private GoodsChildTypeService goodsChildTypeService;
    @Autowired
    private UpdateOrderStateService updateOrderStateService;


    @RequestMapping(value = "/design",method = {RequestMethod.GET,RequestMethod.POST})
    public String design(HttpSession session, Map<String,Object> map){
        User user= (User) session.getAttribute("user");
        List<GoodsAndImgDesignerVO> goods=goodsService.getGoodsByUserId(user.getUserId());
        map.put("goods",goods);

        return "user/personal/designer/design";
    }

    @RequestMapping(value = "/myTrade",method = {RequestMethod.GET,RequestMethod.POST})
    public String myTrade(HttpSession session, Map<String,Object> map){
        User user= (User) session.getAttribute("user");
        List<ReceiveOrderInfo> roInfos=new ArrayList<>();
        List<ReceiveOrder> receiveOrders=receiveOrderService.selectReceiveByDesignerId(user.getUserId());
        for (ReceiveOrder ro:receiveOrders){
            ReceiveOrderInfo roInfo=new ReceiveOrderInfo();
            roInfo.setOrdersState(ro.getOrderState());
            System.out.println(ro.getOrdersId());
            roInfo.setOrdersId(ro.getOrdersId());

            roInfo.setTrueOrder(ro.getTrueOrder());
            if (ro.getStartDate()==null){
                roInfo.setStartDate(null);
            }else{
                roInfo.setStartDate(ro.getStartDate());
            }
            if (ro.getEndState()==null){
                roInfo.setEndDate(null);
            }else{
                roInfo.setEndDate(ro.getEndState());
            }
            roInfo.setReceiveUserId(ro.getUserId());
            roInfo.setReceiveUserName(userService.selectUserByUserId(ro.getUserId()).getUsername());
            roInfo.setTel(userService.selectUserByUserId(ro.getUserId()).getTel());
            Orders orders=orderService.selectOrdersByOrdersId(ro.getOrdersId());
            roInfo.setOrdersDate(orders.getOrdersDate());
            roInfo.setOrderNumber(orders.getOrderNumber());
            System.out.println("地址id"+orders.getAddressId());
            System.out.println("地址"+addressService.selectAddressByAddressId(orders.getAddressId()));
            System.out.println("地址名称"+addressService.selectAddressByAddressId(orders.getAddressId()).getAddressContent());

            roInfo.setAddressContent(addressService.selectAddressByAddressId(orders.getAddressId()).getAddressContent());
            Goods goods=goodsService.getGoodsByGoodsId(orders.getGoodsId());
            roInfo.setColor(goods.getColor());
            List<GoodsImg> goodsImgs=receiveOrderService.selectGoodsImgBygoodId(goods.getGoodsId());
            roInfo.setGoodsImgurl(goodsImgs.get(0).getGoodsImgurl());
            roInfo.setGoodsName(goods.getGoodsName());
            roInfo.setSize(goods.getSize());
            roInfo.setGoodsPrice(goods.getGoodsPrice());
            roInfos.add(roInfo);
        }
        map.put("roInfos",roInfos);


        return "user/personal/designer/myTrade";
    }

    @RequestMapping(value = "/myTradeInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String myTradeInfo(String orderNumber,Map<String,Object> map){
        Orders orders=orderService.selectOrderByOrderNumber(orderNumber);
        map.put("num",orders.getOrdersId());
        ReceiveOrder receiveOrder=receiveOrderService.selectReceiveByOrdersId(orders.getOrdersId());
        Address address=addressService.selectAddressByAddressId(orders.getAddressId());
        ReceiveOrderInfo roInfo=new ReceiveOrderInfo();
        roInfo.setReceiveUserName(userService.selectUserByUserId(receiveOrder.getUserId()).getUsername());
        roInfo.setAddressContent(address.getAddressContent());
        roInfo.setTel(userService.selectUserByUserId(receiveOrder.getUserId()).getTel());
        roInfo.setOrdersDate(orders.getOrdersDate());
        roInfo.setOrdersState(receiveOrder.getOrderState());
        Goods goods=goodsService.selectGoodsByByGoodsId(orders.getGoodsId());
        roInfo.setColor(goods.getColor());
        List<GoodsImg> goodsImgs=receiveOrderService.selectGoodsImgBygoodId(goods.getGoodsId());
        roInfo.setGoodsImgurl(goodsImgs.get(0).getGoodsImgurl());
        roInfo.setGoodsName(goods.getGoodsName());
        roInfo.setSize(goods.getSize());
        roInfo.setGoodsPrice(goods.getGoodsPrice());
        System.out.println("GoodschildId"+goods.getGoodschildId());
        System.out.println("-----"+goodsChildTypeService.selectGoodsChildTypeByGoodsChildId(goods.getGoodschildId()));
        System.out.println("名字"+goodsChildTypeService.selectGoodsChildTypeByGoodsChildId(goods.getGoodschildId()).getGoodschildName());
        roInfo.setGoodschildName(goodsChildTypeService.selectGoodsChildTypeByGoodsChildId(goods.getGoodschildId()).getGoodschildName());

        map.put("roInfo",roInfo);


        return "user/personal/designer/myTradeInfo";
    }

    @RequestMapping(value = "/myPublish",method = {RequestMethod.GET,RequestMethod.POST})
    public String myPublish(HttpSession session, Map<String,Object> map){
        User user= (User) session.getAttribute("user");
        List<Article> article=new ArrayList<>();
        article=articleService.selectArticleByUserId(user.getUserId());
        map.put("article",article);
        List<Topic> topics=topicService.selectTopicByUserId(user.getUserId());
        map.put("topics",topics);


        return "user/personal/designer/myPublish";
    }

    @RequestMapping(value = "/newHome",method = {RequestMethod.GET,RequestMethod.POST})
    public String newHome(){
        return "user/article/news/newsHome";
    }

    @RequestMapping(value = "/designermainpage",method = {RequestMethod.GET,RequestMethod.POST})
    public String designermainpage(){
        return "user/online/desiger_list";
    }

    @RequestMapping(value = "/account",method = {RequestMethod.GET,RequestMethod.POST})
    public String account(){
        return "user/personal/bakdesigner/account";
    }

    @RequestMapping(value = "/personalInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String personalInfo(){

        return "user/personal/designer/personalInfo";
    }

    @RequestMapping(value = "/updatedesignerpersonalInfo", method = RequestMethod.POST)
    public String updateDesignerpersonalInfo(HttpSession session,User user, Map<String,Object> map) {
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
        return "user/personal/designer/personalInfo";
    }

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
            return "user/personal/designer/personalInfo";
        } else if (!password.equals(surePass)) {
            isError = "两次密码输入不一致";
            System.out.println(isError);

            map.put("isError",isError);
            return "user/personal/designer/personalInfo";
        } else {
            user.setPassword(password);
            System.out.println("密码修改成功");
            userService.updatePassword(user);
            return "user/personal/designer/personalInfo";
        }

    }

    @RequestMapping("updateOrder")
    public String updateOrder(HttpServletRequest request, HttpServletResponse response){
        String order=request.getParameter("ordersId");

        Integer ordersId=Integer.parseInt(order);
        String num=request.getParameter("num");
        Orders orders=orderService.selectOrdersByOrdersId(ordersId);
        ReceiveOrder receiveOrder=receiveOrderService.selectReceiveByOrdersId(ordersId);
        orders.setTrueOrder(num);
        orders.setOrdersState(1);
        receiveOrder.setTrueOrder(num);
        receiveOrder.setOrderState(1);
        updateOrderStateService.updateOrderState(orders,receiveOrder);
        return "redirect:/designer/myTrade.action";

    }


}
