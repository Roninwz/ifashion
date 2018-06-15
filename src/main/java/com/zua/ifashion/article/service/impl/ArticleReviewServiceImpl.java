package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.article.mapper.ArticleReviewMapper;
import com.zua.ifashion.article.service.ArticleReviewService;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("articleReviewService")
public class ArticleReviewServiceImpl implements ArticleReviewService {

    @Autowired
    private ArticleReviewMapper articleReviewMapper;

    @Override
    public int deleteArticleReviewByReviewId(Integer reviewId) {
        return articleReviewMapper.deleteArticleReviewByReviewId(reviewId);
    }

    @Override
    public int deleteArticleReviewByUserId(Integer userId) {
        return articleReviewMapper.deleteArticleReviewByUserId(userId);
    }

    @Override
    public int deleteArticleReviewByArticleId(Integer articleId) {
        return articleReviewMapper.deleteArticleReviewByArticleId(articleId);
    }

    @Override
    public List<ArticleReview> selectArticleReviewByArticleId(Integer articleId) {
        return articleReviewMapper.selectArticleReviewByArticleId(articleId);
    }

    @Override
    public ArticleReview selectArticleReviewByUserId(Integer userId) {
        return articleReviewMapper.selectArticleReviewByUserId(userId);
    }

    @Override
    public List<ArticleReview> selectLatestReviewByArticleId(Integer articleId) {
        return articleReviewMapper.selectLatestReviewByArticleId(articleId);
    }

    @Override
    public List<ArticleReview> selectAllArticleReview() {
        return articleReviewMapper.selectAllArticleReview();
    }

    @Override
    public ArticleReviewUserVo selectUserByRevicewId(Integer reviewId) {
        return articleReviewMapper.selectUserByRevicewId(reviewId);
    }
}
