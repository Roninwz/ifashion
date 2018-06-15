package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsStyle;

import java.util.List;

public interface GoodsStyleMapper {
//    根据商品的id查询风格
    public List<GoodsStyle> goodsstyleList(Integer goodsId);
}
