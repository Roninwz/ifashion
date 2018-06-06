package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.Discuss;
import com.zua.ifashion.talk.mapper.DiscussMapper;
import com.zua.ifashion.talk.mapper.DiscussReplyMapper;
import com.zua.ifashion.talk.service.DiscussService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("discussService")
public class DiscussServiceImpl implements DiscussService{

    @Autowired
    private DiscussMapper discussMapper;
    @Autowired
    private DiscussReplyMapper discussReplyMapper;

    @Override
    public int addDiscuss(Discuss discuss) {
        return discussMapper.addDiscuss(discuss);
    }

    @Override
    public int addDiscussSelective(Discuss discuss) {
        return discussMapper.addDiscussSelective(discuss);
    }

    @Override
    public int deleteDiscuss(Integer discussId) {
        discussReplyMapper.deleteDiscussReply(discussId);
        return discussMapper.deleteDiscuss(discussId);
    }

    @Override
    public int updateDiscuss(Discuss discuss) {
        return discussMapper.updateDiscuss(discuss);
    }

    @Override
    public int updateDiscussSelective(Discuss discuss) {
        return discussMapper.updateDiscussSelective(discuss);
    }

    @Override
    public int selectDiscussByDiscussId(Integer discussId) {
        return discussMapper.selectDiscussByDiscussId(discussId);
    }

    @Override
    public List<Discuss> selectDiscussByUserId(Integer userId) {
        return discussMapper.selectDiscussByUserId(userId);
    }

    @Override
    public List<Discuss> selectDiscussByTopicId(Integer topicId) {
        return discussMapper.selectDiscussByTopicId(topicId);
    }

    @Override
    public int getDiscussCountByTopicId(Integer topicId) {
        return discussMapper.getDiscussCountByTopicId(topicId);
    }

    @Override
    public int selectReviewNumByDiscussId(Integer discussId) {
        return discussMapper.selectReviewNumByDiscussId(discussId);
    }

    @Override
    public int selectLookNumByDiscussId(Integer discussId) {
        return discussMapper.selectLookNumByDiscussId(discussId);
    }

    @Override
    public List<Discuss> selectDiscussByEDiscussDate(Date discussDate) {
        return discussMapper.selectDiscussByEDiscussDate(discussDate);
    }

    @Override
    public List<Discuss> selectDiscussByLDiscussDate(Date discussDate) {
        return discussMapper.selectDiscussByLDiscussDate(discussDate);
    }

    @Override
    public List<Discuss> selectAllDiscuss(Date start, Date end) {
        return selectAllDiscuss(start, end);
    }

    @Override
    public int getAllDiscussCount() {
        return discussMapper.getAllDiscussCount();
    }

    @Override
    public List<Discuss> getAllDiscuss() {
        return discussMapper.getAllDiscuss();
    }
}
