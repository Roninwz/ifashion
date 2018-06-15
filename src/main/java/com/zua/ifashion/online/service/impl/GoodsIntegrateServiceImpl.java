package com.zua.ifashion.online.service.impl;


import com.zua.ifashion.online.mapper.GoodsIntegrateVOMapper;

import com.zua.ifashion.online.service.GoodsIntegrateService;

import com.zua.ifashion.online.vo.GoodsIntegrateVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsIntegrateServiceImpl implements GoodsIntegrateService {
    @Autowired
    private GoodsIntegrateVOMapper goodsIntegrateVOMapper;
    @Override
    public List<GoodsIntegrateVO> getAllGoodsIntegrate() {
        return goodsIntegrateVOMapper.selectAllGoodsIntegrateList();
    }
}
