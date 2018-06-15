package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.ReplyReview;
import com.zua.ifashion.article.mapper.ReplyReviewMapper;
import com.zua.ifashion.article.service.ReplyReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("replyReviewService")
public class ReplyReviewServiceImpl implements ReplyReviewService {

    @Autowired
    private ReplyReviewMapper replyReviewMapper;

    @Override
    public int addReplyReview(ReplyReview replyReview) {
        return replyReviewMapper.addReplyReview(replyReview);
    }

    @Override
    public int addReplyReviewSelective(ReplyReview replyReview) {
        return replyReviewMapper.addReplyReviewSelective(replyReview);
    }

    @Override
    public int deleteReplyReviewByreplyreviewId(Integer replyreviewId) {
        return replyReviewMapper.deleteReplyReviewByreplyreviewId(replyreviewId);
    }

    @Override
    public int deleteReplyReviewByreviewId(Integer reviewId) {
        return replyReviewMapper.deleteReplyReviewByreviewId(reviewId);
    }

    @Override
    public int deleteReplyReviewByArticleId(Integer articleId) {
        return replyReviewMapper.deleteReplyReviewByArticleId(articleId);
    }

    @Override
    public List<ReplyReview> selectAllReplyReviewByReviewId(Integer reviewId) {
        return replyReviewMapper.selectAllReplyReviewByReviewId(reviewId);
    }

    @Override
    public List<ReplyReview> selectAllReplyReviewByUserId(Integer userId) {
        return replyReviewMapper.selectAllReplyReviewByUserId(userId);
    }

    @Override
    public List<ReplyReview> selectAllReplyReviewByUseredId(Integer useredId) {
        return replyReviewMapper.selectAllReplyReviewByUseredId(useredId);
    }
}
