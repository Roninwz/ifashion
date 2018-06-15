package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsChildType;

import java.util.List;

public interface GoodsChildTypeMapper {
//    根据大类型的id得到所有的小类型
    public List<GoodsChildType> selectGoodsChildType(Integer goodstypeId);
}
