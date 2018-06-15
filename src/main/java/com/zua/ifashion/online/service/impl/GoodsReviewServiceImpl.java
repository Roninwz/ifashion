package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.online.mapper.GoodsReviewMapper;
import com.zua.ifashion.online.service.GoodsReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsReviewServiceImpl implements GoodsReviewService {
    @Autowired
    private GoodsReviewMapper goodsReviewMapper;
    @Override
    public List<GoodsReview> getGoodsReviewByGoodsId(Integer goodsId) {
        return goodsReviewMapper.selectGoodsReviewByGoodsId(goodsId);
    }

    @Override
    public List<GoodsReview> getGoodsReviewByUserid(Integer userId) {
        return goodsReviewMapper.selectGoodsReviewByUserId(userId);
    }
}
