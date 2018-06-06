package com.zua.ifashion.talk.entity;

import java.util.Date;

public class Discuss {
    private Integer discussId;

    private Integer topicId;

    private Integer userId;

    private Date discussDate;

    private Integer reviewNum;

    private Integer lookNum;

    private String discussContent;

    public Integer getDiscussId() {
        return discussId;
    }

    public void setDiscussId(Integer discussId) {
        this.discussId = discussId;
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

    public Discuss(Integer discussId, Integer topicId, Integer userId,Date discussDate, Integer reviewNum, Integer lookNum, String discussContent) {
        this.discussId = discussId;
        this.topicId = topicId;
        this.userId = userId;
        this.discussDate = discussDate;
        this.reviewNum = reviewNum;
        this.lookNum = lookNum;
        this.discussContent = discussContent;
    }

    public Discuss(Integer topicId, Integer userId, Date discussDate, Integer reviewNum, Integer lookNum, String discussContent) {
        this.topicId = topicId;
        this.userId = userId;
        this.discussDate = discussDate;
        this.reviewNum = reviewNum;
        this.lookNum = lookNum;
        this.discussContent = discussContent;
    }

    public Discuss() {
    }
}