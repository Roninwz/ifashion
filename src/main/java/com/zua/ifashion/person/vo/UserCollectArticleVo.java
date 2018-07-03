package com.zua.ifashion.person.vo;

import com.zua.ifashion.article.vo.ArticleUserVo;
import com.zua.ifashion.person.entity.MyCollection;

public class UserCollectArticleVo extends MyCollection{

    private ArticleUserVo articleUserVo;

    public ArticleUserVo getArticleUserVo() {
        return articleUserVo;
    }

    public void setArticleUserVo(ArticleUserVo articleUserVo) {
        this.articleUserVo = articleUserVo;
    }

    public UserCollectArticleVo() {

    }

    public UserCollectArticleVo(Integer mycollectId, Integer userId, Integer articleId, Integer topicId, ArticleUserVo articleUserVo) {
        super(mycollectId, userId, articleId, topicId);
        this.articleUserVo = articleUserVo;
    }

    public UserCollectArticleVo(ArticleUserVo articleUserVo) {
        this.articleUserVo = articleUserVo;
    }
}
