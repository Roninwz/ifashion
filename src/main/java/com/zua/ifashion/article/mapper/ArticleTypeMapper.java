package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleTypeMapper {

    //根据文章类型名称查找文章
    List<Article> selectArticleByArticletypeName(@Param("articletypeName") String articletypeName);

    //根据类型id查询文章
    Article selectArticleByTypeId(@Param("articleTypeId") Integer articleTypeId);

}