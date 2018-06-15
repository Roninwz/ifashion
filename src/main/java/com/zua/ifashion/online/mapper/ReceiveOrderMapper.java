package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.ReceiveOrder;

public interface ReceiveOrderMapper {
    public abstract int addReceiveOrder(ReceiveOrder receiveOrder);
    public abstract int addReceiveOrderSelective(ReceiveOrder receiveOrder);

}