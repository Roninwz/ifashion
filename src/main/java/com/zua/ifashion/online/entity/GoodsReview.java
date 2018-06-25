package com.zua.ifashion.online.entity;

import java.util.Date;

public class GoodsReview {
    private Integer goodsreviewId;

    private Integer userId;

    private Integer goodsId;

    private String reviewContent;

    private String reviewRank;

    private Date reviewData;

    public Date getReviewData() {
        return reviewData;
    }

    public void setReviewData(Date reviewData) {
        this.reviewData = reviewData;
    }

    public Integer getGoodsreviewId() {
        return goodsreviewId;
    }

    public void setGoodsreviewgId(Integer goodsreviewgId) {
        this.goodsreviewId = goodsreviewId;
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

    public GoodsReview(Integer goodsreviewId, Integer userId, Integer goodsId, String reviewContent, String reviewRank) {
        this.goodsreviewId = goodsreviewId;
        this.userId = userId;
        this.goodsId = goodsId;
        this.reviewContent = reviewContent;
        this.reviewRank = reviewRank;
    }

    public GoodsReview() {
    }

    public GoodsReview(Integer goodsreviewId, Integer userId, Integer goodsId, String reviewContent, String reviewRank, Date reviewData) {
        this.goodsreviewId = goodsreviewId;
        this.userId = userId;
        this.goodsId = goodsId;
        this.reviewContent = reviewContent;
        this.reviewRank = reviewRank;
        this.reviewData = reviewData;
    }
}