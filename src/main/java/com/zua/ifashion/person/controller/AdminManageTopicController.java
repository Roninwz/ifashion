package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.util.PhotoUtil;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
    //社区管理controller
    //话题列表
    @RequestMapping(value = "/topicmanage", method = RequestMethod.GET)
    public String adminTopic(HttpSession session, Map<String,Object> map) {
       List<Topic> topics= topicService.getAllTopic();

        map.put("topics",topics);
        session.getAttribute("adminModuleVos");
        return "admin/topic";
    }
    //添加话题
    @RequestMapping(value = "/addtopic", method = RequestMethod.GET)
    public String addTopic(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/addtopic";
    }
    //    处理添加话题
    @RequestMapping(value = "/addHandleTopic", method = RequestMethod.POST)
    public String addHandleTopic(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl, Topic topic,HttpServletRequest request) throws ParseException {
        Topic topic1=new Topic();
        if (!topImgurl.isEmpty()) {
            String path = "E:\\wz\\static\\";
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
        topic1.setTopicContent(topic.getTopicContent());
        topic1.setTopicStart(newDateStart);
        topic1.setTopicEnd(newDateEnd);
        topicService.addTopicSelective(topic1);

       // PhotoUtil.saveFile(topImgurl,request);
        session.getAttribute("adminModuleVos");
        //重定向
        return "redirect:topicmanage.action";
    }

    @RequestMapping(value = "upload",method = RequestMethod.POST)
    public String upload(Model model,
                         @RequestParam("file") MultipartFile file
            , HttpServletRequest request){
        //第一种返回页面的方法
        //model.addAttribute("img",PhotoUtil.saveFile(file,request));
        //第二种返回页面的方法
        request.setAttribute("img", PhotoUtil.saveFile(file,request));
        return "test";
    }
    @RequestMapping(value = "/updatetopic", method = RequestMethod.GET)
    public String updateTopic(HttpSession session) {
        session.getAttribute("adminModuleVos");
        return "admin/updatetopic";
    }
    @RequestMapping(value = "/updateHandleTopic", method = RequestMethod.GET)
    public String updateHandleTopic(HttpSession session) {



        session.getAttribute("adminModuleVos");
        return "admin/updatetopic";
    }
}
