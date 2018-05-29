package com.zua.ifashion.online.entity;

public class GoodsImg {
    private Integer idGoodsimg;

    private Integer goodsId;

    private String goodsImgurl;

    public Integer getIdGoodsimg() {
        return idGoodsimg;
    }

    public void setIdGoodsimg(Integer idGoodsimg) {
        this.idGoodsimg = idGoodsimg;
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
}