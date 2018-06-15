package com.zua.ifashion.person.entity;

public class MyMessage {
    private Integer mymessageId;

    private  Integer userId;

    private String mymessageContent;

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

    public MyMessage(Integer mymessageId, Integer userId, String mymessageContent) {
        this.mymessageId = mymessageId;
        this.userId = userId;
        this.mymessageContent = mymessageContent;
    }

    public MyMessage() {
    }
}