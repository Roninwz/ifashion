package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.ReceiveOrder;

public interface ReceiveOrderMapper {
    int deleteByPrimaryKey(Integer idReceiveorder);

    int insert(ReceiveOrder record);

    int insertSelective(ReceiveOrder record);

    ReceiveOrder selectByPrimaryKey(Integer idReceiveorder);

    int updateByPrimaryKeySelective(ReceiveOrder record);

    int updateByPrimaryKey(ReceiveOrder record);
}