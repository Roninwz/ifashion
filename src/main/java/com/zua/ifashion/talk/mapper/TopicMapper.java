package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.Topic;

public interface TopicMapper {
    int deleteByPrimaryKey(Integer idTopic);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Integer idTopic);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);
}