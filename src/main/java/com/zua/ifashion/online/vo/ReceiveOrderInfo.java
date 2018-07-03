package com.zua.ifashion.online.vo;

import java.util.Date;

public class ReceiveOrderInfo {
    private Integer ordersId;

    public ReceiveOrderInfo(Integer ordersId, String orderNumber, String receiveUserName, Integer receiveUserId, String tel, String addressContent, Double goodsPrice, Integer ordersState, Date ordersDate, Date endDate, Date startDate, String goodsImgurl, String goodsName, String color, String size, String goodschildName) {
        this.ordersId = ordersId;
        this.orderNumber = orderNumber;
        this.receiveUserName = receiveUserName;
        this.receiveUserId = receiveUserId;
        this.tel = tel;
        this.addressContent = addressContent;
        this.goodsPrice = goodsPrice;
        this.ordersState = ordersState;
        this.ordersDate = ordersDate;
        this.endDate = endDate;
        this.startDate = startDate;
        this.goodsImgurl = goodsImgurl;
        this.goodsName = goodsName;
        this.color = color;
        this.size = size;
        this.goodschildName = goodschildName;
    }

    public Integer getOrdersId() {

        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }

    private String orderNumber;//订单编号
    private String receiveUserName;//收件人
    private Integer receiveUserId;//收件人
    private String tel;//收件人电话
    private String addressContent;//收件人地址
    private Double goodsPrice;//订单金额
    private Integer ordersState;//订单状态
    private Date ordersDate;//订单时间
    private Date endDate;//结束时间
    private Date startDate;//开始时间
    private String goodsImgurl;//商品图片
    private String goodsName;//产品名称
    private String color;//颜色
    private String size;//尺码
    private String goodschildName;//类型名称

    private String trueOrder;

    public ReceiveOrderInfo(Integer ordersId, String orderNumber, String receiveUserName, Integer receiveUserId, String tel, String addressContent, Double goodsPrice, Integer ordersState, Date ordersDate, Date endDate, Date startDate, String goodsImgurl, String goodsName, String color, String size, String goodschildName, String trueOrder) {
        this.ordersId = ordersId;
        this.orderNumber = orderNumber;
        this.receiveUserName = receiveUserName;
        this.receiveUserId = receiveUserId;
        this.tel = tel;
        this.addressContent = addressContent;
        this.goodsPrice = goodsPrice;
        this.ordersState = ordersState;
        this.ordersDate = ordersDate;
        this.endDate = endDate;
        this.startDate = startDate;
        this.goodsImgurl = goodsImgurl;
        this.goodsName = goodsName;
        this.color = color;
        this.size = size;
        this.goodschildName = goodschildName;
        this.trueOrder = trueOrder;
    }

    public String getTrueOrder() {

        return trueOrder;
    }

    public void setTrueOrder(String trueOrder) {
        this.trueOrder = trueOrder;
    }

    public String getGoodschildName() {
        return goodschildName;
    }

    public void setGoodschildName(String goodschildName) {
        this.goodschildName = goodschildName;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getReceiveUserName() {
        return receiveUserName;
    }

    public void setReceiveUserName(String receiveUserName) {
        this.receiveUserName = receiveUserName;
    }

    public Integer getReceiveUserId() {
        return receiveUserId;
    }

    public void setReceiveUserId(Integer receiveUserId) {
        this.receiveUserId = receiveUserId;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddressContent() {
        return addressContent;
    }

    public void setAddressContent(String addressContent) {
        this.addressContent = addressContent;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getGoodsImgurl() {
        return goodsImgurl;
    }

    public void setGoodsImgurl(String goodsImgurl) {
        this.goodsImgurl = goodsImgurl;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public ReceiveOrderInfo(String orderNumber, String receiveUserName, Integer receiveUserId, String tel, String addressContent, Double goodsPrice, Integer ordersState, Date ordersDate, Date endDate, Date startDate, String goodsImgurl, String goodsName, String color, String size, String goodschildName) {
        this.orderNumber = orderNumber;
        this.receiveUserName = receiveUserName;
        this.receiveUserId = receiveUserId;
        this.tel = tel;
        this.addressContent = addressContent;
        this.goodsPrice = goodsPrice;
        this.ordersState = ordersState;
        this.ordersDate = ordersDate;
        this.endDate = endDate;
        this.startDate = startDate;
        this.goodsImgurl = goodsImgurl;
        this.goodsName = goodsName;
        this.color = color;
        this.size = size;
        this.goodschildName = goodschildName;
    }

    public ReceiveOrderInfo() {
    }
}
