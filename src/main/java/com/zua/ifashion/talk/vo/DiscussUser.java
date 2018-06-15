package com.zua.ifashion.talk.vo;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.talk.entity.Discuss;

import java.util.Date;

public class DiscussUser extends Discuss{
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public DiscussUser(Integer discussId, Integer topicId, Integer userId, Date discussDate, Integer reviewNum, Integer lookNum, String discussContent, User user) {
        super(discussId, topicId, userId, discussDate, reviewNum, lookNum, discussContent);
        this.user = user;
    }

    public DiscussUser(Integer topicId, Integer userId, Date discussDate, Integer reviewNum, Integer lookNum, String discussContent, User user) {
        super(topicId, userId, discussDate, reviewNum, lookNum, discussContent);
        this.user = user;
    }

    public DiscussUser() {
    }
}
