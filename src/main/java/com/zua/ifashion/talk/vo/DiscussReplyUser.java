package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.DiscussReply;

import java.util.Date;

public class DiscussReplyUser extends User{
//    private DiscussReply discussReply;

    private Integer discussreplyId;
    private Integer discussId;
    private Integer userId;
    private Integer discussreplyZan;
    private Date discussreplyDate;
    private String discussreplyContent;
    private Integer reportState;

    private String rankName;

    public Integer getDiscussreplyId() {
        return discussreplyId;
    }

    public void setDiscussreplyId(Integer discussreplyId) {
        this.discussreplyId = discussreplyId;
    }

    public Integer getDiscussId() {
        return discussId;
    }

    public void setDiscussId(Integer discussId) {
        this.discussId = discussId;
    }

    @Override
    public Integer getUserId() {
        return userId;
    }

    @Override
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getDiscussreplyZan() {
        return discussreplyZan;
    }

    public void setDiscussreplyZan(Integer discussreplyZan) {
        this.discussreplyZan = discussreplyZan;
    }

    public Date getDiscussreplyDate() {
        return discussreplyDate;
    }

    public void setDiscussreplyDate(Date discussreplyDate) {
        this.discussreplyDate = discussreplyDate;
    }

    public String getDiscussreplyContent() {
        return discussreplyContent;
    }

    public void setDiscussreplyContent(String discussreplyContent) {
        this.discussreplyContent = discussreplyContent;
    }

    public Integer getReportState() {
        return reportState;
    }

    public void setReportState(Integer reportState) {
        this.reportState = reportState;
    }

    public String getRankName() {
        return rankName;
    }

    public void setRankName(String rankName) {
        this.rankName = rankName;
    }

    public DiscussReplyUser() {
    }

    public DiscussReplyUser(Integer userId, Integer rankId, String username, String password, String truename, String tel, String email, String sex, Integer age, Date birth, Integer userMark, Integer score, String userImgurl, String userIntroduce, Date registerDate, String userTag, Integer state, Integer discussreplyId, Integer discussId, Integer userId1, Integer discussreplyZan, Date discussreplyDate, String discussreplyContent, Integer reportState, String rankName) {
        super(userId, rankId, username, password, truename, tel, email, sex, age, birth, userMark, score, userImgurl, userIntroduce, registerDate, userTag, state);
        this.discussreplyId = discussreplyId;
        this.discussId = discussId;
        this.userId = userId1;
        this.discussreplyZan = discussreplyZan;
        this.discussreplyDate = discussreplyDate;
        this.discussreplyContent = discussreplyContent;
        this.reportState = reportState;
        this.rankName = rankName;
    }
}
