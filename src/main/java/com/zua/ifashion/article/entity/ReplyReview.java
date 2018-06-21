package com.zua.ifashion.article.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ReplyReview {
    private Integer replyreviewId;

    private Integer reviewId;

    private Integer articleId;

    private Integer userId;

    private Integer useredId;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date replyDate;

    private String replyContent;

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getReplyreviewId() {
        return replyreviewId;
    }

    public void setReplyreviewId(Integer replyreviewId) {
        this.replyreviewId = replyreviewId;
    }

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUseredId() {
        return useredId;
    }

    public void setUseredId(Integer useredId) {
        this.useredId = useredId;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent == null ? null : replyContent.trim();
    }

    public ReplyReview(Integer replyreviewId, Integer reviewId, Integer articleId, Integer userId, Integer useredId, Date replyDate, String replyContent) {
        this.replyreviewId = replyreviewId;
        this.reviewId = reviewId;
        this.articleId = articleId;
        this.userId = userId;
        this.useredId = useredId;
        this.replyDate = replyDate;
        this.replyContent = replyContent;
    }

    public ReplyReview() {
    }
}