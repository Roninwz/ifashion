package com.zua.ifashion.person.vo;

import com.zua.ifashion.article.entity.Complain;

public class AdminComplainVo extends Complain {

    private String username;//举报人名
    private String usernameed;//被举报人名

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsernameed() {
        return usernameed;
    }

    public void setUsernameed(String usernameed) {
        this.usernameed = usernameed;
    }

    public AdminComplainVo() {
    }

    public AdminComplainVo(Integer complainId, Integer reviewId, Integer complainUserid, Integer complainedUserid, String complainReason, Integer state, String username, String usernameed) {
        super(complainId, reviewId, complainUserid, complainedUserid, complainReason, state);
        this.username = username;
        this.usernameed = usernameed;
    }
}
