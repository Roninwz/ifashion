package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.entity.ClothesTagImg;
import com.zua.ifashion.article.mapper.ClothesTagImgMapper;
import com.zua.ifashion.article.service.ClothesTagImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("clothesTagImgService")
public class ClothesTagImgServiceImpl implements ClothesTagImgService {

    @Autowired
    ClothesTagImgMapper clothesTagImgMapper;

    @Override
    public List<ClothesTagImg> selectTagImgByTagId(Integer clothesTagId) {
        return clothesTagImgMapper.selectTagImgByTagId(clothesTagId);
    }

    @Override
    public int selectAllTagImgCount(Integer clothesTagId) {
        return clothesTagImgMapper.selectAllTagImgCount(clothesTagId);
    }

    @Override
    public Article selectArticleByArticleId(Integer articleId) {
        return clothesTagImgMapper.selectArticleByArticleId(articleId);
    }
}
