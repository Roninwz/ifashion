package com.zua.ifashion.person.vo;

import com.zua.ifashion.talk.entity.Topic;

import java.util.Date;

public class TopicVo  extends Topic{

    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public TopicVo(Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd, String topicTitle, String username) {
        super(userId, topicImgurl, topicPeople, lookNum, topicContent, topicStart, topicEnd, topicTitle);
        this.username = username;
    }

    public TopicVo(Integer topicId, Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd, String topicTitle, String username) {
        super(topicId, userId, topicImgurl, topicPeople, lookNum, topicContent, topicStart, topicEnd, topicTitle);
        this.username = username;
    }

    public TopicVo(String username) {
        this.username = username;
    }

    public TopicVo() {
    }
}
