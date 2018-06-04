package com.zua.ifashion.person.entity;

public class MyMessage {
    private Integer mymessageId;

    private String mymessageContent;

    public Integer getMymessageId() {
        return mymessageId;
    }

    public void setMymessageId(Integer mymessageId) {
        this.mymessageId = mymessageId;
    }

    public String getMymessageContent() {
        return mymessageContent;
    }

    public void setMymessageContent(String mymessageContent) {
        this.mymessageContent = mymessageContent == null ? null : mymessageContent.trim();
    }

    public MyMessage(Integer mymessageId, String mymessageContent) {
        this.mymessageId = mymessageId;
        this.mymessageContent = mymessageContent;
    }

    public MyMessage() {
    }
}