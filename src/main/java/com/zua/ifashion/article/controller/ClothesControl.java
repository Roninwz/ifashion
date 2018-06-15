package com.zua.ifashion.article.controller;


import com.zua.ifashion.article.entity.*;
import com.zua.ifashion.article.service.*;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;
import com.zua.ifashion.article.vo.ArticleUserVo;
import com.zua.ifashion.article.vo.ReplyReviewUserVo;
import com.zua.ifashion.person.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class ClothesControl {

    @Autowired
    private ClothesTagTypeService clothesTagTypeService;

    @Autowired
    private ClothesTagService clothesTagService;

    @Autowired
    private ClothesTagImgService tagImgService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private ArticleReviewService articleReviewService;

    @RequestMapping(value = "/clothes",method = RequestMethod.GET)
    public String ClothesHome(Map<String,Object> map, HttpServletRequest request, HttpServletResponse response){

        //上部标签部分开始
        List<ClothesTagType> tagType1 = new ArrayList<>();
        tagType1 = clothesTagTypeService.selectTagTypeByType("风格");
        request.setAttribute("tagType1",tagType1);

        List<ClothesTagType> tagType2 = new ArrayList<>();
        tagType2 = clothesTagTypeService.selectTagTypeByType("效果");
        request.setAttribute("tagType2",tagType2);

        List<ClothesTagType> tagType3 = new ArrayList<>();
        tagType3 = clothesTagTypeService.selectTagTypeByType("颜色");
        request.setAttribute("tagType3",tagType3);

        List<ClothesTagType> tagType4 = new ArrayList<>();
        tagType4 = clothesTagTypeService.selectTagTypeByType("场合");
        request.setAttribute("tagType4",tagType4);

        List<ClothesTag> tag1=new ArrayList<>();
        tag1=clothesTagService.selectTagNameByType("风格");
        request.setAttribute("tag1",tag1);

        List<ClothesTag> tag2=new ArrayList<>();
        tag2=clothesTagService.selectTagNameByType("效果");
        request.setAttribute("tag2",tag2);

        List<ClothesTag> tag3=new ArrayList<>();
        tag3=clothesTagService.selectTagNameByType("颜色");
        request.setAttribute("tag3",tag3);

        List<ClothesTag> tag4=new ArrayList<>();
        tag4=clothesTagService.selectTagNameByType("场合");
        request.setAttribute("tag4",tag4);
        //标签部分结束


        //下部最IN搭配开始，按赞数显示前10个最热门的搭配
        List<ArticleUserVo> hotMatch = new ArrayList<>();
        hotMatch = articleService.selectHottestArticleByTypeId(11);
        request.setAttribute("hotMatch",hotMatch);
        //下部最IN搭配结束


        //底部每日精选开始
        List<ArticleUserVo> dailyBest = new ArrayList<>();
        dailyBest = articleService.selectLatestArticleByTypeId(12);
        request.setAttribute("dailyBest",dailyBest);
        //底部每日精选结束

        return "user/article/clothes/clothes";
    }

    @RequestMapping(value = "/clothes/clothesTag",method = RequestMethod.GET)
    public String clothesTag(HttpServletRequest request,Integer clothesTagId, HttpServletResponse response){

        //获取tagImg集合
        List<ClothesTagImg> tagImg = new ArrayList<>();
        List<ClothesTagImg> tagImg1 = new ArrayList<>();
        tagImg = tagImgService.selectTagImgByTagId(clothesTagId);

        //根据tagId获取该类型下的总数量
        int tagImgCount = tagImgService.selectAllTagImgCount(clothesTagId);

        //得到tagImg集合中的第一个元素
        ClothesTagImg clothesTagImg=tagImg.get(0);
        request.setAttribute("clothesTagImg",clothesTagImg);

        //将除去第一个元素的集合赋给另一个集合
        for(int i=1;i<tagImg.size();i++){
            tagImg1.add(tagImg.get(i));
        }

        request.setAttribute("tagImgCount",tagImgCount);
        request.setAttribute("tagImg1",tagImg1);
        request.setAttribute("tagImg",tagImg);

        return "user/article/clothes/clothesTag";
    }

    @RequestMapping(value = "/clothes/matchInfo",method = RequestMethod.GET)
    public String matchInfo(HttpServletRequest request,Integer articleId, HttpServletResponse response){

        //文章内容
        Article article = tagImgService.selectArticleByArticleId(articleId);

        //文章作者信息
        User user = articleService.selectUserByArticleId(articleId);

        //文章作者最近写过的文章
        List<Article> articles = new ArrayList<>();
        articles = articleService.selectLatestArticleByUserId(user.getUserId());

        //最热门的十篇文章
        List<Article> hotArticle = new ArrayList<>();
        hotArticle = articleService.selectHottestArticle();

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
        request.setAttribute("articles",articles);
        request.setAttribute("hotArticle",hotArticle);
        request.setAttribute("arvo",arvo);


        return "user/article/clothes/matchInfo";
    }

}
