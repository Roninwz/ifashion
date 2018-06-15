package com.zua.ifashion.person.controller;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.service.ArticleService;
import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.service.MyCollectionService;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserAttentionService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.vo.MyCollectionVo;
import com.zua.ifashion.person.vo.UserAttentionVo;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonalMyController {
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
//    @Autowired
    // 我的发表
    @RequestMapping(value = "/publish", method = RequestMethod.GET)
    public String myPublish(HttpSession session, Map<String,Object> map) {

        //articleService.s
        Integer userId= (Integer) session.getAttribute("userId");
        User user=userService.selectUserByUserId(userId);
      List<Topic> topics=topicService.selectTopicByUserId(userId);
          map.put("user",user);
          map.put("topics",topics);
        return "user/personal/user/mypublish";
    }
    // 我的收藏
    @RequestMapping(value = "/collection", method = RequestMethod.GET)
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
    @RequestMapping(value = "/attention", method = RequestMethod.GET)
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
    @RequestMapping(value = "/message", method = RequestMethod.GET)
    public String myMessage(HttpSession session, Map<String,Object> map) {





        return "user/personal/user/mymessage";
    }


}
