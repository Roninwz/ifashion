package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.Role;

import java.util.List;

public interface RoleService {

    //添加角色
    int addRole(Role role);
    //删除角色
    int deleteRole(int roleId);
    //修改角色
    int updateRole(Role role);

    Role selectRoleByRoleId(Integer roleId);
    //查询所有角色
    List<Role> getAllRoles();
    //查询角色数量
    int getAllRoleCount();
}
