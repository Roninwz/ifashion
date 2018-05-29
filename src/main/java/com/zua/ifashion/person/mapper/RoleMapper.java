package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer idRole);

    int insert(Role record);


    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer idRole);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}