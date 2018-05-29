package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.RoleModule;

public interface RoleModuleMapper {
    int deleteByPrimaryKey(Integer idRolemodule);

    int insert(RoleModule record);

    int insertSelective(RoleModule record);

    RoleModule selectByPrimaryKey(Integer idRolemodule);

    int updateByPrimaryKeySelective(RoleModule record);

    int updateByPrimaryKey(RoleModule record);
}