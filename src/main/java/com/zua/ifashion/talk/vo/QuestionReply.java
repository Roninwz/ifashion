package com.zua.ifashion.talk.vo;

import java.util.Date;

public class QuestionReply {
    private Integer questionId;
    private String quserImgurl;
    private String quserName;
    private String questionContent;
    private Integer replyCount;
    private Integer attentionNum;
    private String ruserName;
    private String ruserImgurl;
    private String replyContent;
    private Date questionDate;
    private Integer againstNum;

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getQuserImgurl() {
        return quserImgurl;
    }

    public void setQuserImgurl(String quserImgurl) {
        this.quserImgurl = quserImgurl;
    }

    public String getQuserName() {
        return quserName;
    }

    public void setQuserName(String quserName) {
        this.quserName = quserName;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    public Integer getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(Integer replyCount) {
        this.replyCount = replyCount;
    }

    public Integer getAttentionNum() {
        return attentionNum;
    }

    public void setAttentionNum(Integer attentionNum) {
        this.attentionNum = attentionNum;
    }

    public String getRuserName() {
        return ruserName;
    }

    public void setRuserName(String ruserName) {
        this.ruserName = ruserName;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public String getRuserImgurl() {
        return ruserImgurl;
    }

    public void setRuserImgurl(String ruserImgurl) {
        this.ruserImgurl = ruserImgurl;
    }

    public Date getQuestionDate() {
        return questionDate;
    }

    public void setQuestionDate(Date questionDate) {
        this.questionDate = questionDate;
    }

    public Integer getAgainstNum() {
        return againstNum;
    }

    public void setAgainstNum(Integer againstNum) {
        this.againstNum = againstNum;
    }

    public QuestionReply(Integer questionId, String quserImgurl, String quserName, String questionContent, Integer replyCount, Integer attentionNum, String ruserName, String ruserImgurl, String replyContent, Date questionDate, Integer againstNum) {
        this.questionId = questionId;
        this.quserImgurl = quserImgurl;
        this.quserName = quserName;
        this.questionContent = questionContent;
        this.replyCount = replyCount;
        this.attentionNum = attentionNum;
        this.ruserName = ruserName;
        this.ruserImgurl = ruserImgurl;
        this.replyContent = replyContent;
        this.questionDate = questionDate;
        this.againstNum = againstNum;
    }

    public QuestionReply(Integer questionId, String quserImgurl, String quserName, String questionContent, Integer replyCount, Integer attentionNum, String ruserName, String ruserImgurl, String replyContent, Date questionDate) {
        this.questionId = questionId;
        this.quserImgurl = quserImgurl;
        this.quserName = quserName;
        this.questionContent = questionContent;
        this.replyCount = replyCount;
        this.attentionNum = attentionNum;
        this.ruserName = ruserName;
        this.ruserImgurl = ruserImgurl;
        this.replyContent = replyContent;
        this.questionDate = questionDate;
    }

    public QuestionReply() {
    }
}
