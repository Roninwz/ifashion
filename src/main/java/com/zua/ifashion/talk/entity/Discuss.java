package com.zua.ifashion.talk.entity;

import java.util.Date;

public class Discuss {
    private Integer idDiscuss;

    private Integer topicId;

    private Integer userId;

    private String discussTitle;

    private String discussImgurl;

    private Date discussDate;

    private Integer reviewNum;

    private Integer lookNum;

    private String discussContent;

    public Integer getIdDiscuss() {
        return idDiscuss;
    }

    public void setIdDiscuss(Integer idDiscuss) {
        this.idDiscuss = idDiscuss;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getDiscussTitle() {
        return discussTitle;
    }

    public void setDiscussTitle(String discussTitle) {
        this.discussTitle = discussTitle == null ? null : discussTitle.trim();
    }

    public String getDiscussImgurl() {
        return discussImgurl;
    }

    public void setDiscussImgurl(String discussImgurl) {
        this.discussImgurl = discussImgurl == null ? null : discussImgurl.trim();
    }

    public Date getDiscussDate() {
        return discussDate;
    }

    public void setDiscussDate(Date discussDate) {
        this.discussDate = discussDate;
    }

    public Integer getReviewNum() {
        return reviewNum;
    }

    public void setReviewNum(Integer reviewNum) {
        this.reviewNum = reviewNum;
    }

    public Integer getLookNum() {
        return lookNum;
    }

    public void setLookNum(Integer lookNum) {
        this.lookNum = lookNum;
    }

    public String getDiscussContent() {
        return discussContent;
    }

    public void setDiscussContent(String discussContent) {
        this.discussContent = discussContent == null ? null : discussContent.trim();
    }
}