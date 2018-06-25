package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.DiscussReply;
import com.zua.ifashion.talk.mapper.DiscussReplyMapper;
import com.zua.ifashion.talk.service.DiscussReplyService;
import com.zua.ifashion.talk.vo.CountDiscussId;
import com.zua.ifashion.talk.vo.DiscussReplyUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("discussReplyService")
public class DiscussReplyServiceImpl implements DiscussReplyService {

    @Autowired
    private DiscussReplyMapper discussReplyMapper;

    @Override
    public int addDiscussReply(DiscussReply discussReply) {
        return discussReplyMapper.addDiscussReply(discussReply);
    }

    @Override
    public int addDiscussReplySelective(DiscussReply discussReply) {
        return discussReplyMapper.addDiscussReplySelective(discussReply);
    }

    @Override
    public int deleteDiscussReply(Integer discussreplyId) {
        return discussReplyMapper.deleteDiscussReply(discussreplyId);
    }

    @Override
    public int updateDiscussReply(DiscussReply discussReply) {
        return discussReplyMapper.updateDiscussReply(discussReply);
    }

    @Override
    public int updateDiscussReplySelective(DiscussReply discussReply) {
        return discussReplyMapper.updateDiscussReplySelective(discussReply);
    }

    @Override
    public int selectDiscussReplyByDiscussreplyId(Integer discussreplyId) {
        return discussReplyMapper.selectDiscussReplyByDiscussreplyId(discussreplyId);
    }

    @Override
    public List<DiscussReply> selectDiscussReplyByUserId(Integer userId) {
        return selectDiscussReplyByUserId(userId);
    }

    @Override
    public int getDiscussReplyCountByUserId(Integer userId) {
        return discussReplyMapper.getDiscussReplyCountByUserId(userId);
    }

    @Override
    public List<DiscussReply> selectDiscussReplyByDiscussId(Integer discussId) {
        return discussReplyMapper.selectDiscussReplyByDiscussId(discussId);
    }

    @Override
    public List<DiscussReplyUser> selectDiscussReplyUByDiscussId(Integer discussId) {
        return discussReplyMapper.selectDiscussReplyUByDiscussId(discussId);
    }

    @Override
    public List<DiscussReply> selectDiscussReplyByTopicId(Integer topicId) {
        return selectDiscussReplyByTopicId(topicId);
    }

    @Override
    public int selectDiscussReplyCountByTopicId(Integer topicId) {
        return discussReplyMapper.selectDiscussReplyCountByTopicId(topicId);
    }

    @Override
    public int selectDiscussReplyByDiscussReplyZan(Integer discussId) {
        return discussReplyMapper.selectDiscussReplyByDiscussReplyZan(discussId);
    }

    @Override
    public int selectDiscussReplyByDiscussReplyContent(Integer discussId) {
        return discussReplyMapper.selectDiscussReplyByDiscussReplyContent(discussId);
    }

    @Override
    public List<DiscussReply> selectDiscussReplyByDiscussreplyDate(Date discussreplyDate) {
        return discussReplyMapper.selectDiscussReplyByDiscussreplyDate(discussreplyDate);
    }

    @Override
    public List<DiscussReply> getAllDiscussReply() {
        return discussReplyMapper.getAllDiscussReply();
    }

    @Override
    public int getAllDiscussReplyCount() {
        return discussReplyMapper.getAllDiscussReplyCount();
    }

    @Override
    public int selectDiscussReplyCountByDiscussId(Integer discussId) {
        return discussReplyMapper.selectDiscussReplyCountByDiscussId(discussId);
    }

    @Override
    public List<CountDiscussId> selectDiscussId() {
        return discussReplyMapper.selectDiscussId();
    }
}
