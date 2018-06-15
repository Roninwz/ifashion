package com.zua.ifashion.talk.entity;

import java.util.Date;

public class ReplyQuestion {
    private Integer replyquestionId;

    private Integer questionId;

    private Integer userId;

    private Date replyDate;

    private String replyContent;

    private Integer zanNum;

    private Integer againstNum;

    private Integer reportState;

    public Integer getReplyquestionId() {
        return replyquestionId;
    }

    public void setReplyquestionId(Integer replyquestionId) {
        this.replyquestionId = replyquestionId;
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

    public Integer getZanNum() {
        return zanNum;
    }

    public void setZanNum(Integer zanNum) {
        this.zanNum = zanNum;
    }

    public Integer getAgainstNum() {
        return againstNum;
    }

    public void setAgainstNum(Integer againstNum) {
        this.againstNum = againstNum;
    }

    public Integer getReportState() {
        return reportState;
    }

    public void setReportState(Integer reportState) {
        this.reportState = reportState;
    }

    public ReplyQuestion(Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState) {
        this.questionId = questionId;
        this.userId = userId;
        this.replyDate = replyDate;
        this.replyContent = replyContent;
        this.zanNum = zanNum;
        this.againstNum = againstNum;
        this.reportState = reportState;
    }

    public ReplyQuestion(Integer replyquestionId, Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState) {
        this.replyquestionId = replyquestionId;
        this.questionId = questionId;
        this.userId = userId;
        this.replyDate = replyDate;
        this.replyContent = replyContent;
        this.zanNum = zanNum;
        this.againstNum = againstNum;
        this.reportState = reportState;
    }

    public ReplyQuestion() {
    }
}