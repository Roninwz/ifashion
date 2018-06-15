package com.zua.ifashion.article.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class CommunityControl {

    @Autowired
    private ArticleMapper articleMapper;

    @RequestMapping(value = "/community",method = RequestMethod.GET)
    public String communityHome(HttpServletRequest request, HttpServletResponse response){

        List<Article> comArticle = new ArrayList<>();
        comArticle = articleMapper.selectArticleByArticletypeId(21);
        request.setAttribute("comArticle",comArticle);

        return "user/article/community/community";
    }
}
