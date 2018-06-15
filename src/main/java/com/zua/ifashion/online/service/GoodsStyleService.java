package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.GoodsStyle;

import java.util.List;

public interface GoodsStyleService {
    //    根据商品的id查询风格
    public List<GoodsStyle> getgoodsstyleListByGoodsId(Integer goodsId);
}
