package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.ReplyQuestion;

public interface ReplyQuestionMapper {
    int deleteByPrimaryKey(Integer idReplyquestion);

    int insert(ReplyQuestion record);

    int insertSelective(ReplyQuestion record);

    ReplyQuestion selectByPrimaryKey(Integer idReplyquestion);

    int updateByPrimaryKeySelective(ReplyQuestion record);

    int updateByPrimaryKeyWithBLOBs(ReplyQuestion record);

    int updateByPrimaryKey(ReplyQuestion record);
}