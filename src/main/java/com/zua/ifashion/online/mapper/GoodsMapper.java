package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer idGoods);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer idGoods);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
}