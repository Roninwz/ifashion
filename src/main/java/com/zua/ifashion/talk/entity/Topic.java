package com.zua.ifashion.talk.entity;

public class Topic {
    private Integer idTopic;

    private Integer userId;

    private String topicImgurl;

    private Integer topicPeople;

    private Integer lookNum;

    private String topicContent;

    public Integer getIdTopic() {
        return idTopic;
    }

    public void setIdTopic(Integer idTopic) {
        this.idTopic = idTopic;
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
}