package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsImg;

public interface GoodsImgMapper {
    int deleteByPrimaryKey(Integer idGoodsimg);

    int insert(GoodsImg record);

    int insertSelective(GoodsImg record);

    GoodsImg selectByPrimaryKey(Integer idGoodsimg);

    int updateByPrimaryKeySelective(GoodsImg record);

    int updateByPrimaryKey(GoodsImg record);
}