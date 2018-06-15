package com.zua.ifashion.online.entity;

public class GoodsImg {
    private Integer goodsimgId;

    private Integer goodsId;

    private String goodsImgurl;

    private String mask;

    public String getMask() {
        return mask;
    }

    public void setMask(String mask) {
        this.mask = mask;
    }

    public Integer getGoodsimgId() {
        return goodsimgId;
    }

    public void setGoodsimgId(Integer goodsimgId) {
        this.goodsimgId = goodsimgId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsImgurl() {
        return goodsImgurl;
    }

    public void setGoodsImgurl(String goodsImgurl) {
        this.goodsImgurl = goodsImgurl == null ? null : goodsImgurl.trim();
    }

    public GoodsImg(Integer goodsimgId, Integer goodsId, String goodsImgurl, String mask) {
        this.goodsimgId = goodsimgId;
        this.goodsId = goodsId;
        this.goodsImgurl = goodsImgurl;
        this.mask = mask;
    }

    public GoodsImg() {
    }
}