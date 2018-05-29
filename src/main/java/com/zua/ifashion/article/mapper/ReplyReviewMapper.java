package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ReplyReview;

public interface ReplyReviewMapper {
    int deleteByPrimaryKey(Integer idReplyreview);

    int insert(ReplyReview record);

    int insertSelective(ReplyReview record);

    ReplyReview selectByPrimaryKey(Integer idReplyreview);

    int updateByPrimaryKeySelective(ReplyReview record);

    int updateByPrimaryKeyWithBLOBs(ReplyReview record);

    int updateByPrimaryKey(ReplyReview record);
}