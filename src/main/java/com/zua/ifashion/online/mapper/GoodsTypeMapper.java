package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsType;

public interface GoodsTypeMapper {
    int deleteByPrimaryKey(Integer idGoodstype);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    GoodsType selectByPrimaryKey(Integer idGoodstype);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
}