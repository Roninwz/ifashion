package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.ReplyQuestion;
import com.zua.ifashion.talk.mapper.ReplyQuestionMapper;
import com.zua.ifashion.talk.service.ReplyQuestionService;
import com.zua.ifashion.talk.vo.ReplyQuestionUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ReplyQuestionServiceImpl implements ReplyQuestionService{

    @Autowired
    private ReplyQuestionMapper replyQuestionMapper;

    @Override
    public int addReplyQuestion(ReplyQuestion replyQuestion) {
        return replyQuestionMapper.addReplyQuestion(replyQuestion);
    }

    @Override
    public int addReplyQuestionSelective(ReplyQuestion replyQuestion) {
        return replyQuestionMapper.addReplyQuestionSelective(replyQuestion);
    }

    @Override
    public int deleteReplyQuestion(Integer replyquestionId) {
        return replyQuestionMapper.deleteReplyQuestion(replyquestionId);
    }

    @Override
    public int updateReplyQuestion(ReplyQuestion replyQuestion) {
        return replyQuestionMapper.updateReplyQuestion(replyQuestion);
    }

    @Override
    public int updateReplyQuestionSelective(ReplyQuestion replyQuestion) {
        return replyQuestionMapper.updateReplyQuestionSelective(replyQuestion);
    }

    @Override
    public ReplyQuestion selectReplyQuestionByReplyquestionId(Integer replyquestionId) {
        return replyQuestionMapper.selectReplyQuestionByReplyquestionId(replyquestionId);
    }

    @Override
    public List<ReplyQuestion> selectReplyQuestionByUserId(Integer userId) {
        return replyQuestionMapper.selectReplyQuestionByUserId(userId);
    }

    @Override
    public ReplyQuestionUser selectReplyQuestionByQuestionId(Integer questionId) {
        return replyQuestionMapper.selectReplyQuestionByQuestionId(questionId);
    }

    @Override
    public List<ReplyQuestionUser> selectAReplyQuestionByQuestionId(Integer questionId) {
        return replyQuestionMapper.selectAReplyQuestionByQuestionId(questionId);
    }

    @Override
    public int selectZanNumByReplyQuestionId(Integer replyquestionId) {
        return replyQuestionMapper.selectZanNumByReplyQuestionId(replyquestionId);
    }

    @Override
    public int selectAgainstNumByReplyQuestionId(Integer replyquestionId) {
        return replyQuestionMapper.selectAgainstNumByReplyQuestionId(replyquestionId);
    }

    @Override
    public int selctReportStateByReplyQuestionId(Integer replyquestionId) {
        return replyQuestionMapper.selctReportStateByReplyQuestionId(replyquestionId);
    }

    @Override
    public String selectReplyContentByReplyQuestionId(Integer replyquestionId) {
        return replyQuestionMapper.selectReplyContentByReplyQuestionId(replyquestionId);
    }

    @Override
    public List<ReplyQuestion> selectReplyQuestionByEReplyDate(Date replyDate) {
        return replyQuestionMapper.selectReplyQuestionByEReplyDate(replyDate);
    }

    @Override
    public List<ReplyQuestion> selectReplyQuestionByLReplyDate(Date replyDate) {
        return replyQuestionMapper.selectReplyQuestionByLReplyDate(replyDate);
    }
}
