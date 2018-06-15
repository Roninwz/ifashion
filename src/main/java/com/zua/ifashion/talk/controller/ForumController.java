package com.zua.ifashion.talk.controller;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.talk.entity.Question;
import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.service.*;
import com.zua.ifashion.talk.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.util.*;


@Controller
@RequestMapping("/user")
public class ForumController {

    @Autowired
    private TopicService topicService;
    @Autowired
    private DiscussService discussService;
    @Autowired
    private RankService rankService;
    @Autowired
    private UserService userService;
    @Autowired
    private QuestionService questionService;
    @Autowired
    private ReplyQuestionService replyQuestionService;
    @Autowired
    private ReplyReplyQuestionService replyReplyQuestionService;

    TopicUser topicUser=new TopicUser();

    //    话题
    @RequestMapping(value = "/topic",method = {RequestMethod.GET,RequestMethod.POST})
    public String topic(Map<String, Object> map) throws ParseException {
        Date date=new Date();
        List<TopicUser> tlistl=topicService.selectTopicByLookNumOrder();
        map.put("tlistl",tlistl);
        List<Topic> tlistr=topicService.selectTopicByTopicPeopleOrder();
        map.put("tlistr",tlistr);
        List<User> users=userService.getAllUsers();
        List<UserDiscuss> ud=new ArrayList<>();
        List<UserDiscuss> udd=new ArrayList<>();
        for(User u:users){
            UserDiscuss userDiscuss=new UserDiscuss();
            UserDiscuss userDiscuss1=new UserDiscuss();
//            System.out.println(u.getRankId());
//            System.out.println(rankService.selectRankByRankId(u.getRankId()));
//            System.out.println(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss1.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss.setUsername(u.getUsername());
            userDiscuss1.setUsername(u.getUsername());
            userDiscuss.setCount(discussService.selectDiscussByUserIdCount(u.getUserId()));
            System.out.println(discussService.selectDiscussByUserIdCountDay(u.getUserId()));
            userDiscuss1.setCount(discussService.selectDiscussByUserIdCountDay(u.getUserId()));
            ud.add(userDiscuss);
            System.out.println(userDiscuss1);
            udd.add(userDiscuss1);
        }
        map.put("ud",ud);
        map.put("udd",udd);
        return "user/talk/topic";
    }


    //forum
    @RequestMapping(value = "/forum",method = {RequestMethod.GET})
    public String talk(Map<String, Object> map) throws ParseException {
        Date date=new Date();
        List<Topic> tlistr=topicService.selectTopicByTopicPeopleOrder();
        map.put("tlistr",tlistr);
        List<User> users=userService.getAllUsers();
        List<UserDiscuss> ud=new ArrayList<>();
        for(User u:users){
            UserDiscuss userDiscuss=new UserDiscuss();
            userDiscuss.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss.setUsername(u.getUsername());
            userDiscuss.setCount(discussService.selectDiscussByUserIdCount(u.getUserId()));
            ud.add(userDiscuss);
        }
        map.put("ud",ud);
        List<DiscussUser> discussUsers=discussService.selectDiscussUserByTopicId(tlistr.get(1).getTopicId());
        map.put("discussUsers",discussUsers);
        Topic topic=topicService.selectTopicByTopicId(tlistr.get(1).getTopicId());
        map.put("topic",topic);
        return "user/talk/forum";
    }



    @RequestMapping(value = "/forumInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String information(){
        return "user/talk/information";
    }

    @RequestMapping(value = "topicInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String topicInfo(Integer topicId,Map<String, Object> map) throws ParseException {
        Date date=new Date();
        List<Topic> tlistr=topicService.selectTopicByTopicPeopleOrder();
        map.put("tlistr",tlistr);
        List<User> users=userService.getAllUsers();
        List<UserDiscuss> ud=new ArrayList<>();
        List<UserDiscuss> udd=new ArrayList<>();
        for(User u:users){
            UserDiscuss userDiscuss=new UserDiscuss();
            UserDiscuss userDiscuss1=new UserDiscuss();
            userDiscuss.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss1.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss.setUsername(u.getUsername());
            userDiscuss1.setUsername(u.getUsername());
            userDiscuss.setCount(discussService.selectDiscussByUserIdCount(u.getUserId()));
            System.out.println(discussService.selectDiscussByUserIdCountDay(u.getUserId()));
            userDiscuss1.setCount(discussService.selectDiscussByUserIdCountDay(u.getUserId()));
            ud.add(userDiscuss);
            udd.add(userDiscuss1);
        }
        Collections.sort(ud);
        Collections.reverse(ud);
        map.put("ud",ud);
        Collections.sort(udd);
        Collections.reverse(udd);
        map.put("udd",udd);
        List<DiscussUser> discussUsers=discussService.selectDiscussUserByTopicId(topicId);
        map.put("discussUsers",discussUsers);
        Topic topic=topicService.selectTopicByTopicId(topicId);
        map.put("topic",topic);
        return "user/talk/topicInfo";
    }
    @RequestMapping(value = "/community",method = {RequestMethod.GET,RequestMethod.POST})
    public String community(){
        return "user/article/community/community";
    }

    @RequestMapping(value = "/seditor",method = {RequestMethod.GET,RequestMethod.POST})
    public String seditor(){
        return "user/talk/seditor";
    }

    @RequestMapping(value = "/question",method = {RequestMethod.GET,RequestMethod.POST})
    public String question(Map<String, Object> map){
        //雷锋列表
        List<User> users=userService.getAllUsers();
        List<UserDiscuss> ud=new ArrayList<>();
        List<UserDiscuss> udd=new ArrayList<>();
        for(User u:users){
            UserDiscuss userDiscuss=new UserDiscuss();
            UserDiscuss userDiscuss1=new UserDiscuss();
            userDiscuss.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss1.setRankName(rankService.selectRankByRankId(u.getRankId()).getRankName());
            userDiscuss.setUsername(u.getUsername());
            userDiscuss1.setUsername(u.getUsername());
            userDiscuss.setCount(discussService.selectDiscussByUserIdCount(u.getUserId()));
            userDiscuss1.setCount(discussService.selectDiscussByUserIdCountDay(u.getUserId()));
            ud.add(userDiscuss);
            udd.add(userDiscuss1);
        }
        Collections.sort(ud);
        Collections.reverse(ud);
        map.put("ud",ud);
        Collections.sort(udd);
        Collections.reverse(udd);
        map.put("udd",udd);

        //左侧问题列表
        List<Question> questions=questionService.selectAllQuestion();
        List<QuestionReply> questionReplies=new ArrayList<>();
        for(Question question:questions){
             QuestionReply questionReply=new QuestionReply();
             questionReply.setQuestionId(question.getQuestionId());
             questionReply.setQuestionContent(question.getQuestionContent());
             questionReply.setQuserImgurl(userService.selectUserByUserId(question.getUserId()).getUserImgurl());
             questionReply.setQuserName(userService.selectUserByUserId(question.getUserId()).getUsername());
             questionReply.setAttentionNum(question.getAttentionNum());
             questionReply.setQuestionDate(question.getQuestionDate());
             questionReply.setAgainstNum(replyQuestionService.selectAgainstNumByReplyQuestionId(question.getQuestionId()));
             questionReply.setRuserImgurl(userService.selectUserByUserId(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getUserId()).getUserImgurl());
             questionReply.setRuserName(userService.selectUserByUserId(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getUserId()).getUsername());
             questionReply.setReplyContent(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getReplyContent());
             questionReplies.add(questionReply);
        }
        map.put("questionReplies",questionReplies);

        //热门问题
        List<Question> hotQuestion=questionService.selectAttentionNumOrder();
        map.put("hotQuestion",hotQuestion);

        return "user/talk/question";
    }

    @RequestMapping(value = "/attention",method = RequestMethod.POST)
    @ResponseBody
    public String attention(HttpServletRequest request,@RequestBody String [] spans, HttpServletResponse response){
        for (int i=0;i<spans.length;i++) {
            System.out.println("这是"+spans[i]);
        }
        String lii=request.getParameter("lii");

        return "user/talk/question";
    }



    @RequestMapping(value = "/response",method = {RequestMethod.GET,RequestMethod.POST})
    public String response(Integer questionId,Map<String, Object> map){
        List<ReplyQuestionUser> replyQuestionUsers=replyQuestionService.selectAReplyQuestionByQuestionId(questionId);
        List<RRRQuestion> rrrQuestions=new ArrayList<>();
        for(ReplyQuestionUser rqu:replyQuestionUsers){
            RRRQuestion rrrQuestion=new RRRQuestion();
            rrrQuestion.setUser(rqu.getUser());
            rrrQuestion.setReplyContent(rqu.getReplyContent());
            rrrQuestion.setZanNum(rqu.getZanNum());
            rrrQuestion.setAgainstNum(rqu.getAgainstNum());
            rrrQuestion.setReplyCount(replyReplyQuestionService.selectReplyReplyQuestionCountByReplyquestionId(rqu.getReplyquestionId()));
        }


        return "user/talk/response";
    }


}
