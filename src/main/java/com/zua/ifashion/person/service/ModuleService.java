package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.Module;

import java.util.List;

public interface ModuleService {


    //添加功能模块
    int addModuleSelective(Module module);
    //删除功能模块
    int deleteModule(Integer moduleId);
    //更新功能模块
    int updateModuleSelective(Module module);
    //通过Id查询功能模块
    Module selectByModuleId(Integer moduleId);
    //获取所有功能模块
    List<Module> getAllModules();


    int getAllModuleCount();

}
