package com.zua.ifashion.article.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class NewsControl {

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "/newsHome",method = RequestMethod.GET)
    public String newsHome(){


        return "user/article/news/newsHome";
    }

    @RequestMapping(value = "/newsInfo",method = RequestMethod.GET)
    public String newsInfo(HttpServletRequest request, Integer articleId, HttpServletResponse response){

        System.out.println(articleId);
        //文章内容
        Article article = articleService.selectArticleByArticleId(articleId);
        System.out.println(article.getArticleTitle());
        System.out.println(article.getContent());


        //本篇文章的上一篇文章和下一篇文章
        Article preArticle = articleService.selectPreArticle(articleId);
        Article nextArticle = articleService.selectNextArticle(articleId);


        request.setAttribute("article",article);
        request.setAttribute("preArticle",preArticle);
        request.setAttribute("nextArticle",nextArticle);

        return "user/article/news/newsInfo";
    }


}
