package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Long idMessage);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Long idMessage);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKeyWithBLOBs(Message record);

    int updateByPrimaryKey(Message record);
}