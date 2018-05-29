package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.Question;

public interface QuestionMapper {
    int deleteByPrimaryKey(Integer idQuestion);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Integer idQuestion);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKeyWithBLOBs(Question record);

    int updateByPrimaryKey(Question record);
}