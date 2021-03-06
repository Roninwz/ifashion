package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.mapper.ArticleMapper;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.article.vo.ArticleUserVo;
import com.zua.ifashion.person.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public int addArticle(Article article) {
        return articleMapper.addArticle(article);
    }

    @Override
    public int addArticleSelective(Article article) {
        return articleMapper.addArticleSelective(article);
    }

    @Override
    public int deleteArticle(Integer articleId) {
        return articleMapper.deleteArticle(articleId);
    }

    @Override
    public int updateArticle(Article article) {
        return articleMapper.updateArticle(article);
    }

    @Override
    public int updateArticleSelective(Article article) {
        return articleMapper.updateArticleSelective(article);
    }

    @Override
    public Article selectArticleByArticleId(Integer articleId) {
        return articleMapper.selectArticleByArticleId(articleId);
    }

    @Override
    public List<Article> selectArticleByArticletypeId(Integer articletypeId) {
        return articleMapper.selectArticleByArticletypeId(articletypeId);
    }

    @Override
    public List<Article> selectArticleByTag(String tag) {
        return articleMapper.selectArticleByTag(tag);
    }

    @Override
    public List<Article> selectArticleByTitle(String articleTitle) {
        return articleMapper.selectArticleByTitle(articleTitle);
    }

    @Override
    public Article selectArticleByTitle2(String articleTitle) {
        return articleMapper.selectArticleByTitle2(articleTitle);
    }

    @Override
    public List<Article> selectAllArticle() {
        return articleMapper.selectAllArticle();
    }

    @Override
    public List<Article> selectLatestArticle() {
        return articleMapper.selectLatestArticle();
    }

    @Override
    public List<ArticleUserVo> selectLatestArticleByTypeId(Integer articletypeId) {
        return articleMapper.selectLatestArticleByTypeId(articletypeId);
    }

    @Override
    public List<Article> selectHottestArticle() {
        return articleMapper.selectHottestArticle();
    }

    @Override
    public List<ArticleUserVo> selectHottestArticleByTypeId(Integer articletypeId) {
        return articleMapper.selectHottestArticleByTypeId(articletypeId);
    }

    @Override
    public User selectUserByArticleId(Integer articleId) {
        return articleMapper.selectUserByArticleId(articleId);
    }

    @Override
    public List<Article> selectLatestArticleByUserId(Integer userId) {
        return articleMapper.selectLatestArticleByUserId(userId);
    }

    @Override
    public Article selectPreArticle(Integer articleId) {
        return articleMapper.selectPreArticle(articleId);
    }

    @Override
    public Article selectNextArticle(Integer articleId) {
        return articleMapper.selectNextArticle(articleId);
    }

    @Override
    public List<Article> selectArticleByUserId(Integer userId) {
        return articleMapper.selectArticleByUserId(userId);
    }
}
