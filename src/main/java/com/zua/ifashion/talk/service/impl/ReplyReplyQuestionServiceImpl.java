package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.ReplyReplyQuestion;
import com.zua.ifashion.talk.mapper.ReplyReplyQuestionMapper;
import com.zua.ifashion.talk.service.ReplyReplyQuestionService;
import com.zua.ifashion.talk.vo.RRQuestionUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ReplyReplyQuestionServiceImpl implements ReplyReplyQuestionService{

    @Autowired
    private ReplyReplyQuestionMapper replyReplyQuestionMapper;

    @Override
    public int addReplyReplyQuestion(ReplyReplyQuestion replyReplyQuestion) {
        return replyReplyQuestionMapper.addReplyReplyQuestion(replyReplyQuestion);
    }

    @Override
    public int addReplyReplyQuestionSelective(ReplyReplyQuestion replyReplyQuestion) {
        return replyReplyQuestionMapper.addReplyReplyQuestionSelective(replyReplyQuestion);
    }

    @Override
    public int deleteReplyReplyQuestion(Integer replyReplyQuesId) {
        return replyReplyQuestionMapper.deleteReplyReplyQuestion(replyReplyQuesId);
    }

    @Override
    public int updateReplyReplyQuestion(ReplyReplyQuestion replyReplyQuestion) {
        return replyReplyQuestionMapper.updateReplyReplyQuestion(replyReplyQuestion);
    }

    @Override
    public int updateReplyReplyQuestionSelective(ReplyReplyQuestion replyReplyQuestion) {
        return replyReplyQuestionMapper.updateReplyReplyQuestionSelective(replyReplyQuestion);
    }

    @Override
    public ReplyReplyQuestion selectReplyReplyQuestionByReplyReplyQuesId(Integer replyReplyQuesId) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionByReplyReplyQuesId(replyReplyQuesId);
    }

    @Override
    public List<ReplyReplyQuestion> selectReplyReplyQuestionByUserId(Integer userId) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionByUserId(userId);
    }

    @Override
    public List<ReplyReplyQuestion> selectReplyReplyQuestionByReplyquestionId(Integer replyquestionId) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionByReplyquestionId(replyquestionId);
    }

    @Override
    public List<RRQuestionUser> selectReplyReplyQuestionUserByReplyquestionId(Integer replyquestionId) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionUserByReplyquestionId(replyquestionId);
    }

    @Override
    public int selectReplyReplyQuestionCountByReplyquestionId(Integer replyquestionId) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionCountByReplyquestionId(replyquestionId);
    }

    @Override
    public List<ReplyReplyQuestion> selectReplyReplyQuestionByEReplyReplyQuesDate(Date replyReplyQuesDate) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionByEReplyReplyQuesDate(replyReplyQuesDate);
    }

    @Override
    public List<ReplyReplyQuestion> selectReplyReplyQuestionByLReplyReplyQuesDate(Date replyReplyQuesDate) {
        return replyReplyQuestionMapper.selectReplyReplyQuestionByLReplyReplyQuesDate(replyReplyQuesDate);
    }

    @Override
    public List<RRQuestionUser> selectRRQuestionByHReplyReplyQuesId(Integer hreplyReplyQuesId) {
        return replyReplyQuestionMapper.selectRRQuestionByHReplyReplyQuesId(hreplyReplyQuesId);
    }

    @Override
    public ReplyReplyQuestion selectReplyReplyQuestionTop() {
        return replyReplyQuestionMapper.selectReplyReplyQuestionTop();
    }
}
