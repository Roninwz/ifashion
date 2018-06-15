package com.zua.ifashion.person.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.talk.entity.Discuss;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.DiscussService;
import com.zua.ifashion.talk.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/admin")
public class AdminManageTopicController {

    @Autowired
    private TopicService topicService;
    @Autowired
    private DiscussService discussService;
    @Autowired
    private UserService userService;
    //社区管理controller
    //话题列表
    @RequestMapping(value = "/topicmanage", method = RequestMethod.GET)
    public String adminTopic(HttpSession session,  @RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage,Map<String,Object> map) {

        int pageSize=10;
        System.out.println(curPage);
        PageHelper.startPage(curPage,pageSize);
       List<Topic> topics= topicService.getAllTopic();
        PageInfo<Topic> pageInfo = new PageInfo<>(topics);
        map.put("pageInfo",pageInfo);
       int n= topicService.getAllTopicCount();
        //map.put("topics",topics);
        map.put("n",n);
        return "admin/topic";
    }
    //添加话题
    @RequestMapping(value = "/addtopic", method = RequestMethod.GET)
    public String addTopic(HttpSession session) {
        return "admin/addtopic";
    }
    //    处理添加话题
    @RequestMapping(value = "/addHandleTopic", method = RequestMethod.POST)
    public String addHandleTopic(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl, Topic topic,HttpServletRequest request) throws ParseException {
        Topic topic1=new Topic();
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
            topic1.setTopicImgurl("/upload/"+newFileName);
        }

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateStringStart = formatter.format(topic.getTopicStart());
        String dateStringEnd = formatter.format(topic.getTopicEnd());
        Date newDateStart= formatter.parse(dateStringStart);
        Date newDateEnd= formatter.parse(dateStringEnd);
        topic1.setTopicTitle(topic.getTopicTitle());
        topic1.setTopicContent(topic.getTopicContent());
        topic1.setTopicStart(newDateStart);
        topic1.setTopicEnd(newDateEnd);
        topicService.addTopicSelective(topic1);

       // PhotoUtil.saveFile(topImgurl,request);
        //重定向
        return "redirect:topicmanage.action";
    }


    @RequestMapping(value = "/updatetopic", method = RequestMethod.GET)
    public String updateTopic(HttpSession session,Integer topicId,Map<String,Object> map) {

        Topic topic=topicService.selectTopicByTopicId(topicId);
        map.put("topic",topic);
        return "admin/updatetopic";
    }
    @RequestMapping(value = "/updateHandleTopic", method = RequestMethod.POST)
    public String updateHandleTopic(HttpSession session,@RequestParam("topImgurl") MultipartFile topImgurl,Topic topic) throws ParseException {
        Topic topic1=new Topic();
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
            topic1.setTopicImgurl("/upload/"+newFileName);
        }

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateStringStart = formatter.format(topic.getTopicStart());
        String dateStringEnd = formatter.format(topic.getTopicEnd());
        Date newDateStart= formatter.parse(dateStringStart);
        Date newDateEnd= formatter.parse(dateStringEnd);
        System.out.println(topic.getTopicId());
        topic1.setTopicId(topic.getTopicId());
        topic1.setTopicTitle(topic.getTopicTitle());
        topic1.setTopicContent(topic.getTopicContent());
        topic1.setTopicStart(newDateStart);
        topic1.setTopicEnd(newDateEnd);
        topicService.updateTopicSelective(topic1);
        return "admin/updatetopic";
    }







    @RequestMapping(value = "/ajaxdeletetopic", method = RequestMethod.POST)
    @ResponseBody
    public Topic ajaxdeletetopic(HttpSession session, @RequestBody Topic topic, Map<String,Object> map) {
        String msg="";
        System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

        int n=topicService.deleteTopic(topic.getTopicId());
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);

        return topic;
    }




    @RequestMapping(value = "/searcharticle", method = RequestMethod.GET)
    public String searcharticle(HttpSession session,String topicTitle, Map<String,Object> map) {
        //待完善

        List<Topic> topics= topicService.getAllTopic();
        int n= topicService.getAllTopicCount();
        map.put("topics",topics);
        map.put("n",n);
        session.getAttribute("adminModuleVos");
        return "admin/topic";
    }
    //
    //话题讨论列表
    @RequestMapping(value = "/topicreviewmanage", method = RequestMethod.GET)
    public String topicreviewmanage(HttpSession session, Map<String,Object> map) {
        List<Discuss> discusses= discussService.getAllDiscuss();

        map.put("discusses",discusses);
        map.put("n",discusses.size());
        session.getAttribute("adminModuleVos");
        return "admin/topic";
    }


    //话题讨论详情

    @RequestMapping(value = "/topicreviewdetail", method = RequestMethod.GET)
    public String topicreviewdetail(HttpSession session, Integer discussId,Map<String,Object> map) {
    Discuss discuss=discussService.selectDiscussByDiscussId(discussId);

       User duser= userService.selectUserByUserId(discuss.getUserId());



        map.put("discuss",discuss);
        map.put("duser",duser);

        session.getAttribute("adminModuleVos");
        return "admin/topic";
    }









}
