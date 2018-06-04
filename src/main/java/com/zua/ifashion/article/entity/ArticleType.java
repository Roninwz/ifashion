package com.zua.ifashion.article.entity;

public class ArticleType {
    private Integer articletypeId;

    private String articletypeName;

    public Integer getArticletypeId() {
        return articletypeId;
    }

    public void setArticletypeId(Integer articletypeId) {
        this.articletypeId = articletypeId;
    }

    public String getArticletypeName() {
        return articletypeName;
    }

    public void setArticletypeName(String articletypeName) {
        this.articletypeName = articletypeName == null ? null : articletypeName.trim();
    }

    public ArticleType(Integer articletypeId, String articletypeName) {
        this.articletypeId = articletypeId;
        this.articletypeName = articletypeName;
    }

    public ArticleType() {
    }
}