package com.zua.ifashion.talk.vo;

public class CountDiscussId {
    private Integer discussId;
    private Integer count;

    public Integer getDiscussId() {
        return discussId;
    }

    public void setDiscussId(Integer discussId) {
        this.discussId = discussId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public CountDiscussId(Integer discussId, Integer count) {
        this.discussId = discussId;
        this.count = count;
    }

    public CountDiscussId() {
    }
}
