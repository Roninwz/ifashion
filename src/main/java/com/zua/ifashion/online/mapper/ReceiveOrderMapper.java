package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.ReceiveOrder;

import java.util.List;

public interface ReceiveOrderMapper {
    public abstract int addReceiveOrder(ReceiveOrder receiveOrder);
    public abstract int addReceiveOrderSelective(ReceiveOrder receiveOrder);

    public List<ReceiveOrder> selectReceiveByDesignerId(Integer designerId);
    public ReceiveOrder selectReceiveByOrdersId(Integer ordersId);
    public abstract int updateReceiveOrder(ReceiveOrder receiveOrder);
}