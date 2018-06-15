package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsType;
import com.zua.ifashion.online.mapper.GoodsTypeMapper;
import com.zua.ifashion.online.service.GoodsTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsTypeServiceImpl implements GoodsTypeService {
    @Autowired
    private GoodsTypeMapper goodsTypeMapper;
    @Override
    public List<GoodsType> getAllGoodsType() {
        return goodsTypeMapper.selectAllGoodsType();
    }
}
