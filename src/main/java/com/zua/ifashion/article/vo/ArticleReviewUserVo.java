package com.zua.ifashion.article.vo;

import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.person.entity.User;

import java.util.Date;

public class ArticleReviewUserVo extends ArticleReview {

   private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ArticleReviewUserVo() {
    }

    public ArticleReviewUserVo(Integer reviewId, Integer articleId, Integer userId, Integer reviewZan, Date reviewDate, String reviewContent, User user) {
        super(reviewId, articleId, userId, reviewZan, reviewDate, reviewContent);
        this.user = user;
    }

    public ArticleReviewUserVo(User user) {
        this.user = user;
    }
}
