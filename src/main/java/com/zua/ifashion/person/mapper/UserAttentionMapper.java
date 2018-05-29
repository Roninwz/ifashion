package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.UserAttention;

public interface UserAttentionMapper {
    int deleteByPrimaryKey(Integer idAttention);

    int insert(UserAttention record);

    int insertSelective(UserAttention record);

    UserAttention selectByPrimaryKey(Integer idAttention);

    int updateByPrimaryKeySelective(UserAttention record);

    int updateByPrimaryKey(UserAttention record);
}