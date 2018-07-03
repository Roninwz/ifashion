package com.zua.ifashion.person.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.entity.ArticleReview;
import com.zua.ifashion.article.entity.Complain;
import com.zua.ifashion.article.service.ArticleReviewService;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.article.service.ArticleTypeService;
import com.zua.ifashion.article.service.ComplainService;
import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.vo.AdminArticleReivewVo;
import com.zua.ifashion.person.vo.AdminComplainVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminManageArticleController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private ArticleTypeService articleTypeService;
    @Autowired
    UserService userService;
    @Autowired
    private ArticleReviewService articleReviewService;
    @Autowired
    private ComplainService complainService;
//    @Autowired
//    private ArticleType articleType;
    // 文章管理controller
    //1.文章管理首页
    @RequestMapping(value = "/articlemanage", method = RequestMethod.GET)
    public String adminArticle(HttpSession session,Map<String,Object> map) {


//@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage
        //PageHelper.startPage(curPage,5);
        List<Article> articles= articleService.selectAllArticle();
       //PageInfo<Article> pageInfo = new PageInfo<>(articles);


        map.put("articles",articles);
        //map.put("pageInfo",pageInfo);
        map.put("n",articles.size());

        return "admin/article";
    }

    //2更新文章

    @RequestMapping(value = "/updatearticle", method = RequestMethod.GET)
    public String updatearticle(HttpSession session,Integer articleId,Map<String,Object> map) {

       Article article= articleService.selectArticleByArticleId(articleId);
       map.put("article",article);
        return "admin/updatearticle";
    }
    //3.更新处理

    @RequestMapping(value = "/updateHandleArticle", method = RequestMethod.POST)
    public String updateHandleArticle(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl, Article article, HttpServletRequest request) {

        Article article1=new Article();
        if (!topImgurl.isEmpty()) {
            String path = "E:\\ifashion\\static\\";
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
//            article1.setImgurl("/upload/"+newFileName);
            article1.setImgurl("static/user/article/clothes/images/"+newFileName);
        }
        String typea=request.getParameter("typea");

        if("clothes".equals(typea)){
            article1.setArticletypeId(1);
        }else if("community".equals(typea)){
            article1.setArticletypeId(2);
        }else {
            article1.setArticletypeId(3);
        }
        System.out.println(article.getArticleTitle());
        System.out.println(article.getArticletypeId());
        System.out.println(article.getContent());
        article1.setArticleId(article.getArticleId());
        article1.setContent(article.getContent());
        article1.setArticleTitle(article.getArticleTitle());
        articleService.updateArticleSelective(article1);


        return "redirect:/admin/articlemanage.action";
    }

    //4.添加文章

    @RequestMapping(value = "/addArticle", method = RequestMethod.GET)
    public String addArticle(HttpSession session) {



        return "admin/addarticle";
    }
    //5.添加处理

    @RequestMapping(value = "/addHandleArticle", method = RequestMethod.POST)
    public String addHandleArticle(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl, Article article, HttpServletRequest request) {
       Admin admin= (Admin) session.getAttribute("admin");
        Article article1=new Article();
        if (!topImgurl.isEmpty()) {
            String path = "E:\\ifashion\\static\\";
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
//            article1.setImgurl("/upload/"+newFileName);
            String typea=request.getParameter("typea");

            if("clothes".equals(typea)){
                article1.setArticletypeId(1);
                article1.setImgurl("static/user/article/clothes/images/"+newFileName);
            }else if("community".equals(typea)){
                article1.setArticletypeId(2);
                article1.setImgurl("static/user/article/community/image/"+newFileName);
            }else {
                article1.setArticletypeId(3);
                article1.setImgurl("static/user/article/news/image/"+newFileName);
            }

        }

        System.out.println(article.getArticleTitle());
        System.out.println(article.getArticletypeId());
        System.out.println(article.getContent());
        article1.setAdminId(admin.getAdminId());
        article1.setContent(article.getContent());
        article1.setArticleTitle(article.getArticleTitle());
        articleService.addArticleSelective(article1);
        return "redirect:/admin/articlemanage.action";
    }
    //6.查询后的页面controller
    @RequestMapping(value = "/searcharticle", method = RequestMethod.POST)
    public String afterSelect(HttpSession session,String articleTitle, Map<String,Object> map) {
        System.out.println(articleTitle);
        if(articleTitle!=null){
            List<Article> articles=articleService.selectArticleByTitle(articleTitle);
            for (Article article:articles){
                System.out.println(article.getArticleTitle());
                System.out.println(article.getContent());
            }
            map.put("articles",articles);
            map.put("n",articles.size());
        }else {
            return "redirect:/admin/articlemanage.action";
        }

        return "admin/searcharticle";
    }


    @RequestMapping(value = "/ajaxdeletearticle", method = RequestMethod.POST)
    @ResponseBody
    public Article ajaxdeletearticle(HttpSession session, @RequestBody Article article, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

        int n=articleService.deleteArticle(article.getArticleId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);

        return article;
    }


    @RequestMapping(value = "/articledetail", method = RequestMethod.GET)
    public String articledetail(HttpSession session,Integer articleId, Map<String,Object> map) {

        Article article= articleService.selectArticleByArticleId(articleId);



        map.put("article",article);

        return "admin/articledetail";
    }


    @RequestMapping(value = "/batchdeletearticle", method = RequestMethod.POST)

    public void batchDeleteArticle(HttpSession session, HttpServletResponse response, HttpServletRequest request, Map<String,Object> map) {
        String msg = "";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        //System.out.println(userId);
        String items = request.getParameter("delitems");// System.out.println(items);
        String[] strs = items.split(",");

        for (int i = 0; i < strs.length; i++) {
            try {
                int a = Integer.parseInt(strs[i]);
                int n = articleService.deleteArticle(a);
                if (n > 0) {
                    msg = "删除成功";
                } else {
                    msg = "删除失败";
                }
                System.out.println(msg);
            } catch (Exception e) {
            }
        }
    }


//文章审核状态ajax
//                                <%--// 0 草稿--待审核--%>
//                                <%--// 1 未通过--%>
//                                <%--// 2 已审核--%>
//                                <%--// 3 已上线--%>
//                                <%--// 4 已下架--%>
    @RequestMapping(value = "/ajaxtongguoarticle", method = RequestMethod.POST)
    @ResponseBody
    public Article ajaxtongguoarticle(HttpSession session, @RequestParam Integer articleId, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Article article=new Article();
        article.setArticleId(articleId);
        article.setState(2);
       int n=articleService.updateArticleSelective(article);
        if(n>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return article;
    }

    @RequestMapping(value = "/ajaxnotongguoarticle", method = RequestMethod.POST)
    @ResponseBody
    public Article ajaxnotongguoarticle(HttpSession session, @RequestParam Integer articleId, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Article article=new Article();
        article.setArticleId(articleId);
        article.setState(1);
        int n=articleService.updateArticleSelective(article);
        if(n>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return article;
    }


    @RequestMapping(value = "/ajaxxianxianarticle", method = RequestMethod.POST)
    @ResponseBody
    public Article ajaxxianxianarticle(HttpSession session, @RequestParam Integer articleId, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Article article=new Article();
        article.setArticleId(articleId);
        article.setState(4);
        int n=articleService.updateArticleSelective(article);
        if(n>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return article;
    }


    @RequestMapping(value = "/ajaxshangxianarticle", method = RequestMethod.POST)
    @ResponseBody
    public Article ajaxshangxianarticle(HttpSession session, @RequestParam Integer articleId, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
        Article article=new Article();
        article.setArticleId(articleId);
        article.setState(3);
        int n=articleService.updateArticleSelective(article);
        if(n>0){
            msg="更新成功";
        }else {
            msg="更新失败";
        }
        System.out.println(msg);

        return article;
    }

    @RequestMapping(value = "/reviewmanage", method = RequestMethod.GET)
    public String reviewManage(HttpSession session,Map<String,Object> map) {
       List<ArticleReview> articleReviews=articleReviewService.selectAllArticleReview();
        System.out.println(articleReviews.size());
       List<AdminArticleReivewVo> adminArticleReivewVos=new ArrayList<>();
       for(ArticleReview articleReview:articleReviews){

           AdminArticleReivewVo adminArticleReivewVo=new AdminArticleReivewVo();
              Article article=   articleService.selectArticleByArticleId(articleReview.getArticleId());
           adminArticleReivewVo.setArticleTitle(article.getArticleTitle());
         User user=  userService.selectUserByUserId(articleReview.getUserId());
           adminArticleReivewVo.setUsername(user.getUsername());
           adminArticleReivewVo.setReviewContent(articleReview.getReviewContent());
           adminArticleReivewVo.setReviewDate(articleReview.getReviewDate());
           adminArticleReivewVo.setReviewZan(articleReview.getReviewZan());
           adminArticleReivewVos.add(adminArticleReivewVo);
       }
        System.out.println("adminArticleReivewVos2:"+adminArticleReivewVos.size());
        map.put("adminArticleReivewVos",adminArticleReivewVos);
        //map.put("pageInfo",pageInfo);
        map.put("n",adminArticleReivewVos.size());
        return "admin/articlereview";
    }

//    评论详情
    @RequestMapping(value = "/articlereviewdetail", method = RequestMethod.GET)
    public String articlereviewdetail(HttpSession session,Integer reviewId, Map<String,Object> map) {

       // Article article=articleReviewService.;



        //map.put("article",article);

        return "admin/articlereviewdetail";
    }

    //complainmanage
    @RequestMapping(value = "/complainmanage", method = RequestMethod.GET)
    public String complainmanage(HttpSession session,Integer reviewId, Map<String,Object> map) {

        // Article article=articleReviewService.;
       List<Complain> complains= complainService.selectAllComplain();
       List<AdminComplainVo> complainVos=new ArrayList<>();
            for(Complain complain:complains){
                AdminComplainVo adminComplainVo=new AdminComplainVo();
                User user=userService.selectUserByUserId(complain.getComplainUserid());
                User userd=userService.selectUserByUserId(complain.getComplainedUserid());
                adminComplainVo.setComplainId(complain.getComplainId());
                adminComplainVo.setUsername(user.getUsername());
                adminComplainVo.setUsernameed(userd.getUsername());
                adminComplainVo.setComplainReason(complain.getComplainReason());
                adminComplainVo.setReviewId(complain.getReviewId());
                adminComplainVo.setState(complain.getState());
                complainVos.add(adminComplainVo);
            }

        map.put("complainVos",complainVos);
        for (Complain complain:complainVos){
            System.out.println(complain.getComplainReason());
        }
        return "admin/complain";
    }


}
