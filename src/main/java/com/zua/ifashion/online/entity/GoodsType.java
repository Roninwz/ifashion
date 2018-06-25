package com.zua.ifashion.online.entity;

public class GoodsType {
    private Integer goodstypeId;

    private String goodstypeName;

    private String goodstypeimgUrl;

    public String getGoodstypeimgUrl() {
        return goodstypeimgUrl;
    }

    public void setGoodstypeimgUrl(String goodstypeimgUrl) {
        this.goodstypeimgUrl = goodstypeimgUrl;
    }

    public Integer getGoodstypeId() {
        return goodstypeId;
    }

    public void setGoodstypeId(Integer goodstypeId) {
        this.goodstypeId = goodstypeId;
    }

    public String getGoodstypeName() {
        return goodstypeName;
    }

    public void setGoodstypeName(String goodstypeName) {
        this.goodstypeName = goodstypeName == null ? null : goodstypeName.trim();
    }

    public GoodsType(Integer goodstypeId, String goodstypeName) {
        this.goodstypeId = goodstypeId;
        this.goodstypeName = goodstypeName;
    }

    public GoodsType(Integer goodstypeId, String goodstypeName, String goodstypeimgUrl) {
        this.goodstypeId = goodstypeId;
        this.goodstypeName = goodstypeName;
        this.goodstypeimgUrl = goodstypeimgUrl;
    }

    public GoodsType() {
    }
}