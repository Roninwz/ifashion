package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.RoleModule;
import com.zua.ifashion.person.mapper.RoleModuleMapper;
import com.zua.ifashion.person.service.RoleModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("roleModuleService")
public class RoleModuleServiceImpl implements RoleModuleService {
    @Autowired
    private RoleModuleMapper roleModuleMapper;
    @Override
    public int addRoleModule(RoleModule roleModule) {
        return roleModuleMapper.addRoleModule(roleModule);
    }

    @Override
    public int addBatchRoleModule(List<RoleModule> roleModules) {
        return roleModuleMapper.addBatchRoleModule(roleModules);
    }

    @Override
    public int deleteRoleModule(Integer rolemoduleId) {
        return roleModuleMapper.deleteRoleModule(rolemoduleId);
    }

    @Override
    public int updateRoleModuleSelective(RoleModule roleModule) {
        return roleModuleMapper.updateRoleModuleSelective(roleModule);
    }

    @Override
    public RoleModule selectRoleModuleById(Integer rolemoduleId) {
        return roleModuleMapper.selectRoleModuleById(rolemoduleId);
    }

    @Override
    public List<RoleModule> selectRoleModuleByRoleId(Integer roleId) {
        return roleModuleMapper.selectRoleModuleByRoleId(roleId);
    }

    @Override
    public List<RoleModule> getAllRoleModules() {
        return roleModuleMapper.getAllRoleModules();
    }
}
