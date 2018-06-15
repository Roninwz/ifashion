package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsType;

import java.util.List;

public interface GoodsTypeMapper {
    public abstract int addGoodsType(GoodsType goodsType);
    public abstract int addGoodsTypeSelective(GoodsType goodsType);
    public abstract int deleteGoodsTypeById(Integer goodstypeId);
    public abstract int deleteGoodsTypeByName(String goodstypeName);
    public abstract List<GoodsType> selectAllGoodsType();

}