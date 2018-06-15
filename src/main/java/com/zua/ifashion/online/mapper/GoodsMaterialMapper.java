package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsMaterial;

public interface GoodsMaterialMapper {
//    根据商品的id查询材质
    public GoodsMaterial selectGoodsMaterialByGoodsId(Integer goodsId);
}
