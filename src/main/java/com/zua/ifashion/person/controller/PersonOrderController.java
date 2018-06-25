package com.zua.ifashion.person.controller;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.entity.GoodsImg;
import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.online.entity.Orders;
import com.zua.ifashion.online.service.GoodsReviewService;
import com.zua.ifashion.online.service.GoodsService;
import com.zua.ifashion.online.service.OrderService;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.vo.OrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonOrderController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;

    @Autowired
    private OrderService orderService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    GoodsReviewService goodsReviewService;
    //订单状态
    //0.待付款
    //1待发货
    //2.待收货
    //3.待评价
    //4.已评价


    //   订单管理页面
    @RequestMapping(value = "/orders", method = RequestMethod.GET)
    public String userOrders(HttpSession session,Map<String, Object> map) {
        Integer userId= (Integer) session.getAttribute("userId");
       List<Orders>  allorderess=orderService.getAllOrders();



       List<OrderVo>  allorders=new ArrayList<>();
       List<OrderVo>  orders0=new ArrayList<>();
       List<OrderVo>  orders1=new ArrayList<>();
       List<OrderVo>  orders2=new ArrayList<>();
       List<OrderVo>  orders3=new ArrayList<>();
       List<OrderVo>  orders4=new ArrayList<>();



               for(Orders order:allorderess){
                   if(allorderess.size()>0&&allorderess!=null&&order.getUserId()==userId){
                   if(order!=null){
                       if(order.getOrdersState()==0){
                           System.out.println("number:"+order.getOrderNumber());


                           OrderVo orderVo=new OrderVo();
                           Goods goods= goodsService.selectGoodsByByGoodsId(order.getGoodsId());
                           GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goods.getGoodsId());
                           System.out.println("goodsname:"+goods.getGoodsName());
                           orderVo.setOrderNumber(order.getOrderNumber());
                           orderVo.setGoodsName(goods.getGoodsName());
                           orderVo.setColor(goods.getColor());
                           orderVo.setGoodsPrice(goods.getGoodsPrice());
                           orderVo.setOrdersDate(goods.getGoodsDate());
                           orderVo.setEndDate(order.getEndDate());
                           List<GoodsImg> goodsImgs= goodsAndImgDesignerVO.getGoodsImgList();
                           for (GoodsImg goodsImg:goodsImgs){
                               orderVo.setGoodschildImg(goodsImg.getGoodsImgurl());
                           }

                           orders0.add(orderVo);
                       }else if(order.getOrdersState()==1){
                           OrderVo orderVo1=new OrderVo();
                           Goods goods1= goodsService.selectGoodsByByGoodsId(order.getGoodsId());
                           GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goods1.getGoodsId());

                           orderVo1.setOrderNumber(order.getOrderNumber());
                           orderVo1.setGoodsName(goods1.getGoodsName());
                           orderVo1.setColor(goods1.getColor());
                           orderVo1.setGoodsPrice(goods1.getGoodsPrice());
                           orderVo1.setOrdersDate(goods1.getGoodsDate());
                           orderVo1.setEndDate(order.getEndDate());
                           List<GoodsImg> goodsImgs1= goodsAndImgDesignerVO.getGoodsImgList();
                           for (GoodsImg goodsImg:goodsImgs1){
                               orderVo1.setGoodschildImg(goodsImg.getGoodsImgurl());
                           }
                           orders1.add(orderVo1);
                       }else if(order.getOrdersState()==2){
                           OrderVo orderVo2=new OrderVo();
                           Goods goods1= goodsService.selectGoodsByByGoodsId(order.getGoodsId());
                           GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goods1.getGoodsId());

                           orderVo2.setOrderNumber(order.getOrderNumber());
                           orderVo2.setGoodsName(goods1.getGoodsName());
                           orderVo2.setColor(goods1.getColor());
                           orderVo2.setGoodsPrice(goods1.getGoodsPrice());
                           orderVo2.setOrdersDate(goods1.getGoodsDate());
                           orderVo2.setEndDate(order.getEndDate());
                           List<GoodsImg> goodsImgs1= goodsAndImgDesignerVO.getGoodsImgList();
                           for (GoodsImg goodsImg:goodsImgs1){
                               orderVo2.setGoodschildImg(goodsImg.getGoodsImgurl());
                           }
                           orders2.add(orderVo2);
                       }else if(order.getOrdersState()==3){
                           OrderVo orderVo3=new OrderVo();
                           Goods goods1= goodsService.selectGoodsByByGoodsId(order.getGoodsId());
                           GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goods1.getGoodsId());

                           orderVo3.setOrderNumber(order.getOrderNumber());
                           orderVo3.setGoodsName(goods1.getGoodsName());
                           orderVo3.setColor(goods1.getColor());
                           orderVo3.setGoodsPrice(goods1.getGoodsPrice());
                           orderVo3.setOrdersDate(goods1.getGoodsDate());
                           orderVo3.setEndDate(order.getEndDate());
                           List<GoodsImg> goodsImgs1= goodsAndImgDesignerVO.getGoodsImgList();
                           for (GoodsImg goodsImg:goodsImgs1){
                               orderVo3.setGoodschildImg(goodsImg.getGoodsImgurl());
                           }
                           orders3.add(orderVo3);
                       }else if(order.getOrdersState()==4){
                           OrderVo orderVo4=new OrderVo();
                           Goods goods1= goodsService.selectGoodsByByGoodsId(order.getGoodsId());
                           GoodsAndImgDesignerVO goodsAndImgDesignerVO=goodsService.getGoodsByGoodsId(goods1.getGoodsId());

                           orderVo4.setOrderNumber(order.getOrderNumber());
                           orderVo4.setGoodsName(goods1.getGoodsName());
                           orderVo4.setColor(goods1.getColor());
                           orderVo4.setGoodsPrice(goods1.getGoodsPrice());
                           orderVo4.setOrdersDate(goods1.getGoodsDate());
                           orderVo4.setEndDate(order.getEndDate());
                           List<GoodsImg> goodsImgs1= goodsAndImgDesignerVO.getGoodsImgList();
                           for (GoodsImg goodsImg:goodsImgs1){
                               orderVo4.setGoodschildImg(goodsImg.getGoodsImgurl());
                           }
                           orders4.add(orderVo4);
                       }
                   }
               }
           }


       // map.put("allorderess",allorderess);
        map.put("orders0",orders0);
        map.put("orders1",orders1);
        map.put("orders2",orders2);
        map.put("orders3",orders3);
        map.put("orders4",orders4);
        return "user/personal/user/orders";
    }

    @RequestMapping(value = "/goodsOrdercomment", method = RequestMethod.GET)
    public String goodsOrdercomment(HttpServletRequest request,Map<String,Object> map) {

        //
        String orderNumber=request.getParameter("orderNumber");
        Orders orders= orderService.getOrdersByOrderNumber(orderNumber);
        Goods goods=  goodsService.selectGoodsByByGoodsId(orders.getGoodsId());
        map.put("orders",orders);
        map.put("goods",goods);
        System.out.println(goods.getGoodsName());
        System.out.println(goods.getColor());
        return "user/personal/user/comment";
    }


    @RequestMapping(value = "/goodsOrdercommentInsert", method = RequestMethod.POST)
    public String goodsOrdercommentInsert(HttpSession session,Integer goodsId,Integer ordersId,String comment,String sstar,Map<String,Object> map) throws ParseException {
        Integer userId = (Integer) session.getAttribute("userId");
        System.out.println("goodsId:"+goodsId);
        System.out.println("comment:"+comment);
        System.out.println("review:"+sstar);
        GoodsReview goodsReview=new GoodsReview();
        goodsReview.setUserId(userId);
        goodsReview.setGoodsId(goodsId);
        goodsReview.setReviewContent(comment);
        goodsReview.setReviewRank(sstar);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String reviewDate = formatter.format(new Date());
        Date newreviewDate= formatter.parse(reviewDate);
        goodsReview.setReviewData(newreviewDate);
        //goodsReviewService.
        Orders orders=new Orders();
        System.out.println("ordersId:"+ordersId);
        orders.setOrderId(ordersId);
        orders.setOrdersState(4);

        int n=goodsReviewService.addGoodsReview(goodsReview);
        System.out.println("jjjjjjjjjjjjj");
        if(n>0){
            System.out.println(n+"mmmm");
            orderService.updateOrderSelective(orders);
            return "redirect:/user/orders.action";
        }else {
            System.out.println(n+"ffff");
            return "user/personal/user/comment";
        }


    }

}
