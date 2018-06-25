package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.MyMessage;
import com.zua.ifashion.person.entity.Rank;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.MyMessageService;
import com.zua.ifashion.person.service.RankService;
import com.zua.ifashion.person.service.UserService;
import com.zua.ifashion.person.util.websocket.SpringWebSocketHandler;
import com.zua.ifashion.util.MessageInfos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class PersonalController {
    @Autowired
    private UserService userService;
    @Autowired
    RankService rankService;

    @Autowired
    private MyMessageService myMessageService;

    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

    //    @Autowired
    //    个人中心首页
    @RequestMapping(value = "/personal", method = RequestMethod.GET)
    public String userPersonal(HttpSession session, Map<String,Object> map) {


        Integer userId= (Integer) session.getAttribute("userId");
        String uname= (String) session.getAttribute("uname");
        User user=userService.selectUserByUserId(userId);
        List<MyMessage> myUnReadMessages = myMessageService.selectMyUnreadMessagesByUserId(userId);
       Rank rank= rankService.selectRankByRankId(user.getRankId());
        map.put("user",user);
        map.put("rank",rank);
        map.put("n",myUnReadMessages.size());
        System.out.println(user.getUserMark());
        //测试
        //infoHandler().sendMessageToUser(uname, new TextMessage("您收到一条新消息"));
        if(user.getUserMark().equals(0)){
            return "user/personal/user/index";
        }else {
            return "user/personal/designer/design";
        }

    }



    // 我的消息
    @RequestMapping(value = "/ajaxSignin", method = RequestMethod.POST)
    @ResponseBody
    public MessageInfos ajaxReaded(HttpSession session, @RequestBody User user, Map<String,Object> map) {
       User user1=new User();
       User user2=userService.selectUserByUserId(user.getUserId());
       user1.setScore(user2.getScore()+5);
       user1.setUserId(user2.getUserId());
        userService.updateUserSelective(user1);
        MessageInfos messageInfos=new MessageInfos();
        messageInfos.setMessage("签到成功");

        return messageInfos;
    }


}
