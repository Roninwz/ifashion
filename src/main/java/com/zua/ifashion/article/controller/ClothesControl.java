package com.zua.ifashion.article.controller;


import com.zua.ifashion.article.entity.*;
import com.zua.ifashion.article.service.*;
import com.zua.ifashion.article.vo.ArticleReviewUserVo;
import com.zua.ifashion.article.vo.ArticleUserVo;
import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.service.MyCollectionService;
import com.zua.ifashion.person.service.UserAttentionService;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

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

    @Autowired
    private UserService userService;

    @Autowired
    private MyCollectionService myCollectionService;

    @Autowired
    private UserAttentionService userAttentionService;

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
        System.out.println("场合标签共有--"+tag4.size());
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
        System.out.println("获取到文章的size是++++++++++="+dailyBest.size());
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
    public String matchInfo(HttpSession session,HttpServletRequest request,Integer articleId, HttpServletResponse response){

        System.out.println(articleId);
        //文章内容
        Article article = articleService.selectArticleByArticleId(articleId);
        //System.out.println(article.getArticleTitle());
        //System.out.println(article.getContent());
       // System.out.println(article.getArticletypeId());

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
        int reviewsNum = reviews.size();

        //查用户评论封装集合
        List<ArticleReviewUserVo> arvo=new ArrayList<>();
        for (ArticleReview ar:reviews){
            ArticleReviewUserVo articleReviewUserVo=articleReviewService.selectUserByRevicewId(ar.getReviewId());
            arvo.add(articleReviewUserVo);
        }

        //查找与该文章同类型的文章集合
        List<Article> sameTypeArticles = new ArrayList<>();
        sameTypeArticles = articleService.selectArticleByArticletypeId(article.getArticletypeId());


        //根据文章id和该用户id查找myCollection表此文章有没有被收藏过
        MyCollection myCollection = new MyCollection();
        UserAttention pick = new UserAttention();
        if(session.getAttribute("userId")==null){
            System.out.println("用户未登录");
        }
        else {
            int userId= (int) session.getAttribute("userId");
            myCollection = myCollectionService.selectCollectByUAndA(userId,articleId);
            pick = userAttentionService.selectIt(userId,user.getUserId());
            request.setAttribute("pick",pick);
            request.setAttribute("heart",myCollection);
        }


        request.setAttribute("article",article);
        request.setAttribute("author",user);
        request.setAttribute("preArticle",preArticle);
        request.setAttribute("nextArticle",nextArticle);
        request.setAttribute("articles",articles);
        request.setAttribute("hotArticle",hotArticle);
        request.setAttribute("newArticle",newArticle);
        request.setAttribute("arvo",arvo);
        request.setAttribute("reviewsNum",reviewsNum);
        request.setAttribute("sameTypeArticles",sameTypeArticles);

        return "user/article/clothes/matchInfo";
    }

    @RequestMapping(value = "/matchInfo/ajaxAddReview", method = RequestMethod.POST)
    @ResponseBody
    public ArticleReview ajaxAddReview(HttpSession session, @RequestBody ArticleReview articleReview, Map<String,Object> map) {

        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        User user=userService.selectUserByUserId(uid);
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

    @RequestMapping(value = "/publish",method = RequestMethod.GET)
    public String publish(HttpSession session,HttpServletRequest request){


        return "user/article/clothes/publish";
    }


    @RequestMapping(value = "/publishcheck",method = RequestMethod.POST)
    public String publishcheck(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl,Article article, HttpServletRequest request){


        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        //User user=userService.selectUserByUserId(uid);

        Article article1=new Article();
        ClothesTagImg clothesTagImg = new ClothesTagImg();
        String TagId = request.getParameter("clothesTagId");
        int clothesTagId = Integer.parseInt(TagId);
        if (!topImgurl.isEmpty()) {
            String path = "F:\\JavaWorkspace\\ideawork\\ifashion\\src\\main\\webapp\\static\\user\\article\\clothes\\images\\";
            String originalFileName = topImgurl.getOriginalFilename();
            // 新的图片名称
            String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
            // 新的图片
            File newFile = new File(path + newFileName);
            // 将内存中的数据写入磁盘
            try {
                topImgurl.transferTo(newFile);
            } catch (IOException e) {
                e.printStackTrace();
            }

            article1.setImgurl("static/user/article/clothes/images/"+newFileName);
            article1.setArticletypeId(1);
            clothesTagImg.setClothesTagImgUrl("static/user/article/clothes/images/"+newFileName);
        }

        System.out.println(article.getArticleTitle());

        System.out.println(article.getContent());

        System.out.println(clothesTagId);

        article1.setContent(article.getContent());
        article1.setArticleTitle(article.getArticleTitle());
        article1.setUserId(uid);
        clothesTagImg.setClothesTagId(clothesTagId);

        articleService.addArticleSelective(article1);
        Article article2 = articleService.selectArticleByTitle2(article.getArticleTitle());
        System.out.println(article2.getArticleId());
        clothesTagImg.setArticleId(article2.getArticleId());
        tagImgService.addTagImgSelective(clothesTagImg);


        return "redirect:clothes.action";
    }


    @RequestMapping(value = "/matchInfo/ajaxaddCollectArticle", method = RequestMethod.POST)
    @ResponseBody
    public MyCollection ajaxaddCollectArticle(HttpSession session, @RequestBody MyCollection myCollection, Map<String,Object> map) {

        System.out.println("aaaaaaaaaaaaaaaaaaaaa");
        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        User user=userService.selectUserByUserId(uid);
        MyCollection myCollection1 = new MyCollection();

        myCollection1.setUserId(uid);
        myCollection1.setArticleId(myCollection.getArticleId());
        myCollectionService.addMyCollectionSelective(myCollection1);

        return myCollection1;
    }

    @RequestMapping(value = "/matchInfo/ajaxCancelCollect", method = RequestMethod.POST)
    @ResponseBody
    public MyCollection ajaxCancelCollect(HttpSession session, @RequestBody MyCollection myCollection, Map<String,Object> map) {

        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Integer userId= (Integer) session.getAttribute("userId");
        int userid=Integer.parseInt(String.valueOf(userId));
        Integer articleId = myCollection.getArticleId();
        MyCollection myCollection1 = myCollectionService.selectCollectByUAndA(userid,articleId);
        System.out.println(myCollection1.getMycollectId());
        int n=myCollectionService.deleteMyCollectionById(myCollection1.getMycollectId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);

        return myCollection;
    }

    @RequestMapping(value = "matchInfo/ajaxaddAttention",method = RequestMethod.POST)
    @ResponseBody
    public UserAttention ajaxaddAttention(@RequestBody UserAttention userAttention,HttpSession session){

        System.out.println("进入收藏方法。。。。。");

        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        UserAttention userAttention1 = new UserAttention();
        userAttention1.setUserId(uid);
        System.out.println(userAttention.getUserdId());
        userAttention1.setUserdId(userAttention.getUserdId());
        userAttentionService.addUserAttentionSelective(userAttention1);


        return userAttention1;
    }


}
