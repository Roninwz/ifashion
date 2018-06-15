package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.UserAttention;

public class UserAttentionVo extends UserAttention {

    private String username;
    private String userImgurl;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserImgurl() {
        return userImgurl;
    }

    public void setUserImgurl(String userImgurl) {
        this.userImgurl = userImgurl;
    }

    public UserAttentionVo(Integer attentionId, Integer userId, Integer userdId, String username, String userImgurl) {
        super(attentionId, userId, userdId);
        this.username = username;
        this.userImgurl = userImgurl;
    }

    public UserAttentionVo(String username, String userImgurl) {
        this.username = username;
        this.userImgurl = userImgurl;
    }

    public UserAttentionVo(Integer attentionId, Integer userId, Integer userdId) {
        super(attentionId, userId, userdId);
    }

    public UserAttentionVo() {
    }
}
