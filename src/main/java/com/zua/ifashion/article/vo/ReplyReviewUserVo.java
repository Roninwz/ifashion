package com.zua.ifashion.article.vo;

import com.zua.ifashion.article.entity.ReplyReview;
import com.zua.ifashion.person.entity.User;

import java.util.Date;

public class ReplyReviewUserVo extends ReplyReview{
    private User user;

    public ReplyReviewUserVo() {
    }

    public User getUser() {

        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ReplyReviewUserVo(Integer replyreviewId, Integer reviewId, Integer articleId, Integer userId, Integer useredId, Date replyDate, String replyContent, User user) {
        super(replyreviewId, reviewId, articleId, userId, useredId, replyDate, replyContent);
        this.user = user;
    }

    public ReplyReviewUserVo(User user) {
        this.user = user;
    }
}
