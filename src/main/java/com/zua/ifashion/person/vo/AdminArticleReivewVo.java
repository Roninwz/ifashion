package com.zua.ifashion.person.vo;

import com.zua.ifashion.article.entity.ArticleReview;

import java.util.Date;

public class AdminArticleReivewVo extends ArticleReview {

    private String username;
    private String articleTitle;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public AdminArticleReivewVo(Integer reviewId, Integer articleId, Integer userId, Integer reviewZan, Date reviewDate, String reviewContent, String username, String articleTitle) {
        super(reviewId, articleId, userId, reviewZan, reviewDate, reviewContent);
        this.username = username;
        this.articleTitle = articleTitle;
    }

    public AdminArticleReivewVo(String username, String articleTitle) {
        this.username = username;
        this.articleTitle = articleTitle;
    }

    public AdminArticleReivewVo() {
    }
}
