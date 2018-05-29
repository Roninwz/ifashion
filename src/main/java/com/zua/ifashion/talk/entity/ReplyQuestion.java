package com.zua.ifashion.talk.entity;

import java.util.Date;

public class ReplyQuestion {
    private Integer idReplyquestion;

    private Integer questionId;

    private Integer userId;

    private Date replyDate;

    private String replyContent;

    public Integer getIdReplyquestion() {
        return idReplyquestion;
    }

    public void setIdReplyquestion(Integer idReplyquestion) {
        this.idReplyquestion = idReplyquestion;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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