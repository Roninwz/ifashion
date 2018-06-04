package com.zua.ifashion.talk.entity;

import java.util.Date;

public class DiscussReply {
    private Integer discussreplyId;

    private Integer discussId;

    private Integer userId;

    private Integer discussreplyZan;

    private Date discussreplyDate;

    private String discussreplyContent;

    public DiscussReply() {
    }

    public DiscussReply(Integer discussreplyId, Integer discussId, Integer userId, Integer discussreplyZan, Date discussreplyDate, String discussreplyContent) {
        this.discussreplyId = discussreplyId;
        this.discussId = discussId;
        this.userId = userId;
        this.discussreplyZan = discussreplyZan;
        this.discussreplyDate = discussreplyDate;
        this.discussreplyContent = discussreplyContent;
    }

    public Integer getDiscussreplyId() {
        return discussreplyId;
    }

    public void setDiscussreplyId(Integer discussreplyId) {
        this.discussreplyId = discussreplyId;
    }

    public Integer getDiscussId() {
        return discussId;
    }

    public void setDiscussId(Integer discussId) {
        this.discussId = discussId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getDiscussreplyZan() {
        return discussreplyZan;
    }

    public void setDiscussreplyZan(Integer discussreplyZan) {
        this.discussreplyZan = discussreplyZan;
    }

    public Date getDiscussreplyDate() {
        return discussreplyDate;
    }

    public void setDiscussreplyDate(Date discussreplyDate) {
        this.discussreplyDate = discussreplyDate;
    }

    public String getDiscussreplyContent() {
        return discussreplyContent;
    }

    public void setDiscussreplyContent(String discussreplyContent) {
        this.discussreplyContent = discussreplyContent == null ? null : discussreplyContent.trim();
    }
}