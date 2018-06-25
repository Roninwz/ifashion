package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.mapper.DiscussMapper;
import com.zua.ifashion.talk.mapper.DiscussReplyMapper;
import com.zua.ifashion.talk.mapper.TopicMapper;
import com.zua.ifashion.talk.service.TopicService;
import com.zua.ifashion.talk.vo.TopicUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class TopicServiceImpl implements TopicService{

    @Autowired
    private TopicMapper topicMapper;
    @Autowired
    private DiscussMapper discussMapper;
    @Autowired
    private DiscussReplyMapper discussReplyMapper;

    @Override
    public int addTopic(Topic topic) {
        return topicMapper.addTopic(topic);
    }

    @Override
    public int addTopicSelective(Topic topic) {
        return topicMapper.addTopicSelective(topic);
    }

    @Override
    public int deleteTopic(Integer topicId) {
        discussReplyMapper.deleteDiscussReply(topicId);
        discussMapper.deleteDiscuss(topicId);
        return topicMapper.deleteTopic(topicId);
    }

    @Override
    public int updateTopic(Topic topic) {
        return topicMapper.updateTopic(topic);
    }

    @Override
    public int updateTopicSelective(Topic topic) {
        return topicMapper.updateTopicSelective(topic);
    }

    @Override
    public Topic selectTopicByTopicId(Integer topicId) {
        return topicMapper.selectTopicByTopicId(topicId);
    }

    @Override
    public List<Topic> selectTopicByUserId(Integer userId) {
        return topicMapper.selectTopicByUserId(userId);
    }

    @Override
    public int getTopicCountByUserId(Integer userId) {
        return topicMapper.getTopicCountByUserId(userId);
    }

    @Override
    public int selectTopicByTopicContent(String topicContent) {
        return topicMapper.selectTopicByTopicContent(topicContent);
    }

    @Override
    public int selectTopicPeopleByTopicId(Integer topicId) {
        return topicMapper.selectTopicPeopleByTopicId(topicId);
    }

    @Override
    public List<Topic> selectTopicByTopicPeopleOrder() {
        return topicMapper.selectTopicByTopicPeopleOrder();
    }

    @Override
    public int selectLookNumByTopicId(Integer topicId) {
        return selectLookNumByTopicId(topicId);
    }

    @Override
    public List<TopicUser> selectTopicByLookNumOrder() {
        return topicMapper.selectTopicByLookNumOrder();
    }

    @Override
    public List<Topic> selectTopiccByLookNumOrder() {
        return topicMapper.selectTopiccByLookNumOrder();
    }

    @Override
    public List<Topic> getAllTopic() {
        return topicMapper.getAllTopic();
    }

    @Override
    public int getAllTopicCount() {
        return topicMapper.getAllTopicCount();
    }

    @Override
    public List<Topic> selectTopicByDate(Date topicStart, Date topicEnd) {
        return topicMapper.selectTopicByDate(topicStart,topicEnd);
    }

    @Override
    public List<Topic> selectTopicByTopicStart(Date topicStart) {
        return topicMapper.selectTopicByTopicStart(topicStart);
    }

    @Override
    public List<Topic> selectTopicByTopicEnd(Date topicEnd) {
        return topicMapper.selectTopicByTopicEnd(topicEnd);
    }
}
