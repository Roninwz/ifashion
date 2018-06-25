package com.zua.ifashion.person.entity;

import java.util.Date;

public class DesignerAuth {

    private Integer authId;
    private Integer userId;
    private  String cardNum;
    private String authImgurl;
    private Integer authState;
    private Date authDate;
    public Integer getAuthId() {
        return authId;
    }

    public void setAuthId(Integer authId) {
        this.authId = authId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum;
    }

    public Integer getAuthState() {
        return authState;
    }

    public void setAuthState(Integer authState) {
        this.authState = authState;
    }

    public String getAuthImgurl() {
        return authImgurl;
    }

    public void setAuthImgurl(String authImgurl) {
        this.authImgurl = authImgurl;
    }

    public Date getAuthDate() {
        return authDate;
    }

    public void setAuthDate(Date authDate) {
        this.authDate = authDate;
    }

    public DesignerAuth() {
    }

    public DesignerAuth(Integer authId, Integer userId, String cardNum, String authImgurl, Integer authState, Date authDate) {
        this.authId = authId;
        this.userId = userId;
        this.cardNum = cardNum;
        this.authImgurl = authImgurl;
        this.authState = authState;
        this.authDate = authDate;
    }
}
