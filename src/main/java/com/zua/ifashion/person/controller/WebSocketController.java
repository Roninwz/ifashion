package com.zua.ifashion.person.controller;

import com.zua.ifashion.person.entity.MyMessage;
import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.service.MyMessageService;
import com.zua.ifashion.person.util.websocket.SpringWebSocketHandler;
import com.zua.ifashion.util.MessageInfos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class WebSocketController {
    @Autowired
    private MyMessageService myMessageService;
    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

    @RequestMapping(value="/sendwebSocket",method= RequestMethod.GET)
    public String sendMessageWebsocket(HttpSession session){

        String username = (String) session.getAttribute("uname");

        int messagecount= (int) session.getAttribute("messagecount");
        messagecount=messagecount+1;
        session.setAttribute("messagecount",messagecount);

        infoHandler().sendMessageToUser(username, new TextMessage("你好，测试！！！！"));
        return "user/index";
    }
    @RequestMapping(value="/sendwebSocket2",method= RequestMethod.GET)
    public String sendMessageWebsocket2(HttpSession session){

        String username = (String) session.getAttribute("uname");

        infoHandler().sendMessageToUser("wz001", new TextMessage("你好，测试！！！！"));
        return "user/index";
    }
    @RequestMapping("/websocket/send")
    @ResponseBody
    public String send(HttpServletRequest request) {
        // String username = request.getParameter("username");
        //String username = request.getParameter("username");

        infoHandler().sendMessageToUser("wz001", new TextMessage("你好，测试！！！！"));
        return null;
    }

//    @Scheduled(fixedRate = 1000 * 60 * 60 * 2) // 每隔2小时执行一次



//   @Scheduled(fixedRate = 1000 * 10  * 1)
//    public void scheduleMethod() {
//
//
//        new SpringWebSocketHandler().doTask();
//    }


    @RequestMapping("/ajaxGetMessages")
    @ResponseBody
    public MessageInfos ajaxGetMessages(HttpServletRequest request, HttpSession session) {
        // String username = request.getParameter("username");
        //String username = request.getParameter("username");
      MessageInfos messageInfos=new MessageInfos();
        User user= (User) session.getAttribute("user");
        String uname= (String) session.getAttribute("uname");
        String n="";
        if(user!=null){
            List<MyMessage> myMessages = myMessageService.selectMyUnreadMessagesByUserId(user.getUserId());

            n=Integer.toString(myMessages.size());

            infoHandler().sendMessageToUser(uname, new TextMessage(n));
        }
        messageInfos.setMessage(n);
        return messageInfos;
    }

}
