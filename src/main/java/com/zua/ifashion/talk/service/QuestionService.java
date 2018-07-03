package com.zua.ifashion.talk.service;

import com.zua.ifashion.talk.entity.Question;

import java.util.Date;
import java.util.List;

public interface QuestionService {
    //添加问题
    int addQuestion(Question question);

    //添加问题
    int addQuestionSelective(Question question);

    //删除问题
    int deleteQuestion(Integer questionId);

    //修改问题
    int updateQuestion(Question question);

    //修改问题
    int updateQuestionSelective(Question question);

    //通过id查询问题
    Question selectQuestionByQuestionId(Integer questionId);

    //通过用户id来查询问题
    List<Question> selectQuestionByUserId(Integer userId);

    //通过标签Id来查询问题
    List<Question> selectQuestionByTagId(Integer tagId);

    //查询问题浏览量
    int selectLookNumByQuestionId(Integer questionId);

    //查询问题是否被举报
    int selctReportStateByQuestionId(Integer questionId);

    //查询问题关注量
    int selectAttentionNumByQuestionId(Integer questionId);

    //根据id查询问题内容
    String selectQuestionContentByQuestionId(Integer questionId);

    //根据时间来查询问题
    List<Question> selectQuestionByEQuestionDate(Date questionDate);

    List<Question> selectQuestionByLQuestionDate(Date questionDate);


    //查询每个问题的关注量并排序
    List<Question> selectAttentionNumOrder();

    //查询所有问题
    List<Question> selectAllQuestion();

    //根据问题id查询标签
    Integer selectTagIdByQuestionId(Integer questionId);

    //查询最新问题排序
    List<Question> selectQuestionOrderByQuestionDate();
}
