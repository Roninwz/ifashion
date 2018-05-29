package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.AdminRole;

public interface AdminRoleMapper {
    int deleteByPrimaryKey(Integer idAdminrole);

    int insert(AdminRole record);

    int insertSelective(AdminRole record);

    AdminRole selectByPrimaryKey(Integer idAdminrole);

    int updateByPrimaryKeySelective(AdminRole record);

    int updateByPrimaryKey(AdminRole record);
}