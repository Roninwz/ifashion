package com.zua.ifashion.talk.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Topic {
    private Integer topicId;

    private Integer userId;

    private String topicImgurl;

    private Integer topicPeople;

    private Integer lookNum;

    private String topicContent;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date topicStart;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date topicEnd;

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

    public String getTopicImgurl() {
        return topicImgurl;
    }

    public void setTopicImgurl(String topicImgurl) {
        this.topicImgurl = topicImgurl == null ? null : topicImgurl.trim();
    }

    public Integer getTopicPeople() {
        return topicPeople;
    }

    public void setTopicPeople(Integer topicPeople) {
        this.topicPeople = topicPeople;
    }

    public Integer getLookNum() {
        return lookNum;
    }

    public void setLookNum(Integer lookNum) {
        this.lookNum = lookNum;
    }

    public String getTopicContent() {
        return topicContent;
    }

    public void setTopicContent(String topicContent) {
        this.topicContent = topicContent == null ? null : topicContent.trim();
    }

    public Date getTopicStart() {
        return topicStart;
    }

    public void setTopicStart(Date topicStart) {
        this.topicStart = topicStart;
    }

    public Date getTopicEnd() {
        return topicEnd;
    }

    public void setTopicEnd(Date topicEnd) {
        this.topicEnd = topicEnd;
    }

    public Topic(Integer topicId, Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd) {
        this.topicId = topicId;
        this.userId = userId;
        this.topicImgurl = topicImgurl;
        this.topicPeople = topicPeople;
        this.lookNum = lookNum;
        this.topicContent = topicContent;
        this.topicStart = topicStart;
        this.topicEnd = topicEnd;
    }

    public Topic(Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd) {
        this.userId = userId;
        this.topicImgurl = topicImgurl;
        this.topicPeople = topicPeople;
        this.lookNum = lookNum;
        this.topicContent = topicContent;
        this.topicStart = topicStart;
        this.topicEnd = topicEnd;
    }

    public Topic() {
    }
}