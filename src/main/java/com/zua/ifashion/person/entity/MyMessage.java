package com.zua.ifashion.person.entity;

import java.util.Date;

public class MyMessage {
    private Integer mymessageId;

    private  Integer userId;

    private String mymessageContent;

    private Integer messageState;//0是未读，1是已读

    private Date messageDate;

    public Integer getMymessageId() {
        return mymessageId;
    }

    public void setMymessageId(Integer mymessageId) {
        this.mymessageId = mymessageId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getMymessageContent() {
        return mymessageContent;
    }

    public void setMymessageContent(String mymessageContent) {
        this.mymessageContent = mymessageContent == null ? null : mymessageContent.trim();
    }


    public Integer getMessageState() {
        return messageState;
    }

    public void setMessageState(Integer messageState) {
        this.messageState = messageState;
    }

    public Date getMessageDate() {
        return messageDate;
    }

    public void setMessageDate(Date messageDate) {
        this.messageDate = messageDate;
    }


    public MyMessage(Integer mymessageId, Integer userId, String mymessageContent, Integer messageState, Date messageDate) {
        this.mymessageId = mymessageId;
        this.userId = userId;
        this.mymessageContent = mymessageContent;
        this.messageState = messageState;
        this.messageDate = messageDate;
    }

    public MyMessage() {
    }
}