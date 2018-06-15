package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ReplyReview;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyReviewMapper {

    //添加回复评论
    int addReplyReview(@Param("replyReview") ReplyReview replyReview);

    //添加非空字段回复评论
    int addReplyReviewSelective(@Param("replyReview") ReplyReview replyReview);

    //根据回复评论id 删除回复评论
    int deleteReplyReviewByreplyreviewId(@Param("replyreviewId") Integer replyreviewId);

    //根据评论id 删除回复评论
    int deleteReplyReviewByreviewId(@Param("reviewId") Integer reviewId);

    //根据文章id 删除回复评论
    int deleteReplyReviewByArticleId(@Param("articleId") Integer articleId);

    //根据评论id查询所有回复评论
    List<ReplyReview> selectAllReplyReviewByReviewId(@Param("reviewId") Integer reviewId);

    //根据userId查询所有回复评论
    List<ReplyReview> selectAllReplyReviewByUserId(@Param("userId") Integer userId);

    //根据useredId查询所有回复评论
    List<ReplyReview> selectAllReplyReviewByUseredId(@Param("useredId") Integer useredId);




}