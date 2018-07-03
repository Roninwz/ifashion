package com.zua.ifashion.person.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.entity.MyMessage;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.service.*;
import com.zua.ifashion.person.util.websocket.SpringWebSocketHandler;
import com.zua.ifashion.person.vo.MyCollectionVo;
import com.zua.ifashion.person.vo.UserAttentionVo;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.TopicService;
import com.zua.ifashion.util.MessageInfos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonalMyController {



    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;
    @Autowired
    private ArticleService articleService;
    @Autowired
    private MyCollectionService myCollectionService;
    @Autowired
    private TopicService topicService;
    @Autowired
    private UserAttentionService userAttentionService;

    @Autowired
    private MyMessageService myMessageService;
//    @Autowired
    // 我的发表
    @RequestMapping(value = "/mypublish", method = RequestMethod.GET)
    public String myPublish(HttpSession session, Map<String,Object> map) {

        //articleService.s
        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);
      List<Topic> topics=topicService.selectTopicByUserId(userId);
      List<Article> articles=articleService.selectArticleByUserId(userId);
          map.put("user",user);
          map.put("topics",topics);
          map.put("articles",articles);
        return "user/personal/user/mypublish";
    }
    // 我的收藏
    @RequestMapping(value = "/mycollection", method = RequestMethod.GET)
    public String myCollection(HttpSession session, Map<String,Object> map) {
        //articleService.
        Integer userId= (Integer) session.getAttribute("userId");
        List<MyCollection> myCollections=myCollectionService.selectMyCollectionByUserId(userId);
        List<MyCollectionVo> myCollectionVosa=new ArrayList<>();
        List<MyCollectionVo> myCollectionVost=new ArrayList<>();


        for (MyCollection myCollection:myCollections){
           // myCollection.g
            if(myCollection.getArticleId()!=null){
                MyCollectionVo myCollectionVo=new MyCollectionVo();
                Article article=articleService.selectArticleByArticleId(myCollection.getArticleId());
                myCollectionVo.setArticleTitle(article.getArticleTitle());
                myCollectionVo.setImgurl(article.getImgurl());
                myCollectionVo.setArticleId(article.getArticleId());
                myCollectionVosa.add(myCollectionVo);
            }else if(myCollection.getTopicId()!=null){
                MyCollectionVo myCollectionVo2=new MyCollectionVo();
                Topic topic= topicService.selectTopicByTopicId(myCollection.getTopicId());
                myCollectionVo2.setTopicId(topic.getTopicId());
                myCollectionVo2.setTopicTitle(topic.getTopicTitle());
                myCollectionVo2.setTopicImgurl(topic.getTopicImgurl());
                myCollectionVost.add(myCollectionVo2);

            }
        }

        map.put("myCollectionVosa",myCollectionVosa);
        map.put("myCollectionVost",myCollectionVost);
        return "user/personal/user/mycollection";
    }
    // 我的关注
    @RequestMapping(value = "/myattention", method = RequestMethod.GET)
    public String myAttention(HttpSession session, Map<String,Object> map) {

        Integer userId= (Integer) session.getAttribute("userId");

        List<UserAttention> userAttentions=userAttentionService.selectUserAttentionByUserId(userId);
        List<UserAttentionVo> userAttentionVosu=new ArrayList<>();
        List<UserAttentionVo> userAttentionVosd=new ArrayList<>();
        if(userAttentions.size()>0){
            for (UserAttention userAttention:userAttentions){
                UserAttentionVo userAttentionVo=new UserAttentionVo();
                User user=userService.selectUserByUserId(userAttention.getUserdId());
                if(user.getUserMark()==0){
                    userAttentionVo.setUsername(user.getUsername());
                    userAttentionVo.setUserImgurl(user.getUserImgurl());
                    userAttentionVosu.add(userAttentionVo);

                }else if(user.getUserMark()==1){
                    userAttentionVo.setUsername(user.getUsername());
                    userAttentionVo.setUserImgurl(user.getUserImgurl());
                    userAttentionVosd.add(userAttentionVo);
                }

            }
        }

        map.put("userAttentionVosu",userAttentionVosu);
        map.put("userAttentionVosd",userAttentionVosd);

        return "user/personal/user/myattention";
    }
    // 我的消息
    @RequestMapping(value = "/mymessage", method = RequestMethod.GET)
    public String myMessage(HttpSession session, @RequestParam(required = false,defaultValue = "1",value = "curPageu")Integer curPageu,@RequestParam(required = false,defaultValue = "1",value = "curPager")Integer curPager, Map<String,Object> map) {
        User user= (User) session.getAttribute("user");
        String uname= (String) session.getAttribute("uname");
      //  System.out.println(username);
        PageHelper.startPage(curPageu,3);
        List<MyMessage> myUnReadMessages = myMessageService.selectMyUnreadMessagesByUserId(user.getUserId());
        PageInfo<MyMessage> pageInfou = new PageInfo<>(myUnReadMessages);

        map.put("pageInfou",pageInfou);
        PageHelper.startPage(curPager,3);
        List<MyMessage> myReadedMessages = myMessageService.selectMyReadMessagesByUserId(user.getUserId());
        PageInfo<MyMessage> pageInfor = new PageInfo<>(myReadedMessages);
        map.put("pageInfor",pageInfor);
        String n=String.valueOf(myUnReadMessages.size());
        infoHandler().sendMessageToUser(uname, new TextMessage(n));
        return "user/personal/user/mymessage";
    }



    // 我的消息
    @RequestMapping(value = "/ajaxReaded", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxReaded(HttpSession session, @RequestBody MyMessage myMessage, Map<String,Object> map) {
        System.out.println("进入ajaxReaded");
        MyMessage myMessage1=new MyMessage();
        myMessage1.setMymessageId(myMessage.getMymessageId());
        myMessage1.setMessageState(1);
        System.out.println(myMessage1.getMymessageId());
        System.out.println(myMessage1.getMessageState());
        int n= myMessageService.updateMymessageSelective(myMessage1);
        MessageInfos messageInfos=new MessageInfos();
        messageInfos.setMessage("已标为已读");
        return messageInfos;
    }

    // 我的消息
    @RequestMapping(value = "/ajaxdeleteReaded", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxdeleteReaded(HttpSession session, @RequestBody MyMessage myMessage, Map<String,Object> map) {
        System.out.println("ajaxdeleteReaded");

        System.out.println(myMessage.getMymessageId());
        int n= myMessageService.deleteMyMessage(myMessage.getMymessageId());
        MessageInfos messageInfos=new MessageInfos();
        messageInfos.setMessage("已删除");

        return messageInfos;
    }

}
