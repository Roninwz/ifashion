package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.entity.ClothesTagImg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagImgMapper {

    //根据ClothesTagId查询ClothesTagImg实体
    List<ClothesTagImg> selectTagImgByTagId(@Param("clothesTagId") Integer clothesTagId);

    //根据clothesTagId 查询tagImg实体数量
    int selectAllTagImgCount(@Param("clothesTagId") Integer clothesTagId);

    //根据articleId 查询文章
    Article selectArticleByArticleId(@Param("articleId") Integer articleId);

    //添加不为空字段实体
    int addTagImgSelective(ClothesTagImg clothesTagImg);
}
