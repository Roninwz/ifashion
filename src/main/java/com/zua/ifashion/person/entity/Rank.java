package com.zua.ifashion.person.entity;

public class Rank {
    private Integer rankId;

    private String rankName;

    public Integer getRankId() {
        return rankId;
    }

    public void setRankId(Integer rankId) {
        this.rankId = rankId;
    }

    public String getRankName() {
        return rankName;
    }

    public void setRankName(String rankName) {
        this.rankName = rankName == null ? null : rankName.trim();
    }

    public Rank(Integer rankId, String rankName) {
        this.rankId = rankId;
        this.rankName = rankName;
    }

    public Rank() {
    }
}