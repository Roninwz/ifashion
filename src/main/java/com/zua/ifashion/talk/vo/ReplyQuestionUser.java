package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.ReplyQuestion;

import java.util.Date;

public class ReplyQuestionUser extends ReplyQuestion{
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ReplyQuestionUser(Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState, User user) {
        super(questionId, userId, replyDate, replyContent, zanNum, againstNum, reportState);
        this.user = user;
    }

    public ReplyQuestionUser(Integer replyquestionId, Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState, User user) {
        super(replyquestionId, questionId, userId, replyDate, replyContent, zanNum, againstNum, reportState);
        this.user = user;
    }

    public ReplyQuestionUser() {
    }
}
