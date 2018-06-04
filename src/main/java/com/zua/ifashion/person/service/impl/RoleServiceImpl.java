package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.Role;
import com.zua.ifashion.person.mapper.RoleMapper;
import com.zua.ifashion.person.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("roleService")
public class RoleServiceImpl implements RoleService{
    @Autowired
    private RoleMapper roleMapper;
    @Override
    public int addRole(Role role) {
        return roleMapper.addRole(role);
    }

    @Override
    public int deleteRole(int roleId) {
        return roleMapper.deleteRole(roleId);
    }

    @Override
    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    @Override
    public Role selectRoleByRoleId(Integer roleId) {
        return roleMapper.selectRoleByRoleId(roleId);
    }

    @Override
    public List<Role> getAllRoles() {
        return roleMapper.getAllRoles();
    }

    @Override
    public int getAllRoleCount() {
        return roleMapper.getAllRoleCount();
    }
}
