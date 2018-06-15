package com.zua.ifashion.talk.service.impl;

import com.zua.ifashion.talk.entity.Question;
import com.zua.ifashion.talk.mapper.QuestionMapper;
import com.zua.ifashion.talk.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService{

    @Autowired
    private QuestionMapper questionMapper;
    @Override
    public int addQuestion(Question question) {
        return questionMapper.addQuestion(question);
    }

    @Override
    public int addQuestionSelective(Question question) {
        return questionMapper.addQuestionSelective(question);
    }

    @Override
    public int deleteQuestion(Integer questionId) {
        return questionMapper.deleteQuestion(questionId);
    }

    @Override
    public int updateQuestion(Question question) {
        return questionMapper.updateQuestion(question);
    }

    @Override
    public int updateQuestionSelective(Question question) {
        return questionMapper.updateQuestionSelective(question);
    }

    @Override
    public Question selectQuestionByQuestionId(Integer questionId) {
        return questionMapper.selectQuestionByQuestionId(questionId);
    }

    @Override
    public List<Question> selectQuestionByUserId(Integer userId) {
        return questionMapper.selectQuestionByUserId(userId);
    }

    @Override
    public List<Question> selectQuestionByTagId(Integer tagId) {
        return questionMapper.selectQuestionByTagId(tagId);
    }

    @Override
    public int selectLookNumByQuestionId(Integer questionId) {
        return questionMapper.selectLookNumByQuestionId(questionId);
    }

    @Override
    public int selctReportStateByQuestionId(Integer questionId) {
        return questionMapper.selctReportStateByQuestionId(questionId);
    }

    @Override
    public int selectAttentionNumByQuestionId(Integer questionId) {
        return questionMapper.selectAttentionNumByQuestionId(questionId);
    }

    @Override
    public String selectQuestionContentByQuestionId(Integer questionId) {
        return questionMapper.selectQuestionContentByQuestionId(questionId);
    }

    @Override
    public List<Question> selectQuestionByEQuestionDate(Date questionDate) {
        return questionMapper.selectQuestionByEQuestionDate(questionDate);
    }

    @Override
    public List<Question> selectQuestionByLQuestionDate(Date questionDate) {
        return questionMapper.selectQuestionByLQuestionDate(questionDate);
    }

    @Override
    public List<Question> selectAttentionNumOrder() {
        return questionMapper.selectAttentionNumOrder();
    }

    @Override
    public List<Question> selectAllQuestion() {
        return questionMapper.selectAllQuestion();
    }
}
