package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ArticleReview;

public interface ArticleReviewMapper {
    int deleteByPrimaryKey(Integer idReview);

    int insert(ArticleReview record);

    int insertSelective(ArticleReview record);

    ArticleReview selectByPrimaryKey(Integer idReview);

    int updateByPrimaryKeySelective(ArticleReview record);

    int updateByPrimaryKeyWithBLOBs(ArticleReview record);

    int updateByPrimaryKey(ArticleReview record);
}