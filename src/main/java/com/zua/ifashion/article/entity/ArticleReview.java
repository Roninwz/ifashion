package com.zua.ifashion.article.entity;

import java.util.Date;

public class ArticleReview {
    private Integer idReview;

    private Integer articleId;

    private Integer userId;

    private Integer reviewZan;

    private Date reviewDate;

    private String reviewContent;

    public Integer getIdReview() {
        return idReview;
    }

    public void setIdReview(Integer idReview) {
        this.idReview = idReview;
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
}