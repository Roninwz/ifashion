package com.zua.ifashion.online.controller;

import com.zua.ifashion.online.entity.Address;
import com.zua.ifashion.online.entity.Orders;
import com.zua.ifashion.online.entity.ReceiveOrder;
import com.zua.ifashion.online.service.GoodsAddressService;
import com.zua.ifashion.online.service.OrderService;
import com.zua.ifashion.online.service.ReceiveOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class PaymentController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private GoodsAddressService goodsAddressService;

    @Autowired
    private ReceiveOrderService receiveOrderService;

    @RequestMapping("online_pay")
    public String payPage(HttpServletRequest request, HttpServletResponse response,HttpSession session){
       /* String num=request.getParameter("goodsNum");
        Integer goodsNum=Integer.parseInt(num);
        request.setAttribute("goodsNum",goodsNum);
        String name=request.getParameter("goodsName");
        request.setAttribute("goodsName",name);
        String introduce=request.getParameter("introduce");
        request.setAttribute("introduce",introduce)*/;
        String address=request.getParameter("Checkout[address]");
        Integer addressId=Integer.parseInt(address);
        session.setAttribute("addressId",addressId);

        return "user/online/pay";
    }

    @RequestMapping("payreturn")
    public String payreturn(HttpServletRequest request, HttpServletResponse response, HttpSession session){
        String orderNum=request.getParameter("out_trade_no");
        Integer addressId= (Integer) session.getAttribute("addressId");
        Integer userId= (Integer) session.getAttribute("userId");
        Integer goodsId= (Integer) session.getAttribute("goodsBuyId");
        Integer desId= (Integer) session.getAttribute("desId");
        Orders order=new Orders();
        order.setUserId(userId);
        order.setOrderNumber(orderNum);
        order.setAddressId(addressId);
        order.setGoodsId(goodsId);
        order.setDesignerId(desId);
        ReceiveOrder receiveOrder=new ReceiveOrder();
        receiveOrder.setUserId(userId);
        System.out.println(receiveOrder.getUserId());
        receiveOrder.setDesignerId(desId);
        receiveOrder.setVirtueOrder(orderNum);
        receiveOrder.setOrderState(0);
        orderService.addOrderSelective(order);
        Integer orderId=order.getOrdersId();
        System.out.println(orderId);
        System.out.println(receiveOrder.getUserId());
        receiveOrder.setOrdersId(orderId);
        receiveOrderService.addReceiveOrder(receiveOrder);
        return "user/online/payreturn";
    }

    @RequestMapping("receive_address")
    public String receiveAddress(HttpServletRequest request,HttpServletResponse response,HttpSession session){
        Integer userId= (Integer) session.getAttribute("userId");
        List<Address> addressList=goodsAddressService.getAddressByUserId(userId);
        String num=request.getParameter("goodsNum");
        Integer goodsNum=Integer.parseInt(num);
        session.setAttribute("goodsNum",goodsNum);
        String goodsId=request.getParameter("goodsId");
        Integer goodsBuyId=Integer.parseInt(goodsId);
        session.setAttribute("goodsBuyId",goodsBuyId);

        String des=request.getParameter("desId");
        Integer desId= Integer.parseInt(des);//设计师的id
        session.setAttribute("desId",desId);



        String price=request.getParameter("price");
        Double goodsPrice=Double.parseDouble(price);
        session.setAttribute("goodsPrice",goodsPrice);
        request.setAttribute("addressList",addressList);
        return "user/online/receive_goods_address";
    }
}
