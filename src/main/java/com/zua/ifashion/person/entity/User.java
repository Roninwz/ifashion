package com.zua.ifashion.person.entity;

import java.util.Date;

public class User {
    private Integer userId;

    private Integer rankId;

    private String username;

    private String password;

    private String tel;

    private String email;

    private String sex;

    private Integer age;

    private Date birth;

    private Integer userMark;

    private Integer score;

    private String userImgurl;

    private String userIntroduce;

    private Date registerDate;

    private String userTag;

    private Integer state;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRankId() {
        return rankId;
    }

    public void setRankId(Integer rankId) {
        this.rankId = rankId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Integer getUserMark() {
        return userMark;
    }

    public void setUserMark(Integer userMark) {
        this.userMark = userMark;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getUserImgurl() {
        return userImgurl;
    }

    public void setUserImgurl(String userImgurl) {
        this.userImgurl = userImgurl == null ? null : userImgurl.trim();
    }

    public String getUserIntroduce() {
        return userIntroduce;
    }

    public void setUserIntroduce(String userIntroduce) {
        this.userIntroduce = userIntroduce == null ? null : userIntroduce.trim();
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String getUserTag() {
        return userTag;
    }

    public void setUserTag(String userTag) {
        this.userTag = userTag == null ? null : userTag.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public User(Integer userId, Integer rankId, String username, String password, String tel, String email, String sex, Integer age, Date birth, Integer userMark, Integer score, String userImgurl, String userIntroduce, Date registerDate, String userTag, Integer state) {
        this.userId = userId;
        this.rankId = rankId;
        this.username = username;
        this.password = password;
        this.tel = tel;
        this.email = email;
        this.sex = sex;
        this.age = age;
        this.birth = birth;
        this.userMark = userMark;
        this.score = score;
        this.userImgurl = userImgurl;
        this.userIntroduce = userIntroduce;
        this.registerDate = registerDate;
        this.userTag = userTag;
        this.state = state;
    }

    public User() {
    }
}