package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    //添加角色
    int addRole(Role role);
    //删除角色
    int deleteRole(Integer roleId);
    //修改角色
    int updateRole(Role role);

    Role selectRoleByRoleId(Integer roleId);

    //查询所有角色
    List<Role> getAllRoles();
    //查询角色数量
    int getAllRoleCount();
    //通过管理员id查询出管理员所拥有角色
    List<Role> selectRoleNameByAdminId(@Param("adminId") Integer adminId);

}