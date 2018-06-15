package com.zua.ifashion.online.entity;

import java.util.Date;

public class ReceiveOrder {
    private Integer receiveorderId;

    private Integer userId;

    private Integer designerId;

    private Integer ordersId;

    private Date startDate;

    private Date endDate;

    private int orderState;     //订单状态   0已接单 1已发货  2用户确认已收货

    private String trueOrder;   //真实订单号

    private String virtulOrder;  //虚拟订单号

    public Integer getReceiveorderId() {
        return receiveorderId;
    }

    public void setReceiveorderId(Integer receiveorderId) {
        this.receiveorderId = receiveorderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getDesignerId() {
        return designerId;
    }

    public void setDesignerId(Integer designerId) {
        this.designerId = designerId;
    }

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndState() {
        return endDate;
    }

    public void setEndState(Date endDate) {
        this.endDate = endDate;
    }

    public int getOrderState() {
        return orderState;
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public String getTrueOrder() {
        return trueOrder;
    }

    public void setTrueOrder(String trueOrder) {
        this.trueOrder = trueOrder;
    }

    public String getVirtulOrder() {
        return virtulOrder;
    }

    public void setVirtulOrder(String virtulOrder) {
        this.virtulOrder = virtulOrder;
    }

    public ReceiveOrder(Integer receiveorderId, Integer userId, Integer designerId, Integer ordersId, Date startDate, Date endDate, int orderState, String trueOrder, String virtulOrder) {
        this.receiveorderId = receiveorderId;
        this.userId = userId;
        this.designerId = designerId;
        this.ordersId = ordersId;
        this.startDate = startDate;
        this.endDate = endDate;
        this.orderState = orderState;
        this.trueOrder = trueOrder;
        this.virtulOrder = virtulOrder;
    }

    public ReceiveOrder() {
    }
}