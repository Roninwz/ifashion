package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Orders;
import com.zua.ifashion.online.mapper.OrdersMapper;
import com.zua.ifashion.online.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public List<Orders> getAllOrders() {
        return ordersMapper.selectAllOrders();
    }

    @Override
    public int addOrder(Orders order) {
        return ordersMapper.addOrder(order);
    }

    @Override
    public int addOrderSelective(Orders order) {
        return ordersMapper.addOrderSelective(order);
    }

    @Override
    public int updateOrder(Orders orders) {
        return ordersMapper.updateOrder(orders);
    }

    @Override
    public int updateOrderSelective(Orders orders) {
        return ordersMapper.updateOrderSelective(orders);
    }

    @Override
    public int removeOrder(Integer ordersId) {
        return ordersMapper.deleteOrder(ordersId);
    }

    @Override
    public Orders getOrdersById(Integer orderId) {
        return ordersMapper.selectOrdersById(orderId);
    }

    @Override
    public Orders getOrdersByOrderNumber(String orderNumber) {
        return ordersMapper.selectOrdersByOrderNumber(orderNumber);
    }


}
