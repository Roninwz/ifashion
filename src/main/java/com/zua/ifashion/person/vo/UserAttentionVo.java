package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;

public class UserAttentionVo extends UserAttention {

    private   User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UserAttentionVo(Integer attentionId, Integer userId, User user) {
        super(attentionId, userId);
        this.user = user;
    }

}
