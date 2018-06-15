package com.zua.ifashion.talk.entity;

import java.util.Date;

public class Question {
    private Integer questionId;

    private Integer userId;

    private Date questionDate;

    private Integer lookNum;

    private String questionContent;

    private Integer attentionNum;

    private Integer reportState;

    private Integer tagId;

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

    public Date getQuestionDate() {
        return questionDate;
    }

    public void setQuestionDate(Date questionDate) {
        this.questionDate = questionDate;
    }

    public Integer getLookNum() {
        return lookNum;
    }

    public void setLookNum(Integer lookNum) {
        this.lookNum = lookNum;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    public Integer getAttentionNum() {
        return attentionNum;
    }

    public void setAttentionNum(Integer attentionNum) {
        this.attentionNum = attentionNum;
    }

    public Integer getReportState() {
        return reportState;
    }

    public void setReportState(Integer reportState) {
        this.reportState = reportState;
    }

    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public Question(Integer questionId, Integer userId, Date questionDate, Integer lookNum, String questionContent, Integer attentionNum, Integer reportState, Integer tagId) {
        this.questionId = questionId;
        this.userId = userId;
        this.questionDate = questionDate;
        this.lookNum = lookNum;
        this.questionContent = questionContent;
        this.attentionNum = attentionNum;
        this.reportState = reportState;
        this.tagId = tagId;
    }

    public Question(Integer userId, Date questionDate, Integer lookNum, String questionContent, Integer attentionNum, Integer reportState, Integer tagId) {
        this.userId = userId;
        this.questionDate = questionDate;
        this.lookNum = lookNum;
        this.questionContent = questionContent;
        this.attentionNum = attentionNum;
        this.reportState = reportState;
        this.tagId = tagId;
    }

    public Question() {
    }
}