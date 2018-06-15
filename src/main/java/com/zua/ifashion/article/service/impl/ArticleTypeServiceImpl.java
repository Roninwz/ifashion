package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.mapper.ArticleTypeMapper;
import com.zua.ifashion.article.service.ArticleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("articleTypeService")
public class ArticleTypeServiceImpl implements ArticleTypeService{

    @Autowired
    private ArticleTypeMapper articleTypeMapper;

    @Override
    public List<Article> selectArticleByArticletypeName(String articletypeName) {
        return articleTypeMapper.selectArticleByArticletypeName(articletypeName);
    }

    @Override
    public Article selectArticleByTypeId(Integer articleTypeId) {
        return articleTypeMapper.selectArticleByTypeId(articleTypeId);
    }
}
