package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.Module;
import com.zua.ifashion.person.mapper.ModuleMapper;
import com.zua.ifashion.person.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("moduleService")
public class ModuleServiceImpl implements ModuleService {
    @Autowired
    private ModuleMapper moduleMapper;
    @Override
    public int addModuleSelective(Module module) {
        return moduleMapper.addModuleSelective(module);
    }

    @Override
    public int deleteModule(Integer moduleId) {
        return moduleMapper.deleteModule(moduleId);
    }

    @Override
    public int updateModuleSelective(Module module) {
        return moduleMapper.updateModuleSelective(module);
    }

    @Override
    public Module selectByModuleId(Integer moduleId) {
        return moduleMapper.selectByModuleId(moduleId);
    }

    @Override
    public List<Module> getAllModules() {
        return moduleMapper.getAllModules();
    }

    @Override
    public int getAllModuleCount() {
        return moduleMapper.getAllModuleCount();
    }

    @Override
    public List<Module> getAllOneMenus() {
        return moduleMapper.getAllOneMenus();
    }

    @Override
    public List<Module> getAllTwoMenus() {
        return moduleMapper.getAllTwoMenus();
    }

    @Override
    public List<Module> getOneMenuTwoMenus(Integer moduleId) {
        return moduleMapper.getOneMenuTwoMenus(moduleId);
    }
}
