package com.zua.ifashion.article.vo;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.person.entity.User;

import java.util.Date;

public class ArticleUserVo extends Article{

    private User user;

    public ArticleUserVo(Integer articleId, String articleTitle, Integer articletypeId, String content, String imgurl, String imgmark, String tag, Date articleDate, Integer adminId, Integer userId, Integer zanNum, Integer collectNum, Integer reviewNum, Integer state, User user) {
        super(articleId, articleTitle, articletypeId, content, imgurl, imgmark, tag, articleDate, adminId, userId, zanNum, collectNum, reviewNum, state);
        this.user = user;
    }

    public ArticleUserVo(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ArticleUserVo(){}


}
