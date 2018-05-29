package com.zua.ifashion.online.entity;

public class GoodsReview {
    private Integer idGoodsreview;

    private Integer userId;

    private Integer goodsId;

    private String reviewContent;

    private String reviewRank;

    public Integer getIdGoodsreview() {
        return idGoodsreview;
    }

    public void setIdGoodsreview(Integer idGoodsreview) {
        this.idGoodsreview = idGoodsreview;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent == null ? null : reviewContent.trim();
    }

    public String getReviewRank() {
        return reviewRank;
    }

    public void setReviewRank(String reviewRank) {
        this.reviewRank = reviewRank == null ? null : reviewRank.trim();
    }
}