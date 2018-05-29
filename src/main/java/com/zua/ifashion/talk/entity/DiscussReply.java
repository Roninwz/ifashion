package com.zua.ifashion.talk.entity;

import java.util.Date;

public class DiscussReply {
    private Integer idDiscussreply;

    private Integer discussId;

    private Integer userId;

    private Integer discussreplyZan;

    private Date discussreplyDate;

    private String discussreplyContent;

    public Integer getIdDiscussreply() {
        return idDiscussreply;
    }

    public void setIdDiscussreply(Integer idDiscussreply) {
        this.idDiscussreply = idDiscussreply;
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