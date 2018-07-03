package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.Orders;
import com.zua.ifashion.online.entity.ReceiveOrder;

public interface UpdateOrderStateService {
    public abstract void updateOrderState(Orders orders, ReceiveOrder receiveOrder);
}
