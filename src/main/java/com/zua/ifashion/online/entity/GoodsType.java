package com.zua.ifashion.online.entity;

public class GoodsType {
    private Integer idGoodstype;

    private String goodstypeName;

    public Integer getIdGoodstype() {
        return idGoodstype;
    }

    public void setIdGoodstype(Integer idGoodstype) {
        this.idGoodstype = idGoodstype;
    }

    public String getGoodstypeName() {
        return goodstypeName;
    }

    public void setGoodstypeName(String goodstypeName) {
        this.goodstypeName = goodstypeName == null ? null : goodstypeName.trim();
    }
}