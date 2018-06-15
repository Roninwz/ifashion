package com.zua.ifashion.online.entity;

public class GoodsMaterialRelation {
    private Integer goodsmaterialId;
    private Integer goodsId;

    public Integer getGoodsmaterialId() {
        return goodsmaterialId;
    }

    public void setGoodsmaterialId(Integer goodsmaterialId) {
        this.goodsmaterialId = goodsmaterialId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public GoodsMaterialRelation(Integer goodsmaterialId, Integer goodsId) {
        this.goodsmaterialId = goodsmaterialId;
        this.goodsId = goodsId;
    }

    public GoodsMaterialRelation() {
    }
}
