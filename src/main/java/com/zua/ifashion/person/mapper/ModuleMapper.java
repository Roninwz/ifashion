package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Module;

import java.util.List;

public interface ModuleMapper {
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

    //通过模块功能Id查询功能模块下的一级菜单
    //     Module selectMenuOneById(Integer moduleId);
        int getAllModuleCount();

        //查询所有的一级
    List<Module> getAllOneMenus();
    //查询所有二级菜单
    List<Module> getAllTwoMenus();

    //根据一级菜单id查询二级菜单
    List<Module> getOneMenuTwoMenus(Integer moduleId);


}