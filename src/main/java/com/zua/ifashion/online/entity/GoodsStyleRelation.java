package com.zua.ifashion.online.entity;

public class GoodsStyleRelation {
    private Integer goodsId;
    private Integer goodsstyleId;

    public GoodsStyleRelation(Integer goodsId, Integer goodsstyleId) {
        this.goodsId = goodsId;
        this.goodsstyleId = goodsstyleId;
    }

    public GoodsStyleRelation() {
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getGoodsstyleId() {
        return goodsstyleId;
    }

    public void setGoodsstyleId(Integer goodsstyleId) {
        this.goodsstyleId = goodsstyleId;
    }
}
