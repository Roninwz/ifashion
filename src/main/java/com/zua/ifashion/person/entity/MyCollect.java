package com.zua.ifashion.person.entity;

public class MyCollect {
    private Integer mycollectId;

    private Integer articleId;

    public Integer getMycollectId() {
        return mycollectId;
    }

    public void setMycollectId(Integer mycollectId) {
        this.mycollectId = mycollectId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public MyCollect(Integer mycollectId, Integer articleId) {
        this.mycollectId = mycollectId;
        this.articleId = articleId;
    }

    public MyCollect() {
    }
}