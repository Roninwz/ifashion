package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.Discuss;

public interface DiscussMapper {
    int deleteByPrimaryKey(Integer idDiscuss);

    int insert(Discuss record);

    int insertSelective(Discuss record);

    Discuss selectByPrimaryKey(Integer idDiscuss);

    int updateByPrimaryKeySelective(Discuss record);

    int updateByPrimaryKeyWithBLOBs(Discuss record);

    int updateByPrimaryKey(Discuss record);
}