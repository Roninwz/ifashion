package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.RoleModule;

import java.util.List;

public interface RoleModuleService {



    //添加角色功能模块
    int addRoleModule(RoleModule roleModule);

    //批量插入
    int addBatchRoleModule(List<RoleModule> roleModules);
    //删除角色功能模块
    int deleteRoleModule(Integer rolemoduleId);

    //更新
    int updateRoleModuleSelective(RoleModule roleModule);

    //根据主键id查询
    RoleModule selectRoleModuleById(Integer rolemoduleId);

    //根据角色id查询角色功能模块集合
    List<RoleModule> selectRoleModuleByRoleId(Integer roleId);

    List<RoleModule> getAllRoleModules();
}
