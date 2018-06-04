package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.mapper.AdminMapper;
import com.zua.ifashion.person.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    @Override
    public int addAdminSelective(Admin admin) {
        return adminMapper.addAdminSelective(admin);
    }

    @Override
    public int deleteAdmin(Integer adminId) {
        return adminMapper.deleteAdmin(adminId);
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    @Override
    public int updateAdminSelective(Admin admin) {
        return adminMapper.updateAdminSelective(admin);
    }

    @Override
    public Admin selectAdminByAdminId(Integer adminId) {
        return adminMapper.selectAdminByAdminId(adminId);
    }

    @Override
    public Admin selectAdminByAdminName(String adminName) {
        return adminMapper.selectAdminByAdminName(adminName);
    }

    @Override
    public Admin selectAdminByAdminNameAndPass(String adminName, String password) {
        return adminMapper.selectAdminByAdminNameAndPass(adminName,password);
    }

    @Override
    public List<Admin> getAllAdmins() {
        return adminMapper.getAllAdmins();
    }

    @Override
    public int getAllAdminCount() {
        return adminMapper.getAllAdminCount();
    }
}
