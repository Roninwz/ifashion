package com.zua.ifashion.person.entity;

public class DesignerAuth {

    private Integer authId;
    private Integer userId;
    private  String cardNum;
    private String authImgurl;
    private Integer authState;

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


    public DesignerAuth() {
    }

    public DesignerAuth(Integer authId, Integer userId, String cardNum, String authImgurl, Integer authState) {
        this.authId = authId;
        this.userId = userId;
        this.cardNum = cardNum;
        this.authImgurl = authImgurl;
        this.authState = authState;
    }
}
