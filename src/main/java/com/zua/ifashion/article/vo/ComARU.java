package com.zua.ifashion.article.vo;

import java.util.List;

public class ComARU {

    private ArticleReviewUserVo articleReviewUserVo;

    private List<ReplyReviewUserVo> replyReviewUserVo;

    public ArticleReviewUserVo getArticleReviewUserVo() {
        return articleReviewUserVo;
    }

    public void setArticleReviewUserVo(ArticleReviewUserVo articleReviewUserVo) {
        this.articleReviewUserVo = articleReviewUserVo;
    }

    public List<ReplyReviewUserVo> getReplyReviewUserVo() {
        return replyReviewUserVo;
    }

    public void setReplyReviewUserVo(List<ReplyReviewUserVo> replyReviewUserVo) {
        this.replyReviewUserVo = replyReviewUserVo;
    }
}
