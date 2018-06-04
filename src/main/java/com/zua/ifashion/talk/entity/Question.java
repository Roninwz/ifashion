package com.zua.ifashion.talk.entity;

import java.util.Date;

public class Question {
    private Integer questionId;

    private Integer userId;

    private String questionTitle;

    private Date questionDate;

    private Integer lookNum;

    private Integer replyNum;

    private String questionContent;

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

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle == null ? null : questionTitle.trim();
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

    public Integer getReplyNum() {
        return replyNum;
    }

    public void setReplyNum(Integer replyNum) {
        this.replyNum = replyNum;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent == null ? null : questionContent.trim();
    }

    public Question(Integer questionId, Integer userId, String questionTitle, Date questionDate, Integer lookNum, Integer replyNum, String questionContent) {
        this.questionId = questionId;
        this.userId = userId;
        this.questionTitle = questionTitle;
        this.questionDate = questionDate;
        this.lookNum = lookNum;
        this.replyNum = replyNum;
        this.questionContent = questionContent;
    }

    public Question() {
    }
}