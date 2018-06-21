package com.zua.ifashion.article.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.article.mapper.ArticleMapper;
import com.zua.ifashion.article.service.ArticleReviewService;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class CommunityControl {


    @Autowired
    private ArticleService articleService;

    @Autowired
    private ArticleReviewService articleReviewService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/community",method = RequestMethod.GET)
    public String communityHome(HttpServletRequest request, HttpServletResponse response){

        List<Article> comArticle = new ArrayList<>();
        comArticle = articleService.selectArticleByArticletypeId(21);
        request.setAttribute("comArticle",comArticle);

        return "user/article/community/community";
    }

    @RequestMapping(value = "/community/communityInfo",method = RequestMethod.GET)
    public String communityInfo(HttpServletRequest request,Integer articleId, HttpServletResponse response){

        System.out.println(articleId);
        //文章内容
        Article article = articleService.selectArticleByArticleId(articleId);
        System.out.println(article.getArticleTitle());
        System.out.println(article.getContent());

        //文章作者信息
        User user = articleService.selectUserByArticleId(articleId);
        System.out.println(user.getUsername());

        //文章作者最近写过的文章
        List<Article> articles = new ArrayList<>();
        articles = articleService.selectLatestArticleByUserId(user.getUserId());

        //本篇文章的上一篇文章和下一篇文章
        Article preArticle = articleService.selectPreArticle(articleId);
        Article nextArticle = articleService.selectNextArticle(articleId);

        //最热门的十篇文章
        List<Article> hotArticle = new ArrayList<>();
        hotArticle = articleService.selectHottestArticle();

        //最新发布的四篇文章
        List<Article> newArticle = new ArrayList<>();
        newArticle = articleService.selectLatestArticle();

        //评论
        List<ArticleReview> reviews = new ArrayList<>();
        reviews = articleReviewService.selectLatestReviewByArticleId(articleId);

        //查用户评论封装集合
        List<ArticleReviewUserVo> arvo=new ArrayList<>();
        for (ArticleReview ar:reviews){
            ArticleReviewUserVo articleReviewUserVo=articleReviewService.selectUserByRevicewId(ar.getReviewId());
            arvo.add(articleReviewUserVo);
        }



        request.setAttribute("article",article);
        request.setAttribute("user",user);
        request.setAttribute("preArticle",preArticle);
        request.setAttribute("nextArticle",nextArticle);
        request.setAttribute("articles",articles);
        request.setAttribute("hotArticle",hotArticle);
        request.setAttribute("newArticle",newArticle);
        request.setAttribute("arvo",arvo);


        return "user/article/community/communityInfo";
    }

    @RequestMapping(value = "/community/ajaxAddReview", method = RequestMethod.POST)
    @ResponseBody
    public ArticleReview ajaxAddReview(HttpSession session, @RequestBody ArticleReview articleReview, Map<String,Object> map) {

        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
//        Integer userId= (Integer) session.getAttribute("userId");
        //Integer uid=Integer.parseInt(userId);
        User user=userService.selectUserByUserId(1);
        ArticleReview articleReview1 = new ArticleReview();

        Date d = new Date();
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String now = df.format(d);

        articleReview1.setArticleId(articleReview.getArticleId());
        articleReview1.setReviewContent(articleReview.getReviewContent());
        articleReview1.setUserId(user.getUserId());
        articleReview1.setReviewDate(d);
        articleReviewService.addArticleReviewSelective(articleReview1);



        ArticleReviewUserVo articleReviewUserVo = new ArticleReviewUserVo();
        articleReviewUserVo.setUser(user);
        articleReviewUserVo.setArticleId(articleReview1.getArticleId());
        articleReviewUserVo.setReviewId(articleReview1.getReviewId());
        articleReviewUserVo.setReviewContent(articleReview1.getReviewContent());
        articleReviewUserVo.setReviewDate(articleReview1.getReviewDate());



        return articleReviewUserVo;
    }
}
