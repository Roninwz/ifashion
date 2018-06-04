package com.zua.ifashion.article.entity;

public class Complain {
    private Integer complaincId;

    private Integer reviewId;

    private Integer complainUserid;

    private Integer complainedUserid;

    private String complainReason;

    public Integer getComplaincId() {
        return complaincId;
    }

    public void setComplaincId(Integer complaincId) {
        this.complaincId = complaincId;
    }

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Integer getComplainUserid() {
        return complainUserid;
    }

    public void setComplainUserid(Integer complainUserid) {
        this.complainUserid = complainUserid;
    }

    public Integer getComplainedUserid() {
        return complainedUserid;
    }

    public void setComplainedUserid(Integer complainedUserid) {
        this.complainedUserid = complainedUserid;
    }

    public String getComplainReason() {
        return complainReason;
    }

    public void setComplainReason(String complainReason) {
        this.complainReason = complainReason == null ? null : complainReason.trim();
    }

    public Complain(Integer complaincId, Integer reviewId, Integer complainUserid, Integer complainedUserid, String complainReason) {
        this.complaincId = complaincId;
        this.reviewId = reviewId;
        this.complainUserid = complainUserid;
        this.complainedUserid = complainedUserid;
        this.complainReason = complainReason;
    }

    public Complain() {
    }
}