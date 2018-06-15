package com.zua.ifashion.online.mapper;


import com.zua.ifashion.online.entity.Orders;

public interface OrdersMapper {
    public abstract int addOrder(Orders order);
    public abstract int addOrderSelective(Orders order);

}