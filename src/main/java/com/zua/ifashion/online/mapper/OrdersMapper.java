package com.zua.ifashion.online.mapper;


import com.zua.ifashion.online.entity.Orders;

import java.util.List;

public interface OrdersMapper {
    public abstract int addOrder(Orders order);
    public abstract int addOrderSelective(Orders order);
    public abstract List<Orders> selectAllOrders();
    public abstract int updateOrder(Orders orders);
    public abstract int updateOrderSelective(Orders orders);
    public abstract int deleteOrder(Integer orderId);
    public abstract Orders selectOrdersById(Integer orderId);
    public abstract Orders selectOrdersByOrderNumber(String orderNumber);

}