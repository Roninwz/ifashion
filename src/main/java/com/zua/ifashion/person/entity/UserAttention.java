package com.zua.ifashion.person.entity;

public class UserAttention {
    private Integer attentionId;

    private Integer userId;

    public Integer getAttentionId() {
        return attentionId;
    }

    public void setAttentionId(Integer attentionId) {
        this.attentionId = attentionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public UserAttention(Integer attentionId, Integer userId) {
        this.attentionId = attentionId;
        this.userId = userId;
    }

    public UserAttention() {
    }
}