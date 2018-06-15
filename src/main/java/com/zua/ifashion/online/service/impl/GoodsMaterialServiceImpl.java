package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsMaterial;
import com.zua.ifashion.online.mapper.GoodsMaterialMapper;
import com.zua.ifashion.online.service.GoodsMaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsMaterialServiceImpl implements GoodsMaterialService {
    @Autowired
    private GoodsMaterialMapper goodsMaterialMapper;
    @Override
    public GoodsMaterial getGoodsMaterialByGoodsId(Integer goodsId) {
        return goodsMaterialMapper.selectGoodsMaterialByGoodsId(goodsId);
    }
}
