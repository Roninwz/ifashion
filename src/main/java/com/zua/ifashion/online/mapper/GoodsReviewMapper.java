package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsReview;

public interface GoodsReviewMapper {
    int deleteByPrimaryKey(Integer idGoodsreview);

    int insert(GoodsReview record);

    int insertSelective(GoodsReview record);

    GoodsReview selectByPrimaryKey(Integer idGoodsreview);

    int updateByPrimaryKeySelective(GoodsReview record);

    int updateByPrimaryKey(GoodsReview record);
}