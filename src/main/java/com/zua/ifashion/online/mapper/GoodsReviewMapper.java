package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsReview;
import com.zua.ifashion.person.entity.User;

import java.util.List;

public interface GoodsReviewMapper {

    public abstract int addGoodsReview(GoodsReview goodsReview);

    public abstract int addGoodsReviewSelective(GoodsReview goodsReview);

    public abstract int deleteGoodsReview(Integer goodsreviewgId);

//    根据id查询
    public abstract GoodsReview selectGoodsReviewById(Integer goodsreviewgId);

//    根据用户id查询
    public abstract List<GoodsReview> selectGoodsReviewByUserId(Integer userId);

//    根据商品id查询
    public abstract List<GoodsReview> selectGoodsReviewByGoodsId(Integer goodsId);

//    根据商品的id得到评价该商品的所有用户
    public abstract  List<User> selectUserByGoodsId(Integer goodsId);

//查询所有的评论
    public abstract List<GoodsReview> selectAllGoodsReview();





}