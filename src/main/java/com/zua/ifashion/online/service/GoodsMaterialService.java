package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.GoodsMaterial;

public interface GoodsMaterialService {
    //    根据商品的id查询材质
   public GoodsMaterial getGoodsMaterialByGoodsId(Integer goodsId);
}
