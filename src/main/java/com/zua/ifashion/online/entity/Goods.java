package com.zua.ifashion.online.entity;

import java.util.Date;

public class Goods {
    private Integer goodsId;

    private Integer userId;

    private Integer goodstypeId;

    private Integer goodschildId;

    private String goodsName;

    private Double goodsPrice;

    private Date goodsDate;

    private Integer goodsCount;

    private Integer goodsSale;

    private Integer reviewNum;

    private String size;

    private String color;

    private String goodsIntroduce;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodstypeId() {
        return goodstypeId;
    }

    public void setGoodstypeId(Integer goodstypeId) {
        this.goodstypeId = goodstypeId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Date getGoodsDate() {
        return goodsDate;
    }

    public void setGoodsDate(Date goodsDate) {
        this.goodsDate = goodsDate;
    }

    public Integer getGoodsCount() {
        return goodsCount;
    }

    public void setGoodsCount(Integer goodsCount) {
        this.goodsCount = goodsCount;
    }

    public Integer getGoodsSale() {
        return goodsSale;
    }

    public void setGoodsSale(Integer goodsSale) {
        this.goodsSale = goodsSale;
    }

    public Integer getReviewNum() {
        return reviewNum;
    }

    public void setReviewNum(Integer reviewNum) {
        this.reviewNum = reviewNum;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color == null ? null : color.trim();
    }

    public String getGoodsIntroduce() {
        return goodsIntroduce;
    }

    public void setGoodsIntroduce(String goodsIntroduce) {
        this.goodsIntroduce = goodsIntroduce == null ? null : goodsIntroduce.trim();
    }

    public Goods(Integer goodsId, Integer userId, Integer goodstypeId, String goodsName, Double goodsPrice, Date goodsDate, Integer goodsCount, Integer goodsSale, Integer reviewNum, String size, String color, String goodsIntroduce) {
        this.goodsId = goodsId;
        this.userId = userId;
        this.goodstypeId = goodstypeId;
        this.goodsName = goodsName;
        this.goodsPrice = goodsPrice;
        this.goodsDate = goodsDate;
        this.goodsCount = goodsCount;
        this.goodsSale = goodsSale;
        this.reviewNum = reviewNum;
        this.size = size;
        this.color = color;
        this.goodsIntroduce = goodsIntroduce;
    }

    public Goods() {
    }

    public Integer getGoodschildId() {
        return goodschildId;
    }

    public void setGoodschildId(Integer goodschildId) {
        this.goodschildId = goodschildId;
    }
}