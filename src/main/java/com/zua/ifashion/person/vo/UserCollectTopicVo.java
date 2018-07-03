package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.talk.vo.TopicUser;

public class UserCollectTopicVo extends MyCollection{

    private TopicUser topicUser;

    public TopicUser getTopicUser() {
        return topicUser;
    }

    public void setTopicUser(TopicUser topicUser) {
        this.topicUser = topicUser;
    }

    public UserCollectTopicVo() {

    }

    public UserCollectTopicVo(Integer mycollectId, Integer userId, Integer articleId, Integer topicId, TopicUser topicUser) {
        super(mycollectId, userId, articleId, topicId);
        this.topicUser = topicUser;
    }

    public UserCollectTopicVo(TopicUser topicUser) {
        this.topicUser = topicUser;
    }
}
