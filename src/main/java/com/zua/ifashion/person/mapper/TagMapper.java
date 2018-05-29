package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Tag;

public interface TagMapper {
    int deleteByPrimaryKey(Integer idTag);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Integer idTag);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
}