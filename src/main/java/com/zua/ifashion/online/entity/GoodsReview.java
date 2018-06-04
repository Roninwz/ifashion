package com.zua.ifashion.online.entity;

public class GoodsReview {
    private Integer goodsreviewgId;

    private Integer userId;

    private Integer goodsId;

    private String reviewContent;

    private String reviewRank;

    public Integer getGoodsreviewgId() {
        return goodsreviewgId;
    }

    public void setGoodsreviewgId(Integer goodsreviewgId) {
        this.goodsreviewgId = goodsreviewgId;
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

    public GoodsReview(Integer goodsreviewgId, Integer userId, Integer goodsId, String reviewContent, String reviewRank) {
        this.goodsreviewgId = goodsreviewgId;
        this.userId = userId;
        this.goodsId = goodsId;
        this.reviewContent = reviewContent;
        this.reviewRank = reviewRank;
    }

    public GoodsReview() {
    }
}