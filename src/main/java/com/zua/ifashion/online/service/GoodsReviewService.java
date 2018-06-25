package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.person.entity.User;

import java.util.List;

public interface GoodsReviewService {
//    根据商品查询所有评论
    public abstract List<GoodsReview> getGoodsReviewByGoodsId(Integer goodsId);

    public abstract List<GoodsReview> getGoodsReviewByUserid(Integer userId);

//    根据商品的id查询评价该商品的所有用户
    public abstract List<User> getUserByGoodsId(Integer goodsId);

    public abstract int addGoodsReview(GoodsReview goodsReview);

    public abstract int addGoodsReviewSelective(GoodsReview goodsReview);


}
