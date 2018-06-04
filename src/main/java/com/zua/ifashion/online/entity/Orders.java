package com.zua.ifashion.online.entity;

import java.util.Date;

public class Orders {
    private Integer ordersId;

    private Integer userId;

    private Integer designerId;

    private Integer goodsId;

    private Integer addressId;

    private Integer ordersState;

    private Date ordersDate;

    private Date endDate;

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
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

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getOrdersState() {
        return ordersState;
    }

    public void setOrdersState(Integer ordersState) {
        this.ordersState = ordersState;
    }

    public Date getOrdersDate() {
        return ordersDate;
    }

    public void setOrdersDate(Date ordersDate) {
        this.ordersDate = ordersDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Orders(Integer ordersId, Integer userId, Integer designerId, Integer goodsId, Integer addressId, Integer ordersState, Date ordersDate, Date endDate) {
        this.ordersId = ordersId;
        this.userId = userId;
        this.designerId = designerId;
        this.goodsId = goodsId;
        this.addressId = addressId;
        this.ordersState = ordersState;
        this.ordersDate = ordersDate;
        this.endDate = endDate;
    }

    public Orders() {
    }
}