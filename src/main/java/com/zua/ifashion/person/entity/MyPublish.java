package com.zua.ifashion.person.entity;

public class MyPublish {
    private Integer mypublishId;
    private Integer userId;
    private Integer articleId;
    private Integer topicId;

    public Integer getMypublishId() {
        return mypublishId;
    }

    public void setMypublishId(Integer mypublishId) {
        this.mypublishId = mypublishId;
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

    public MyPublish(Integer mypublishId, Integer userId, Integer articleId, Integer topicId) {
        this.mypublishId = mypublishId;
        this.userId = userId;
        this.articleId = articleId;
        this.topicId = topicId;
    }

    public MyPublish() {
    }
}
