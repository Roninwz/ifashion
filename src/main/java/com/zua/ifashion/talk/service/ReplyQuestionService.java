package com.zua.ifashion.talk.service;

import com.zua.ifashion.talk.entity.ReplyQuestion;
import com.zua.ifashion.talk.vo.ReplyQuestionUser;

import java.util.Date;
import java.util.List;

public interface ReplyQuestionService {
    //添加回答
    int addReplyQuestion(ReplyQuestion replyQuestion);

    int addReplyQuestionSelective(ReplyQuestion replyQuestion);

    //删除回答
    int deleteReplyQuestion(Integer replyquestionId);

    //修改回答
    int updateReplyQuestion(ReplyQuestion replyQuestion);

    int updateReplyQuestionSelective(ReplyQuestion replyQuestion);

    //通过id查询回答
    ReplyQuestion selectReplyQuestionByReplyquestionId(Integer replyquestionId);

    //通过用户id来查询回答
    List<ReplyQuestion> selectReplyQuestionByUserId(Integer userId);

    //通过问题ID来查询回答
    ReplyQuestionUser selectReplyQuestionByQuestionId(Integer questionId);

    //通过问题ID来查询全部回答
    List<ReplyQuestionUser> selectAReplyQuestionByQuestionId(Integer questionId);


    //查询回答点赞量
    int selectZanNumByReplyQuestionId(Integer replyquestionId);

    //查询回答反对量
    int selectAgainstNumByReplyQuestionId(Integer replyquestionId);

    //查询回答是否被举报
    int selctReportStateByReplyQuestionId(Integer replyquestionId);

    //根据id来查询回答内容
    String selectReplyContentByReplyQuestionId(Integer replyquestionId);

    //根据时间来查询回答
    List<ReplyQuestion> selectReplyQuestionByEReplyDate(Date replyDate);

    List<ReplyQuestion> selectReplyQuestionByLReplyDate(Date replyDate);


}
