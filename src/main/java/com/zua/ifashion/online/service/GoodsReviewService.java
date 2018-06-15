package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.GoodsReview;

import java.util.List;

public interface GoodsReviewService {
//    根据商品查询所有评论
    public abstract List<GoodsReview> getGoodsReviewByGoodsId(Integer goodsId);

    public abstract List<GoodsReview> getGoodsReviewByUserid(Integer userId);


}
