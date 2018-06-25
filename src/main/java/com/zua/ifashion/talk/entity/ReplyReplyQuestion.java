package com.zua.ifashion.talk.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ReplyReplyQuestion {
    private Integer replyReplyQuesId;

    private Integer replyquestionId;

    private Integer userId;

    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date replyReplyQuesDate;

    private String replyReplyQuesContent;

    private Integer hreplyReplyQuesId;

    public Integer getHreplyReplyQuesId() {
        return hreplyReplyQuesId;
    }

    public void setHreplyReplyQuesId(Integer hreplyReplyQuesId) {
        this.hreplyReplyQuesId = hreplyReplyQuesId;
    }

    public Integer getReplyReplyQuesId() {
        return replyReplyQuesId;
    }

    public void setReplyReplyQuesId(Integer replyReplyQuesId) {
        this.replyReplyQuesId = replyReplyQuesId;
    }

    public Integer getReplyquestionId() {
        return replyquestionId;
    }

    public void setReplyquestionId(Integer replyquestionId) {
        this.replyquestionId = replyquestionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getReplyReplyQuesDate() {
        return replyReplyQuesDate;
    }

    public void setReplyReplyQuesDate(Date replyReplyQuesDate) {
        this.replyReplyQuesDate = replyReplyQuesDate;
    }

    public String getReplyReplyQuesContent() {
        return replyReplyQuesContent;
    }

    public void setReplyReplyQuesContent(String replyReplyQuesContent) {
        this.replyReplyQuesContent = replyReplyQuesContent;
    }

    public ReplyReplyQuestion(Integer replyReplyQuesId, Integer replyquestionId, Integer userId, Date replyReplyQuesDate, String replyReplyQuesContent, Integer hreplyReplyQuesId) {
        this.replyReplyQuesId = replyReplyQuesId;
        this.replyquestionId = replyquestionId;
        this.userId = userId;
        this.replyReplyQuesDate = replyReplyQuesDate;
        this.replyReplyQuesContent = replyReplyQuesContent;
        this.hreplyReplyQuesId = hreplyReplyQuesId;
    }

    public ReplyReplyQuestion() {
    }
}
