package com.zua.ifashion.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
@Controller
@RequestMapping("/admin")
public class AdminManageArticleController {



    // 文章管理controller
    //1.文章管理首页
    @RequestMapping(value = "/articlemanage", method = RequestMethod.GET)
    public String adminArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");

        return "admin/article";
    }
    //2.更新文章

    @RequestMapping(value = "/updateArticle", method = RequestMethod.GET)
    public String updateArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/updatearticle";
    }
    //3.更新处理

    @RequestMapping(value = "/updateHandleArticle", method = RequestMethod.POST)
    public String updateHandleArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/article";
    }
    //4.添加文章

    @RequestMapping(value = "/addArticle", method = RequestMethod.GET)
    public String addArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/addarticle";
    }
    //5.添加处理

    @RequestMapping(value = "/addHandleArticle", method = RequestMethod.POST)
    public String addHandleArticle(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/article";
    }
    //6.查询后的页面controller
    @RequestMapping(value = "/afterSelect", method = RequestMethod.POST)
    public String afterSelect(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/afterselect";
    }
}
