package com.zua.ifashion.article.mapper;
import com.zua.ifashion.article.entity.Article;
public interface ArticleMapper {
    int deleteByPrimaryKey(Integer idArticle);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer idArticle);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}