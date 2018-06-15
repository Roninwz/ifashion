package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.mapper.GoodsMapper;
import com.zua.ifashion.online.service.GoodsService;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public List<Goods> getGoodsByConditions(Integer goodstypeId, Integer goodschildId,Integer goodsmaterialId) {
        List<Goods> goodsList=new ArrayList<>();
        goodsList=goodsMapper.selectGoodsByConditions(goodstypeId,goodschildId,goodsmaterialId);
        return goodsList;
    }

    @Override
    public List<GoodsAndImgDesignerVO> getGoodsByUserId(Integer userId) {
        return goodsMapper.selectGoodsByUserId(userId);
    }

    @Override
    public GoodsAndImgDesignerVO getGoodsByGoodsId(Integer goodsId) {
        return goodsMapper.selectGoodByGoodsId(goodsId);
    }
}
