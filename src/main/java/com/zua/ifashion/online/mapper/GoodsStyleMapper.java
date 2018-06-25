package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsStyle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsStyleMapper {
//    根据商品的id查询风格
    public List<GoodsStyle> goodsstyleList(Integer goodsId);

//    根据风格的id查询商品的id
    public List<Integer> selectGoodsByStyleId(@Param("styleId") Integer styleId);
}
