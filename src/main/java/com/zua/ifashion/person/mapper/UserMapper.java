package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer idUser);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer idUser);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}