package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;

import java.util.List;

public interface ArticleReviewService {

    int addArticleReviewSelective( ArticleReview articleReview);

    //根据评论id删除评论
    int deleteArticleReviewByReviewId(Integer reviewId);

    //根据用户id删除评论
    int deleteArticleReviewByUserId(Integer userId);

    //根据文章id删除评论
    int deleteArticleReviewByArticleId(Integer articleId);

    //根据文章id查询评论
    List<ArticleReview> selectArticleReviewByArticleId( Integer articleId);

    //根据用户id查询评论
    ArticleReview selectArticleReviewByUserId(Integer userId);

    //根据文章id 时间降序查询评论
    List<ArticleReview> selectLatestReviewByArticleId(Integer articleId);

    //查询所有评论
    List<ArticleReview> selectAllArticleReview();

    //根据评论id查询用户
    ArticleReviewUserVo selectUserByRevicewId( Integer reviewId);

}
