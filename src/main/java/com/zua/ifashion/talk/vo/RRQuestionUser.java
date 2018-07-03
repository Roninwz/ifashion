package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.ReplyReplyQuestion;

import java.util.Date;

public class RRQuestionUser extends ReplyReplyQuestion{
    private User user;
    private String bhfusername;

    public String getBhfusername() {
        return bhfusername;
    }

    public void setBhfusername(String bhfusername) {
        this.bhfusername = bhfusername;
    }
    //    List<RRQuestionUser> rrQuestionUsers;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

//    public List<RRQuestionUser> getRrQuestionUsers() {
//        return rrQuestionUsers;
//    }
//
//    public void setRrQuestionUsers(List<RRQuestionUser> rrQuestionUsers) {
//        this.rrQuestionUsers = rrQuestionUsers;
//    }

//    public RRQuestionUser(Integer replyReplyQuesId, Integer replyquestionId, Integer userId, Date replyReplyQuesDate, String replyReplyQuesContent, Integer hreplyReplyQuesId, User user, List<RRQuestionUser> rrQuestionUsers) {
//        super(replyReplyQuesId, replyquestionId, userId, replyReplyQuesDate, replyReplyQuesContent, hreplyReplyQuesId);
//        this.user = user;
//        this.rrQuestionUsers = rrQuestionUsers;
//    }


    public RRQuestionUser(Integer replyReplyQuesId, Integer replyquestionId, Integer userId, Date replyReplyQuesDate, String replyReplyQuesContent, Integer hreplyReplyQuesId, User user) {
        super(replyReplyQuesId, replyquestionId, userId, replyReplyQuesDate, replyReplyQuesContent, hreplyReplyQuesId);
        this.user = user;
    }

    public RRQuestionUser(Integer replyReplyQuesId, Integer replyquestionId, Integer userId, Date replyReplyQuesDate, String replyReplyQuesContent, Integer hreplyReplyQuesId, User user, String bhfusername) {
        super(replyReplyQuesId, replyquestionId, userId, replyReplyQuesDate, replyReplyQuesContent, hreplyReplyQuesId);
        this.user = user;
        this.bhfusername = bhfusername;
    }

    public RRQuestionUser() {
    }
}
