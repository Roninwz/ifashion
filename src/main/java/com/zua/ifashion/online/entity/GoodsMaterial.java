package com.zua.ifashion.online.entity;

public class GoodsMaterial {
    private Integer goodsmaterialId;
    private String goodsmaterialName;

    public Integer getGoodsmaterialId() {
        return goodsmaterialId;
    }

    public void setGoodsmaterialId(Integer goodsmaterialId) {
        this.goodsmaterialId = goodsmaterialId;
    }

    public String getGoodsmaterialName() {
        return goodsmaterialName;
    }

    public void setGoodsmaterialName(String goodsmaterialName) {
        this.goodsmaterialName = goodsmaterialName;
    }

    public GoodsMaterial(Integer goodsmaterialId, String goodsmaterialName) {
        this.goodsmaterialId = goodsmaterialId;
        this.goodsmaterialName = goodsmaterialName;
    }

    public GoodsMaterial() {
    }
}
