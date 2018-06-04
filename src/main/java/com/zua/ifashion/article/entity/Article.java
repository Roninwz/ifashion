package com.zua.ifashion.article.entity;

import java.util.Date;

public class Article {
    private Integer articleId;

    private Integer articletypeId;

    private String content;

    private String imgurl;

    private String imgmark;

    private String tag;

    private Date articleDate;

    private Integer publishId;

    private Integer zanNum;

    private Integer collectNum;

    private Integer reviewNum;

    private Integer state;



    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getArticletypeId() {
        return articletypeId;
    }

    public void setArticletypeId(Integer articletypeId) {
        this.articletypeId = articletypeId;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public String getImgmark() {
        return imgmark;
    }

    public void setImgmark(String imgmark) {
        this.imgmark = imgmark == null ? null : imgmark.trim();
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
    }

    public Date getArticleDate() {
        return articleDate;
    }

    public void setArticleDate(Date articleDate) {
        this.articleDate = articleDate;
    }

    public Integer getPublishId() {
        return publishId;
    }

    public void setPublishId(Integer publishId) {
        this.publishId = publishId;
    }

    public Integer getZanNum() {
        return zanNum;
    }

    public void setZanNum(Integer zanNum) {
        this.zanNum = zanNum;
    }

    public Integer getCollectNum() {
        return collectNum;
    }

    public void setCollectNum(Integer collectNum) {
        this.collectNum = collectNum;
    }

    public Integer getReviewNum() {
        return reviewNum;
    }

    public void setReviewNum(Integer reviewNum) {
        this.reviewNum = reviewNum;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Article(Integer articleId, Integer articletypeId, String content, String imgurl, String imgmark, String tag, Date articleDate, Integer publishId, Integer zanNum, Integer collectNum, Integer reviewNum, Integer state) {
        this.articleId = articleId;
        this.articletypeId = articletypeId;
        this.content = content;
        this.imgurl = imgurl;
        this.imgmark = imgmark;
        this.tag = tag;
        this.articleDate = articleDate;
        this.publishId = publishId;
        this.zanNum = zanNum;
        this.collectNum = collectNum;
        this.reviewNum = reviewNum;
        this.state = state;
    }

    public Article() {
    }
}