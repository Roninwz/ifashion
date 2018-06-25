package com.zua.ifashion.online.entity;

public class GoodsChildType {
    private Integer goodschildId;
    private String goodschildName;
    private Integer goodstypeId;
    private String goodschildImg;

    public Integer getGoodschildId() {
        return goodschildId;
    }

    public void setGoodschildId(Integer goodschildId) {
        this.goodschildId = goodschildId;
    }

    public String getGoodschildName() {
        return goodschildName;
    }

    public void setGoodschildName(String goodschildName) {
        this.goodschildName = goodschildName;
    }

    public Integer getGoodstypeId() {
        return goodstypeId;
    }

    public void setGoodstypeId(Integer goodstypeId) {
        this.goodstypeId = goodstypeId;
    }

    public String getGoodschildImg() {
        return goodschildImg;
    }

    public void setGoodschildImg(String goodschildImg) {
        this.goodschildImg = goodschildImg;
    }

    public GoodsChildType(Integer goodschildId, String goodschildName, Integer goodstypeId) {
        this.goodschildId = goodschildId;
        this.goodschildName = goodschildName;
        this.goodstypeId = goodstypeId;
    }

    public GoodsChildType() {
    }

    public GoodsChildType(Integer goodschildId, String goodschildName, Integer goodstypeId, String goodschildImg) {
        this.goodschildId = goodschildId;
        this.goodschildName = goodschildName;
        this.goodstypeId = goodstypeId;
        this.goodschildImg = goodschildImg;
    }
}
