package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.Complain;

public interface ComplainMapper {
    int deleteByPrimaryKey(Integer idComplain);

    int insert(Complain record);

    int insertSelective(Complain record);

    Complain selectByPrimaryKey(Integer idComplain);

    int updateByPrimaryKeySelective(Complain record);

    int updateByPrimaryKeyWithBLOBs(Complain record);

    int updateByPrimaryKey(Complain record);
}