package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.ReplyQuestion;
import com.zua.ifashion.talk.entity.ReplyReplyQuestion;

import java.util.Date;
import java.util.List;

public class RRRQuestion extends ReplyQuestionUser{

    List<ReplyReplyQuestion> replyReplyQuestions;

    private Integer replyReplyCount;

    private Integer replyCount;

    public Integer getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(Integer replyCount) {
        this.replyCount = replyCount;
    }

    public Integer getReplyReplyCount() {
        return replyReplyCount;
    }

    public void setReplyReplyCount(Integer replyReplyCount) {
        this.replyReplyCount = replyReplyCount;
    }

    public List<ReplyReplyQuestion> getReplyReplyQuestions() {
        return replyReplyQuestions;
    }

    public void setReplyReplyQuestions(List<ReplyReplyQuestion> replyReplyQuestions) {
        this.replyReplyQuestions = replyReplyQuestions;
    }


    public RRRQuestion(Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState, User user, List<ReplyReplyQuestion> replyReplyQuestions, Integer replyReplyCount, Integer replyCount) {
        super(questionId, userId, replyDate, replyContent, zanNum, againstNum, reportState, user);
        this.replyReplyQuestions = replyReplyQuestions;
        this.replyReplyCount = replyReplyCount;
        this.replyCount = replyCount;
    }

    public RRRQuestion(Integer replyquestionId, Integer questionId, Integer userId, Date replyDate, String replyContent, Integer zanNum, Integer againstNum, Integer reportState, User user, List<ReplyReplyQuestion> replyReplyQuestions, Integer replyReplyCount, Integer replyCount) {
        super(replyquestionId, questionId, userId, replyDate, replyContent, zanNum, againstNum, reportState, user);
        this.replyReplyQuestions = replyReplyQuestions;
        this.replyReplyCount = replyReplyCount;
        this.replyCount = replyCount;
    }

    public RRRQuestion() {
    }
}
