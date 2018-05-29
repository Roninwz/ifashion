package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.Orders;

public interface OrdersMapper {
    int deleteByPrimaryKey(Integer idOrders);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Integer idOrders);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
}