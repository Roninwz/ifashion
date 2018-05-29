package com.zua.ifashion.article.entity;

public class Complain {
    private Integer idComplain;

    private Integer reviewId;

    private Integer complainUserid;

    private Integer complainedUserid;

    private String complainReason;

    public Integer getIdComplain() {
        return idComplain;
    }

    public void setIdComplain(Integer idComplain) {
        this.idComplain = idComplain;
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
}