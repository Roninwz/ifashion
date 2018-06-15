package com.zua.ifashion.person.entity;

public class UserAttention {
    private Integer attentionId;

    private Integer userId;

    private Integer userdId;

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

    public Integer getUserdId() {
        return userdId;
    }

    public void setUserdId(Integer userdId) {
        this.userdId = userdId;
    }

    public UserAttention(Integer attentionId, Integer userId, Integer userdId) {
        this.attentionId = attentionId;
        this.userId = userId;
        this.userdId = userdId;
    }

    public UserAttention() {
    }
}