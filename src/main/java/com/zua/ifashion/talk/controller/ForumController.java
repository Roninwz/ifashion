package com.zua.ifashion.talk.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.entity.Rank;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.service.*;
import com.zua.ifashion.talk.entity.*;
import com.zua.ifashion.talk.service.*;
import com.zua.ifashion.talk.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/user")
public class ForumController {

    @Autowired
    private TopicService topicService;
    @Autowired
    private DiscussService discussService;
    @Autowired
    private DiscussReplyService discussReplyService;
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
    @Autowired
    private TagService tagService;
    @Autowired
    private MyCollectionService myCollectionService;
    @Autowired
    private UserAttentionService userAttentionService;

    TopicUser topicUser=new TopicUser();

    //    话题
    @RequestMapping(value = "/topic",method = {RequestMethod.GET,RequestMethod.POST})
    public String topic(Map<String, Object> map,@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage) throws ParseException {
        Date date=new Date();
        System.out.println("当前页"+curPage);
        PageHelper.startPage(curPage,3);
        List<TopicUser> tlistl=topicService.selectTopicByLookNumOrder();
        List<Topic> topics=topicService.selectTopiccByLookNumOrder();
        PageInfo<TopicUser> pageInfo = new PageInfo<>(tlistl);
        map.put("tlistl",tlistl);
        map.put("pageInfo",pageInfo);
        map.put("n",tlistl.size());
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
    public String talk(Map<String, Object> map,@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage) throws ParseException {
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
        System.out.println("当前页"+curPage);


        PageHelper.startPage(curPage,3);
        List<DiscussUser> discussUsers=discussService.selectDiscussUserByTopicId(tlistr.get(1).getTopicId());
        PageInfo<DiscussUser> pageInfo = new PageInfo<>(discussUsers);
        System.out.println("一页多少条:"+pageInfo.getPageSize());
        System.out.println("一共多少页:"+pageInfo.getPages());
        map.put("pageInfo",pageInfo);

        map.put("discussUsers",discussUsers);
        Topic topic=topicService.selectTopicByTopicId(tlistr.get(1).getTopicId());
        map.put("topic",topic);
        return "user/talk/forum";
    }


    @RequestMapping(value = "/forumInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String information(HttpSession session,Integer discussId, Map<String, Object> map,@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage){


        //左侧讨论详情
        System.out.println(discussId);
        map.put("discussId",discussId);
        //用户讨论详情
        Discuss discuss=discussService.selectDiscussByDiscussId(discussId);
        map.put("discuss",discuss);
        Topic topic=topicService.selectTopicByTopicId(discuss.getTopicId());
        map.put("topic",topic);
        //用户
        User user=userService.selectUserByUserId(discuss.getUserId());
        System.out.println("头像"+user.getUserImgurl());
        System.out.println("姓名"+user.getUsername());
        map.put("u",user);
        Rank rank=rankService.selectRankByRankId(user.getRankId());
        map.put("rank",rank);

        User user1= (User) session.getAttribute("user");
        if (user1!=null){
            UserAttention userAttention = userAttentionService.selectIt(user1.getUserId(),user.getUserId());
            map.put("userAttention",userAttention);
        }

        System.out.println(discussReplyService.selectDiscussReplyUByDiscussId(discussId));
        //左侧评论
        PageHelper.startPage(curPage,3);
       List<DiscussReplyUser> discussReplyUsers=discussReplyService.selectDiscussReplyUByDiscussId(discussId);
        PageInfo<DiscussReplyUser> pageInfo = new PageInfo<>(discussReplyUsers);
        map.put("pageInfo",pageInfo);
       map.put("discussReplyUsers",discussReplyUsers);
        //右侧最新热门
        List<Discuss> hotdiscusses=discussService.selectDiscussByDiscussDateAndLookNum();
        map.put("hotdiscusses",hotdiscusses);
        //右侧回复最多帖
        List<CountDiscussId> countDiscussIds=discussReplyService.selectDiscussId();
        List<Discuss> manydiscuss=new ArrayList<>();
        for (CountDiscussId c:countDiscussIds){
            manydiscuss.add(discussService.selectDiscussByDiscussId(c.getDiscussId()));
        }
        map.put("manydiscuss",manydiscuss);
        //右侧精华帖
        //左侧浏览量
        int lookNum=0;
        if (discussService.selectLookNumByDiscussId(discussId)==null){
             lookNum=0;
        }else {
             lookNum=discussService.selectLookNumByDiscussId(discussId);
        }

        map.put("lookNum",lookNum);
        //左侧回复数
        int drcount=discussReplyService.selectDiscussReplyCountByDiscussId(discussId);
        map.put("drcount",drcount);

        return "user/talk/information1";
    }

    @RequestMapping(value = "/topicInfo",method = {RequestMethod.GET,RequestMethod.POST})
    public String topicInfo(HttpSession session,Integer topicId,Map<String, Object> map,@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage) throws ParseException {
        User user= (User) session.getAttribute("user");
        if (user!=null){
            MyCollection myCollection=myCollectionService.selectCollectByUAndT(user.getUserId(),topicId);
            map.put("myCollection",myCollection);
        }
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
        PageHelper.startPage(curPage,3);
        List<DiscussUser> discussUsers=discussService.selectDiscussUserByTopicId(topicId);
        PageInfo<DiscussUser> pageInfo = new PageInfo<>(discussUsers);
        map.put("pageInfo",pageInfo);
        map.put("discussUsers",discussUsers);
        Topic topic=topicService.selectTopicByTopicId(topicId);
        map.put("topic",topic);
        System.out.println("话题id"+topic.getTopicId());
        return "user/talk/topicInfo";
    }
    @RequestMapping(value = "/seditor1",method = RequestMethod.GET)
    public String community(){
        return "user/talk/seditor1";
    }

    @RequestMapping(value = "/seditor",method = {RequestMethod.GET,RequestMethod.POST})
    public String seditor(){
        return "user/talk/seditor";
    }

    @RequestMapping(value = "/question",method = {RequestMethod.GET,RequestMethod.POST})
    public String question(Map<String, Object> map,@RequestParam(required = false,defaultValue = "1",value = "curPage")Integer curPage){
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

        //热门问题
        List<Question> hotQuestion=questionService.selectAttentionNumOrder();
        map.put("hotQuestion",hotQuestion);

        //左侧问题列表
        List<Question> questions=questionService.selectAllQuestion();

        List<QuestionReply> questionReplies1=new ArrayList<>();

        for(Question question:questions){
             QuestionReply questionReply=new QuestionReply();
            System.out.println("问题"+question.getQuestionId());
             questionReply.setQuestionId(question.getQuestionId());
             questionReply.setQuestionContent(question.getQuestionContent());
             questionReply.setQuserImgurl(userService.selectUserByUserId(question.getUserId()).getUserImgurl());
             questionReply.setQuserName(userService.selectUserByUserId(question.getUserId()).getUsername());
             questionReply.setAttentionNum(question.getAttentionNum());
             questionReply.setQuestionDate(question.getQuestionDate());
             if(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId())==null){
                 questionReply.setAgainstNum(null);
                 questionReply.setRuserImgurl(null);
                 questionReply.setRuserName(null);
                 questionReply.setReplyContent(null);
             }else{
                 questionReply.setAgainstNum(replyQuestionService.selectAgainstNumByReplyQuestionId(question.getQuestionId()));
                 questionReply.setRuserImgurl(userService.selectUserByUserId(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getUserId()).getUserImgurl());
                 questionReply.setRuserName(userService.selectUserByUserId(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getUserId()).getUsername());
                 questionReply.setReplyContent(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId()).getReplyContent());
             }
            questionReplies1.add(questionReply);
        }
        PageHelper.startPage(curPage,2);
        List<QuestionReply> questionReplies=questionReplies1;
        PageInfo<QuestionReply> pageInfo = new PageInfo<>(questionReplies);
        System.out.println("一页多少条:"+pageInfo.getPageSize());
        System.out.println("一共多少页:"+pageInfo.getPages());
        map.put("pageInfo",pageInfo);
        map.put("questionReplies",questionReplies);
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
    public String response(Integer questionId, String questionContent, String qusername, String quserImgurl, Map<String, Object> map){

//        System.out.println("问题"+questionId);
//        System.out.println("问题内容"+questionContent);
//        System.out.println("name"+qusername);
//        System.out.println("url"+quserImgurl);



        //左侧回答
        List<ReplyQuestionUser> replyQuestionUsers=replyQuestionService.selectAReplyQuestionByQuestionId(questionId);
        List<RRRQuestion> rrrQuestions=new ArrayList<>();
        for(ReplyQuestionUser rqu:replyQuestionUsers){
            RRRQuestion rrrQuestion=new RRRQuestion();
            rrrQuestion.setReplyquestionId(rqu.getReplyquestionId());
            rrrQuestion.setUser(rqu.getUser());
            rrrQuestion.setReplyContent(rqu.getReplyContent());
            rrrQuestion.setZanNum(rqu.getZanNum());
            rrrQuestion.setAgainstNum(rqu.getAgainstNum());
            rrrQuestion.setReplyCount(replyQuestionService.selectReplyQuestionCountByQuestionId(rqu.getQuestionId()));
            rrrQuestion.setReplyReplyCount(replyReplyQuestionService.selectReplyReplyQuestionCountByReplyquestionId(rqu.getReplyquestionId()));
            rrrQuestion.setReplyDate(rqu.getReplyDate());
//            System.out.println("rqu"+rqu.getReplyquestionId());
//            System.out.println(replyReplyQuestionService.selectReplyReplyQuestionUserByReplyquestionId(rqu.getReplyquestionId()));
            List<RRQuestionUser> rrQuestionUsers=new ArrayList<>();
            List<RRQuestionUser> hrrQuestionUsers=replyReplyQuestionService.selectReplyReplyQuestionUserByReplyquestionId(rqu.getReplyquestionId());
            for (RRQuestionUser rr:hrrQuestionUsers){
                RRQuestionUser rrQuestionUser=new RRQuestionUser();
                rrQuestionUser.setUser(rr.getUser());
//                rrQuestionUser.setRrQuestionUsers(replyReplyQuestionService.selectRRQuestionByHReplyReplyQuesId(rr.getReplyReplyQuesId()));
                rrQuestionUser.setReplyquestionId(rr.getReplyquestionId());
                rrQuestionUser.setHreplyReplyQuesId(rr.getHreplyReplyQuesId());
                rrQuestionUser.setReplyReplyQuesContent(rr.getReplyReplyQuesContent());
                rrQuestionUser.setReplyReplyQuesDate(rr.getReplyReplyQuesDate());
                rrQuestionUser.setReplyReplyQuesId(rr.getReplyReplyQuesId());
                rrQuestionUser.setUserId(rr.getUserId());
                if(rr.getHreplyReplyQuesId()==null){
                    rrQuestionUser.setHreplyReplyQuesId(0);
//                    rrQuestionUser.setBhfusername("0");
                }else {
                    System.out.println("回复id" + rr.getHreplyReplyQuesId());
                    System.out.println("duixiang" + replyReplyQuestionService.selectReplyReplyQuestionByReplyReplyQuesId(rr.getHreplyReplyQuesId()));
                    System.out.println("userid" + replyReplyQuestionService.selectReplyReplyQuestionByReplyReplyQuesId(rr.getHreplyReplyQuesId()).getUserId());
                    rrQuestionUser.setBhfusername(userService.selectUserByUserId(replyReplyQuestionService.selectReplyReplyQuestionByReplyReplyQuesId(rr.getHreplyReplyQuesId()).getUserId()).getUsername());
                }
                rrQuestionUsers.add(rrQuestionUser);
//
            }
            rrrQuestion.setRrQuestionUsers(rrQuestionUsers);
            rrrQuestions.add(rrrQuestion);
        }
        map.put("rrrQuestions",rrrQuestions);
        int replyCount=replyQuestionService.selectReplyQuestionCountByQuestionId(questionId);
        map.put("replyCount",replyCount);

        //左侧标签
        if(questionService.selectTagIdByQuestionId(questionId)==null){
            map.put("tagName",null);
        }else{
            Integer tagId=questionService.selectTagIdByQuestionId(questionId);
            String tagName=tagService.selectTagByTagId(tagId).getTagName();
            map.put("tagName",tagName);
            List<Question> questionTag=questionService.selectQuestionByTagId(tagId);
            map.put("questionTag",questionTag);
        }


        //右侧相关问题


        //右侧最新问题
        List<Question> questionNew=questionService.selectQuestionOrderByQuestionDate();
        map.put("questionNew",questionNew);

        //左侧问题详情
        map.put("questionContent",questionContent);
        map.put("quserName",qusername);
        map.put("quserImgurl",quserImgurl);
        map.put("questionId",questionId);
        return "user/talk/response1";
    }

    //处理添加回复
    @RequestMapping(value = "/addResponse",method =RequestMethod.POST)
    @ResponseBody
    public RRQuestionUser addResponse(HttpSession session,@RequestBody RRQuestionUser rrQuestionUser) throws ParseException {
        User user= (User) session.getAttribute("user");
        System.out.println("用户"+user.getUserId());
        RRQuestionUser rrQuestionUser1=new RRQuestionUser();
        System.out.println("回复内容:"+rrQuestionUser.getReplyReplyQuesContent());
        rrQuestionUser1.setUser(user);
        rrQuestionUser1.setBhfusername(rrQuestionUser.getBhfusername());
        rrQuestionUser1.setHreplyReplyQuesId(rrQuestionUser.getHreplyReplyQuesId());
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String date = formatter.format(new Date());
        Date date1=formatter.parse(date);
        rrQuestionUser1.setReplyReplyQuesDate(date1);
        rrQuestionUser1.setReplyReplyQuesContent(rrQuestionUser.getReplyReplyQuesContent());

        //封装进数据库的对象
        System.out.println("回答id:"+rrQuestionUser.getReplyquestionId());
        ReplyReplyQuestion replyReplyQuestion=new ReplyReplyQuestion();
        replyReplyQuestion.setReplyReplyQuesId(rrQuestionUser.getReplyReplyQuesId());
        replyReplyQuestion.setReplyquestionId(rrQuestionUser.getReplyquestionId());
        replyReplyQuestion.setUserId(user.getUserId());
        replyReplyQuestion.setReplyReplyQuesDate(rrQuestionUser.getReplyReplyQuesDate());
        replyReplyQuestion.setReplyReplyQuesContent(rrQuestionUser.getReplyReplyQuesContent());
        replyReplyQuestion.setHreplyReplyQuesId(rrQuestionUser.getHreplyReplyQuesId());
        replyReplyQuestionService.addReplyReplyQuestion(replyReplyQuestion);

        rrQuestionUser1.setReplyReplyQuesId(replyReplyQuestionService.selectReplyReplyQuestionTop().getReplyReplyQuesId());

        return rrQuestionUser1;


    }

    @RequestMapping(value = "addInfoReply",method = RequestMethod.POST)
    @ResponseBody
    public DiscussReplyUser addInfoReply(HttpSession session,@RequestBody DiscussReply discussReply){
        User user= (User) session.getAttribute("user");
        DiscussReply discussReply1=new DiscussReply();
        discussReply1.setDiscussId(discussReply.getDiscussId());
        discussReply1.setDiscussreplyContent(discussReply.getDiscussreplyContent());
        discussReply1.setUserId(user.getUserId());
        discussReply1.setDiscussreplyDate(new java.sql.Date(new Date().getTime()));
        discussReplyService.addDiscussReply(discussReply1);
        DiscussReplyUser discussReplyUser1=new DiscussReplyUser();
        discussReplyUser1.setDiscussId(discussReply.getDiscussId());
        discussReplyUser1.setUsername(user.getUsername());
        discussReplyUser1.setRankName(rankService.selectRankByRankId(user.getRankId()).getRankName());
        discussReplyUser1.setUserImgurl(user.getUserImgurl());
        discussReplyUser1.setDiscussreplyContent(discussReply.getDiscussreplyContent());

        return discussReplyUser1;
    }


    @RequestMapping(value = "/addQuestion",method =RequestMethod.POST)
    public String addquestion(HttpSession session,HttpServletRequest request,String content){
        User user= (User) session.getAttribute("user");
        System.out.println("用户id："+user.getUserId());
        Question question=new Question();
        question.setQuestionContent(content);
        question.setUserId(user.getUserId());

        question.setQuestionDate(new Date());
        questionService.addQuestion(question);
        System.out.println(444444444);
        return "redirect:question.action";



    }

    @RequestMapping(value = "/addHandleTopic", method = RequestMethod.POST)
    public String addHandleTopic(HttpSession session, @RequestParam("topImgurl") MultipartFile topImgurl, Topic topic, HttpServletRequest request) throws ParseException {
        User user= (User) session.getAttribute("user");
        Topic topic1=new Topic();
        if (!topImgurl.isEmpty()) {
            String path = "F:\\JavaWorkspace\\ideawork\\ifashion\\src\\main\\webapp\\static\\user\\talk\\image\\topic\\";
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
            topic1.setTopicImgurl("static/user/talk/image/topic/"+newFileName);
        }
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateStringStart = formatter.format(topic.getTopicStart());
        String dateStringEnd = formatter.format(topic.getTopicEnd());
        Date newDateStart= formatter.parse(dateStringStart);
        Date newDateEnd= formatter.parse(dateStringEnd);
        topic1.setUserId(user.getUserId());
        topic1.setTopicTitle(topic.getTopicTitle());
        topic1.setTopicContent(topic.getTopicContent());
        topic1.setTopicStart(newDateStart);
        topic1.setTopicEnd(newDateEnd);
        topicService.addTopicSelective(topic1);
        return "redirect:topic.action";
    }


    @RequestMapping(value = "/addReplyReply",method =RequestMethod.POST)
    @ResponseBody
    public RRQuestionUser addreplyreply(HttpSession session,@RequestBody RRQuestionUser rrQuestionUser) throws ParseException {
        User user= (User) session.getAttribute("user");
        System.out.println("用户"+user.getUserId());
        RRQuestionUser rrQuestionUser1=new RRQuestionUser();
        System.out.println("回复内容:"+rrQuestionUser.getReplyReplyQuesContent());
        rrQuestionUser1.setUser(user);
        rrQuestionUser1.setBhfusername(rrQuestionUser.getBhfusername());
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//        String date = formatter.format(new Date());
//        Date date1=formatter.parse(date);
//        rrQuestionUser1.setReplyReplyQuesDate(date1);
        rrQuestionUser1.setReplyReplyQuesContent(rrQuestionUser.getReplyReplyQuesContent());

        //封装进数据库的对象
        System.out.println("回答id:"+rrQuestionUser.getReplyquestionId());
        ReplyReplyQuestion replyReplyQuestion=new ReplyReplyQuestion();
        replyReplyQuestion.setReplyReplyQuesId(rrQuestionUser.getReplyReplyQuesId());
        replyReplyQuestion.setReplyquestionId(rrQuestionUser.getReplyquestionId());
        replyReplyQuestion.setUserId(user.getUserId());
        replyReplyQuestion.setReplyReplyQuesDate(new java.sql.Date(new Date().getTime()));
        replyReplyQuestion.setReplyReplyQuesContent(rrQuestionUser.getReplyReplyQuesContent());
        replyReplyQuestion.setHreplyReplyQuesId(rrQuestionUser.getHreplyReplyQuesId());
        replyReplyQuestionService.addReplyReplyQuestion(replyReplyQuestion);

        rrQuestionUser1.setReplyReplyQuesId(replyReplyQuestionService.selectReplyReplyQuestionTop().getReplyReplyQuesId());

        return rrQuestionUser1;

    }


    @RequestMapping(value = "/addReplyquestion",method =RequestMethod.POST)
    @ResponseBody
    public ReplyQuestionUser addaddReplyquestion(HttpSession session,@RequestBody ReplyQuestionUser replyQuestionUser){
        User user= (User) session.getAttribute("user");
        System.out.println("用户"+user.getUserId());
        ReplyQuestionUser replyQuestionUser1=new ReplyQuestionUser();
        System.out.println("回复内容:"+replyQuestionUser1.getReplyContent());
        replyQuestionUser1.setUser(user);
        replyQuestionUser1.setReplyContent(replyQuestionUser.getReplyContent());
        replyQuestionUser1.setReplyDate(new Date());


        //封装进数据库的对象
        ReplyQuestion replyQuestion=new ReplyQuestion();
        replyQuestion.setQuestionId(replyQuestionUser.getQuestionId());
        replyQuestion.setReplyContent(replyQuestionUser.getReplyContent());
        replyQuestion.setReplyDate(new java.sql.Date(new Date().getTime()));
        replyQuestion.setUserId(user.getUserId());

        replyQuestionService.addReplyQuestion(replyQuestion);

        return replyQuestionUser1;

    }

    @RequestMapping(value = "/waitAnswer",method =RequestMethod.POST)
    public @ResponseBody List<QuestionReply> waitAnswer(Map<String, Object> map){
        List<Question> questions=questionService.selectAllQuestion();
        List<QuestionReply> questionRepliess=new ArrayList<>();
        for(Question question:questions){
            QuestionReply questionReply=new QuestionReply();
            if(replyQuestionService.selectReplyQuestionByQuestionId(question.getQuestionId())==null){
                questionReply.setQuestionId(question.getQuestionId());
                questionReply.setQuestionContent(question.getQuestionContent());
                questionReply.setQuserImgurl(userService.selectUserByUserId(question.getUserId()).getUserImgurl());
                System.out.println(userService.selectUserByUserId(question.getUserId()).getUsername());
                questionReply.setQuserName(userService.selectUserByUserId(question.getUserId()).getUsername());
                questionReply.setAttentionNum(question.getAttentionNum());
                questionReply.setQuestionDate(question.getQuestionDate());
                questionRepliess.add(questionReply);
            }
        }
        map.put("questionRepliess",questionRepliess);
        System.out.println("================"+questionRepliess);
        return questionRepliess;
    }


    @RequestMapping(value = "/addinformation",method = RequestMethod.GET)
    public String addinformation(Integer topicId, Map<String,Object> map){
        map.put("topicId",topicId);
        return "user/talk/addinformation";
    }


    @RequestMapping(value = "/addHandleInformation", method = RequestMethod.POST)
    public String addHandleInformation(HttpSession session,Discuss discuss) {
        User user= (User) session.getAttribute("user");
        Discuss discuss1=new Discuss();
        discuss1.setDiscussTitle(discuss.getDiscussTitle());
        discuss1.setTopicId(discuss.getTopicId());
        discuss1.setUserId(user.getUserId());
        discuss1.setDiscussContent(discuss.getDiscussContent());
        discuss1.setDiscussDate(new java.sql.Date(new Date().getTime()));
        discussService.addDiscuss(discuss1);
        return "redirect:topicInfo.action?topicId="+discuss.getTopicId();
    }

    @RequestMapping(value = "/addTag",method = RequestMethod.POST)
    @ResponseBody
    public String[] addTag(String[] spans, Map<String,Object> map){
        System.out.println(spans);
        map.put("spans",spans);
        return spans;
    }


    @RequestMapping(value = "/addCollectTopic", method = RequestMethod.POST)
    @ResponseBody
    public MyCollection addCollectTopic(HttpSession session, @RequestBody MyCollection myCollection, Map<String,Object> map) {

        System.out.println("aaaaaaaaaaaaaaaaaaaaa");
        Integer userId= (Integer) session.getAttribute("userId");
        int uid=Integer.parseInt(String.valueOf(userId));
        User user=userService.selectUserByUserId(uid);
        MyCollection myCollection1 = new MyCollection();

        myCollection1.setUserId(uid);
        myCollection1.setTopicId(myCollection.getTopicId());
        myCollectionService.addMyCollectionSelective(myCollection1);

        return myCollection1;
    }

    @RequestMapping(value = "/cancelCollectTopic", method = RequestMethod.POST)
    @ResponseBody
    public MyCollection cancelCollectTopic(HttpSession session, @RequestBody MyCollection myCollection, Map<String,Object> map) {
        String msg="";
        User user= (User) session.getAttribute("user");
        int userid=Integer.parseInt(String.valueOf(user.getUserId()));
        Integer topicId = myCollection.getTopicId();
        System.out.println("用户id"+user.getUserId());
        System.out.println("话题id"+topicId);
        MyCollection myCollection1 = myCollectionService.selectCollectByUAndT(userid,topicId);
        System.out.println(myCollection1);
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

    @RequestMapping(value = "matchInfo/ajaxcancelAttention",method = RequestMethod.POST)
    @ResponseBody
    public UserAttention ajaxcancelAttention(@RequestBody UserAttention userAttention, HttpSession session){
        String msg="";
        System.out.println("取消关注！！！！！！！！！");
        int userId= (Integer) session.getAttribute("userId");
        int userdId = userAttention.getUserdId();

        UserAttention userAttention1 = userAttentionService.selectIt(userId,userdId);
        int attentionId = userAttention1.getAttentionId();
        int n = userAttentionService.deleteUserAttention(attentionId);
        if(n>0){
            msg="删除成功";
        }else {
            msg="删除失败";
        }
        System.out.println(msg);

        return userAttention1;
    }

    @RequestMapping(value = "magazine",method = {RequestMethod.POST,RequestMethod.GET})
    public String magazine(){
        return "user/talk/magazine";
    }

    @RequestMapping(value = "copyright",method = {RequestMethod.POST,RequestMethod.GET})
    public String copyright(){
        return "user/foot/copyright";
    }

    @RequestMapping(value = "aboutus",method = {RequestMethod.POST,RequestMethod.GET})
    public String aboutus(){
        return "user/foot/aboutus";
    }

    @RequestMapping(value = "joinus",method = {RequestMethod.POST,RequestMethod.GET})
    public String joinus(){
        return "user/foot/joinus";
    }

    @RequestMapping(value = "map",method = {RequestMethod.POST,RequestMethod.GET})
    public String map(){
        return "user/foot/mapmap";
    }

}
