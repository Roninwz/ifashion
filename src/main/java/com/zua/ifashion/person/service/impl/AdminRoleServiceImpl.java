package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.AdminRole;
import com.zua.ifashion.person.mapper.AdminRoleMapper;
import com.zua.ifashion.person.service.AdminRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("adminRoleService")
public class AdminRoleServiceImpl implements AdminRoleService{


    @Autowired
    private AdminRoleMapper adminRoleMapper;

    @Override
    public int addAdminRoleSelective(AdminRole adminRole) {
        return adminRoleMapper.addAdminRoleSelective(adminRole);
    }

    @Override
    public int deleteAdminRole(int adminroleId) {
        return adminRoleMapper.deleteAdminRole(adminroleId);
    }

    @Override
    public int updateAdminRoleSelective(AdminRole adminRole) {
        return adminRoleMapper.updateAdminRoleSelective(adminRole);
    }

    @Override
    public AdminRole selectAdminRoleById(int adminroleId) {
        return adminRoleMapper.selectAdminRoleById(adminroleId);
    }

    @Override
    public List<AdminRole> selectAdminRoleByAdminId(int adminId) {
        return adminRoleMapper.selectAdminRoleByAdminId(adminId);
    }

    @Override
    public List<AdminRole> getAllAdminRole() {
        return adminRoleMapper.getAllAdminRole();
    }
}
