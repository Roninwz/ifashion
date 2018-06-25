package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsStyle;
import com.zua.ifashion.online.mapper.GoodsStyleMapper;
import com.zua.ifashion.online.service.GoodsStyleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsStyleServiceImpl implements GoodsStyleService {
    @Autowired
    private GoodsStyleMapper goodsStyleMapper;
    @Override
    public List<GoodsStyle> getgoodsstyleListByGoodsId(Integer goodsId) {
        return goodsStyleMapper.goodsstyleList(goodsId);
    }

    @Override
    public List<Integer> getGoodsByStyleId(Integer styleId) {
        return goodsStyleMapper.selectGoodsByStyleId(styleId);
    }
}
