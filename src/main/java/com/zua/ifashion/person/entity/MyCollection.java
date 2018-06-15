package com.zua.ifashion.person.entity;

public class MyCollection {
    private Integer mycollectId;

    private Integer userId;
    private Integer articleId;
    private  Integer topicId;
    public Integer getMycollectId() {
        return mycollectId;
    }

    public void setMycollectId(Integer mycollectId) {
        this.mycollectId = mycollectId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public MyCollection(Integer mycollectId, Integer userId, Integer articleId, Integer topicId) {
        this.mycollectId = mycollectId;
        this.userId = userId;
        this.articleId = articleId;
        this.topicId = topicId;
    }

    public MyCollection() {
    }
}