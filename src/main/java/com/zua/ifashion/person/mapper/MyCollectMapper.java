package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.MyCollect;

public interface MyCollectMapper {
    int deleteByPrimaryKey(Integer idMycollect);

    int insert(MyCollect record);

    int insertSelective(MyCollect record);

    MyCollect selectByPrimaryKey(Integer idMycollect);

    int updateByPrimaryKeySelective(MyCollect record);

    int updateByPrimaryKey(MyCollect record);
}