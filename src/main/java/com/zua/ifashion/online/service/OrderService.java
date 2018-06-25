package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.Orders;

import java.util.List;

public interface OrderService {

    public abstract List<Orders> getAllOrders();

    public abstract int addOrder(Orders order);
    public abstract int addOrderSelective(Orders order);

    public abstract int updateOrder(Orders orders);
    public abstract int updateOrderSelective(Orders orders);

    public abstract int removeOrder(Integer ordersId);

    public abstract Orders getOrdersById(Integer orderId);

    public abstract Orders getOrdersByOrderNumber(String orderNumber);

}
