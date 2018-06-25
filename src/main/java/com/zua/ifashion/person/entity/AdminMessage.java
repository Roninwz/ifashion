package com.zua.ifashion.person.entity;

public class AdminMessage {
    private  Integer adminMessageId;
    private  Integer adminId;
    private  String adminMessageContent;
    private Integer messageState;//0是未读，1是已读

    public Integer getAdminMessageId() {
        return adminMessageId;
    }

    public void setAdminMessageId(Integer adminMessageId) {
        this.adminMessageId = adminMessageId;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminMessageContent() {
        return adminMessageContent;
    }

    public void setAdminMessageContent(String adminMessageContent) {
        this.adminMessageContent = adminMessageContent;
    }

    public Integer getMessageState() {
        return messageState;
    }

    public void setMessageState(Integer messageState) {
        this.messageState = messageState;
    }


    public AdminMessage(Integer adminMessageId, Integer adminId, String adminMessageContent, Integer messageState) {
        this.adminMessageId = adminMessageId;
        this.adminId = adminId;
        this.adminMessageContent = adminMessageContent;
        this.messageState = messageState;
    }

    public AdminMessage() {
    }
}
