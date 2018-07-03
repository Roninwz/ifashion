package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;

public class UserAttentionVo2 extends UserAttention {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UserAttentionVo2(Integer attentionId, Integer userId, Integer userdId, User user) {
        super(attentionId, userId, userdId);
        this.user = user;
    }

    public UserAttentionVo2(User user) {
        this.user = user;
    }

    public UserAttentionVo2() {
    }
}
