package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.Magazine;
import com.zua.ifashion.person.entity.MagazineWithBLOBs;

public interface MagazineMapper {
    int deleteByPrimaryKey(Integer idMaga);

    int insert(MagazineWithBLOBs record);

    int insertSelective(MagazineWithBLOBs record);

    MagazineWithBLOBs selectByPrimaryKey(Integer idMaga);

    int updateByPrimaryKeySelective(MagazineWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MagazineWithBLOBs record);

    int updateByPrimaryKey(Magazine record);
}