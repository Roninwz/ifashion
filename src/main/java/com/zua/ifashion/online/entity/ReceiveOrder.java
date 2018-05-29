package com.zua.ifashion.online.entity;

import java.util.Date;

public class ReceiveOrder {
    private Integer idReceiveorder;

    private Integer userId;

    private Integer designerId;

    private Integer ordersId;

    private Date startDate;

    private Date endState;

    private Date ordersDate;

    private String trueOrder;

    public Integer getIdReceiveorder() {
        return idReceiveorder;
    }

    public void setIdReceiveorder(Integer idReceiveorder) {
        this.idReceiveorder = idReceiveorder;
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
        return endState;
    }

    public void setEndState(Date endState) {
        this.endState = endState;
    }

    public Date getOrdersDate() {
        return ordersDate;
    }

    public void setOrdersDate(Date ordersDate) {
        this.ordersDate = ordersDate;
    }

    public String getTrueOrder() {
        return trueOrder;
    }

    public void setTrueOrder(String trueOrder) {
        this.trueOrder = trueOrder == null ? null : trueOrder.trim();
    }
}