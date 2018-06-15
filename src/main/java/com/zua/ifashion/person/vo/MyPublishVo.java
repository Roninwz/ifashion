package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.MyPublish;

public class MyPublishVo extends MyPublish {

    private String articleTitle;
    private String imgurl;
    private  String topicTitle;
    private  String topicImgurl;

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public String getTopicTitle() {
        return topicTitle;
    }

    public void setTopicTitle(String topicTitle) {
        this.topicTitle = topicTitle;
    }

    public String getTopicImgurl() {
        return topicImgurl;
    }

    public void setTopicImgurl(String topicImgurl) {
        this.topicImgurl = topicImgurl;
    }

    public MyPublishVo(Integer mypublishId, Integer userId, Integer articleId, Integer topicId, String articleTitle, String imgurl, String topicTitle, String topicImgurl) {
        super(mypublishId, userId, articleId, topicId);
        this.articleTitle = articleTitle;
        this.imgurl = imgurl;
        this.topicTitle = topicTitle;
        this.topicImgurl = topicImgurl;
    }

    public MyPublishVo(String articleTitle, String imgurl, String topicTitle, String topicImgurl) {
        this.articleTitle = articleTitle;
        this.imgurl = imgurl;
        this.topicTitle = topicTitle;
        this.topicImgurl = topicImgurl;
    }

    public MyPublishVo(Integer mypublishId, Integer userId, Integer articleId, Integer topicId) {
        super(mypublishId, userId, articleId, topicId);
    }

    public MyPublishVo() {
    }
}
