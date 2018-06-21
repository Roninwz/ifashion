package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;
import com.zua.ifashion.person.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleReviewMapper {

    //添加评论不为空字段
    int addArticleReviewSelective(ArticleReview articleReview);

    //根据评论id删除评论
    int deleteArticleReviewByReviewId(@Param("reviewId") Integer reviewId);

    //根据用户id删除评论
    int deleteArticleReviewByUserId(@Param("userId") Integer userId);

    //根据文章id删除评论
    int deleteArticleReviewByArticleId(@Param("articleId") Integer articleId);

    //根据文章id 查询评论
    List<ArticleReview> selectArticleReviewByArticleId(@Param("articleId") Integer articleId);

    //根据用户id查询评论
    ArticleReview selectArticleReviewByUserId(@Param("userId") Integer userId);

    //根据文章id 时间降序查询评论
    List<ArticleReview> selectLatestReviewByArticleId(@Param("articleId") Integer articleId);

    //查询所有评论
    List<ArticleReview> selectAllArticleReview();

    //根据评论id查询用户
    ArticleReviewUserVo selectUserByRevicewId(@Param("reviewId") Integer reviewId);

}