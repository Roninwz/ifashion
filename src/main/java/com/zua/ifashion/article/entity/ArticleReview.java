package com.zua.ifashion.article.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ArticleReview {
    private Integer reviewId;

    private Integer articleId;

    private Integer userId;

    private Integer reviewZan;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date reviewDate;

    private String reviewContent;

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getReviewZan() {
        return reviewZan;
    }

    public void setReviewZan(Integer reviewZan) {
        this.reviewZan = reviewZan;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent == null ? null : reviewContent.trim();
    }

    public ArticleReview(Integer reviewId, Integer articleId, Integer userId, Integer reviewZan, Date reviewDate, String reviewContent) {
        this.reviewId = reviewId;
        this.articleId = articleId;
        this.userId = userId;
        this.reviewZan = reviewZan;
        this.reviewDate = reviewDate;
        this.reviewContent = reviewContent;
    }


    public ArticleReview() {
    }
}