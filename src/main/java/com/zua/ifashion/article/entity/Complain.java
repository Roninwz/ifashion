package com.zua.ifashion.article.entity;

public class Complain {
    private Integer complainId;

    private Integer reviewId;

    private Integer complainUserid;

    private Integer complainedUserid;

    private String complainReason;

    private Integer state;

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getComplainId() {
        return complainId;
    }

    public void setComplainId(Integer complainId) {
        this.complainId = complainId;
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

    public Complain(Integer complainId, Integer reviewId, Integer complainUserid, Integer complainedUserid, String complainReason, Integer state) {
        this.complainId = complainId;
        this.reviewId = reviewId;
        this.complainUserid = complainUserid;
        this.complainedUserid = complainedUserid;
        this.complainReason = complainReason;
        this.state = state;
    }

    public Complain() {
    }
}