package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.online.mapper.GoodsReviewMapper;
import com.zua.ifashion.online.service.GoodsReviewService;
import com.zua.ifashion.person.entity.User;
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

    @Override
    public List<User> getUserByGoodsId(Integer goodsId) {
        return goodsReviewMapper.selectUserByGoodsId(goodsId);
    }

    @Override
    public int addGoodsReview(GoodsReview goodsReview) {
        return goodsReviewMapper.addGoodsReview(goodsReview);
    }

    @Override
    public int addGoodsReviewSelective(GoodsReview goodsReview) {
        return goodsReviewMapper.addGoodsReviewSelective(goodsReview);
    }
}
