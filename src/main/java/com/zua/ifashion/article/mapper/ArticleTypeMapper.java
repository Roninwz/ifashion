package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ArticleType;

public interface ArticleTypeMapper {
    int deleteByPrimaryKey(Integer idArticletype);

    int insert(ArticleType record);

    int insertSelective(ArticleType record);

    ArticleType selectByPrimaryKey(Integer idArticletype);

    int updateByPrimaryKeySelective(ArticleType record);

    int updateByPrimaryKey(ArticleType record);
}