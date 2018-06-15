package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.ReplyReplyQuestion;

import java.util.Date;
import java.util.List;

public interface ReplyReplyQuestionMapper {
    //添加回复
    int addReplyReplyQuestion(ReplyReplyQuestion replyReplyQuestion);

    //添加回复
    int addReplyReplyQuestionSelective(ReplyReplyQuestion replyReplyQuestion);

    //删除回复
    int deleteReplyReplyQuestion(Integer replyReplyQuesId);

    //修改回复
    int updateReplyReplyQuestion(ReplyReplyQuestion replyReplyQuestion);

    //修改回复不为空字段
    int updateReplyReplyQuestionSelective(ReplyReplyQuestion replyReplyQuestion);

    //通过id查询回复
    ReplyReplyQuestion selectReplyReplyQuestionByReplyReplyQuesId(Integer replyReplyQuesId);

    //通过用户id来查询回复
    List<ReplyReplyQuestion> selectReplyReplyQuestionByUserId(Integer userId);

    //通过回答id来查询回复
    List<ReplyReplyQuestion> selectReplyReplyQuestionByReplyquestionId(Integer replyquestionId);

    //通过回答id来查询回复数量
    int selectReplyReplyQuestionCountByReplyquestionId(Integer replyquestionId);


    //通过时间来查询回复
    List<ReplyReplyQuestion> selectReplyReplyQuestionByEReplyReplyQuesDate(Date replyReplyQuesDate);

    List<ReplyReplyQuestion> selectReplyReplyQuestionByLReplyReplyQuesDate(Date replyReplyQuesDate);






}
