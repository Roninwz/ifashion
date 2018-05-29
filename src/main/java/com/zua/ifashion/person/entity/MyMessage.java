package com.zua.ifashion.person.entity;

public class MyMessage {
    private Integer idMymessage;

    private String mymessageContent;

    public Integer getIdMymessage() {
        return idMymessage;
    }

    public void setIdMymessage(Integer idMymessage) {
        this.idMymessage = idMymessage;
    }

    public String getMymessageContent() {
        return mymessageContent;
    }

    public void setMymessageContent(String mymessageContent) {
        this.mymessageContent = mymessageContent == null ? null : mymessageContent.trim();
    }
}