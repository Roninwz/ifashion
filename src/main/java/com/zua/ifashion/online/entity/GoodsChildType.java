package com.zua.ifashion.online.entity;

public class GoodsChildType {
    private Integer goodschildId;
    private String goodschildName;
    private Integer goodstypeId;

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

    public GoodsChildType(Integer goodschildId, String goodschildName, Integer goodstypeId) {
        this.goodschildId = goodschildId;
        this.goodschildName = goodschildName;
        this.goodstypeId = goodstypeId;
    }

    public GoodsChildType() {
    }
}
