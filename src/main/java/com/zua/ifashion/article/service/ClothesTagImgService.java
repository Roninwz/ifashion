package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.entity.ClothesTagImg;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagImgService {

    List<ClothesTagImg> selectTagImgByTagId(@Param("clothesTagId") Integer clothesTagId);

    int selectAllTagImgCount(@Param("clothesTagId") Integer clothesTagId);

    Article selectArticleByArticleId(@Param("articleId") Integer articleId);

}
