package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.Topic;

import java.util.Date;

public class TopicUser extends Topic{
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TopicUser(Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd, String topicTitle, User user) {
        super(userId, topicImgurl, topicPeople, lookNum, topicContent, topicStart, topicEnd, topicTitle);
        this.user = user;
    }

    public TopicUser(Integer topicId, Integer userId, String topicImgurl, Integer topicPeople, Integer lookNum, String topicContent, Date topicStart, Date topicEnd, String topicTitle, User user) {
        super(topicId, userId, topicImgurl, topicPeople, lookNum, topicContent, topicStart, topicEnd, topicTitle);
        this.user = user;
    }

    public TopicUser() {
    }
}
