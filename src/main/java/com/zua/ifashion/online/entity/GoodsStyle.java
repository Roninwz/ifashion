package com.zua.ifashion.online.entity;

public class GoodsStyle {
    private Integer goodsstyleId;
    private String goodsstyleName;

    public Integer getGoodsstyleId() {
        return goodsstyleId;
    }

    public void setGoodsstyleId(Integer goodsstyleId) {
        this.goodsstyleId = goodsstyleId;
    }

    public String getGoodsstyleName() {
        return goodsstyleName;
    }

    public void setGoodsstyleName(String goodsstyleName) {
        this.goodsstyleName = goodsstyleName;
    }


    public GoodsStyle() {
    }

    public GoodsStyle(Integer goodsstyleId, String goodsstyleName) {
        this.goodsstyleId = goodsstyleId;
        this.goodsstyleName = goodsstyleName;
    }
}
