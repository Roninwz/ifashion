package com.zua.ifashion.person.vo;

import java.util.Date;

public class OrderVo {
    private String orderNumber;
    private Date ordersDate;

    private Date endDate;

    private String goodsName;

    private Double goodsPrice;

    private String color;

    private String goodschildImg;


    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
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

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getGoodschildImg() {
        return goodschildImg;
    }

    public void setGoodschildImg(String goodschildImg) {
        this.goodschildImg = goodschildImg;
    }


    public OrderVo(String orderNumber, Date ordersDate, Date endDate, String goodsName, Double goodsPrice, String color, String goodschildImg) {
        this.orderNumber = orderNumber;
        this.ordersDate = ordersDate;
        this.endDate = endDate;
        this.goodsName = goodsName;
        this.goodsPrice = goodsPrice;
        this.color = color;
        this.goodschildImg = goodschildImg;
    }


    public OrderVo() {
    }
}
