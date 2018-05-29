package com.zua.ifashion.article.entity;

public class ArticleType {
    private Integer idArticletype;

    private String articletypeName;

    public Integer getIdArticletype() {
        return idArticletype;
    }

    public void setIdArticletype(Integer idArticletype) {
        this.idArticletype = idArticletype;
    }

    public String getArticletypeName() {
        return articletypeName;
    }

    public void setArticletypeName(String articletypeName) {
        this.articletypeName = articletypeName == null ? null : articletypeName.trim();
    }
}