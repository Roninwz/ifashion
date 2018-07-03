package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Orders;
import com.zua.ifashion.online.entity.ReceiveOrder;
import com.zua.ifashion.online.service.OrderService;
import com.zua.ifashion.online.service.ReceiveOrderService;
import com.zua.ifashion.online.service.UpdateOrderStateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateOrderStateServiceImpl implements UpdateOrderStateService {
    @Autowired
    private ReceiveOrderService receiveOrderService;

    @Autowired
    private OrderService orderService;
    @Override
    public void updateOrderState(Orders orders,ReceiveOrder receiveOrder) {

        orderService.updateOrderSelective(orders);

        receiveOrderService.updateReceiveOrder(receiveOrder);
    }
}
