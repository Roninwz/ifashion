package com.zua.ifashion.person.util.websocket;

import com.zua.ifashion.person.entity.MyMessage;
import com.zua.ifashion.person.service.MyMessageService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SpringWebSocketHandler extends TextWebSocketHandler {

    @Autowired
    private MyMessageService myMessageService;

    private static final ArrayList<WebSocketSession> users;//这个会出现性能问题，最好用Map来存储，key用userid
    private static Logger logger = Logger.getLogger(SpringWebSocketHandler.class);
    static {
        users = new ArrayList<WebSocketSession>();
    }

    public SpringWebSocketHandler() {
        // TODO Auto-generated constructor stub
    }

    /**
     * 连接成功时候，会触发页面上onopen方法
     */
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        // TODO Auto-generated method stub
        System.out.println("connect to the websocket success......当前数量:"+users.size());
        String username= (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        Integer userId= (Integer) session.getAttributes().get("WEBSOCKET_USERID");
        System.out.println("用户"+username+"已连接成功！");
        users.add(session);
        System.out.println("connect to the websocket success......当前数量:"+users.size());
        //这块会实现自己业务，比如，当用户登录后，会把离线消息推送给用户
        //String username2= (String) session.getAttributes().get("uname");
       // Integer uid=Integer.parseInt(userId);
        List<MyMessage> myMessages = myMessageService.selectMyUnreadMessagesByUserId(userId);
       if(myMessages.size()>0&&myMessages!=null){
           sendMessageToUser(username, new TextMessage("您有"+myMessages.size()+"条未读消息"));
       }else {
           sendMessageToUser(username, new TextMessage("您没有未读消息"));
       }


       // TextMessage returnMessage = new TextMessage("您有2条未读消息");
        //session.sendMessage(returnMessage);
    }

    /**
     * 关闭连接时触发
     */
    public void afterConnectionClosed(WebSocketSession session, CloseStatus closeStatus) throws Exception {
        logger.debug("websocket connection closed......");
        String username= (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        System.out.println("用户"+username+"已退出！");
        users.remove(session);
        System.out.println("剩余在线用户"+users.size());
    }

    /**
     * js调用websocket.send时候，会调用该方法
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        System.out.println("调用handleTextMessage");
        super.handleTextMessage(session, message);
    }

    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
        if(session.isOpen()){session.close();}
        logger.debug("websocket connection closed......");
        users.remove(session);
    }

    public boolean supportsPartialMessages() {
        return false;
    }


    /**
     * 给某个用户发送消息
     *
     * @param userName
     * @param message
     */
    public void sendMessageToUser(String userName, TextMessage message) {
        for (WebSocketSession user : users) {
            if (user.getAttributes().get("WEBSOCKET_USERNAME").equals(userName)) {
                try {
                    if (user.isOpen()) {
                        user.sendMessage(message);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
                break;
            }
        }
    }

    /**
     * 给所有在线用户发送消息
     *
     * @param message
     */
    public void sendMessageToUsers(TextMessage message) {
        for (WebSocketSession user : users) {
            try {
                if (user.isOpen()) {
                    user.sendMessage(message);
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    /**
     * 查看是否存在未处理的举报
     */
    public void doTask() {
        boolean hasinfo = true;
        /**
         逻辑处理代码段
         **/
        if (hasinfo) {
            sendMessageToUser("wwww", new TextMessage("推送内容task"));
        }

    }

    //用户查看未读消息Integer userId,String uname
    public void doUnRead( WebSocketSession session) {

        String username= (String) session.getAttributes().get("WEBSOCKET_USERNAME");

        boolean hasinfo = false;

        ///String username= (String) session.getAttributes().get("WEBSOCKET_USERNAME");
        /**
         逻辑处理代码段
         **/
//        List<MyMessage> myMessages = myMessageService.selectMyReadMessagesByUserId(userId);
//        if(myMessages.size()>0&&myMessages!=null){
//           hasinfo=true;
//       }


        if (hasinfo) {
            sendMessageToUser(username, new TextMessage("您有条未读消息"));
        }

    }

}