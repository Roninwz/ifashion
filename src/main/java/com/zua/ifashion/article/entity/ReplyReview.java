package com.zua.ifashion.article.entity;

import java.util.Date;

public class ReplyReview {
    private Integer idReplyreview;

    private Integer reviewId;

    private Integer userId;

    private Integer useredId;

    private Date replyDate;

    private String replyContent;

    public Integer getIdReplyreview() {
        return idReplyreview;
    }

    public void setIdReplyreview(Integer idReplyreview) {
        this.idReplyreview = idReplyreview;
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
}