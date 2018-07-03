package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsChildType;
import com.zua.ifashion.online.mapper.GoodsChildTypeMapper;
import com.zua.ifashion.online.service.GoodsChildTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsChildTypeServiceImpl implements GoodsChildTypeService{
    @Autowired
    private GoodsChildTypeMapper goodsChildTypeMapper;
    @Override
    public List<GoodsChildType> getAllGoodsChildType(Integer goodstypeId) {
        return goodsChildTypeMapper.selectGoodsChildType(goodstypeId);
    }
    @Override
    public GoodsChildType selectGoodsChildTypeByGoodsChildId(Integer goodschildId) {
        return goodsChildTypeMapper.selectGoodsChildTypeByGoodsChildId(goodschildId);
    }
}
