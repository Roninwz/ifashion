package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Module;

public interface ModuleMapper {
    int deleteByPrimaryKey(Integer idModule);

    int insert(Module record);

    int insertSelective(Module record);

    Module selectByPrimaryKey(Integer idModule);

    int updateByPrimaryKeySelective(Module record);

    int updateByPrimaryKey(Module record);
}