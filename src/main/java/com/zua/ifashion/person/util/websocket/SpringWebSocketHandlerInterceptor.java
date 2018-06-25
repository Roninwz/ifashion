package com.zua.ifashion.person.util.websocket;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * WebSocket拦截器
 * @author WANG
 *
 */
public class SpringWebSocketHandlerInterceptor extends HttpSessionHandshakeInterceptor {
    @Override
    public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
                                   Map<String, Object> attributes) throws Exception {
        // TODO Auto-generated method stub
        System.out.println("Before Handshake");
        System.out.println("进入WebSocket拦截器");
        if (request instanceof ServletServerHttpRequest) {
            System.out.println("进入ServletServerHttpRequest");
            ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) request;
            HttpSession session = servletRequest.getServletRequest().getSession(false);
            if (session != null) {
                System.out.println("进入session");
                //使用userName区分WebSocketHandler，以便定向发送消息
                String userName = (String) session.getAttribute("uname");
                Integer userId = (Integer) session.getAttribute("userId");

                if (userName==null) {
                    userName="default-system";
                }
                System.out.println(userName);
                attributes.put("WEBSOCKET_USERNAME",userName);
                attributes.put("WEBSOCKET_USERID",userId);
            }
        }
       // return super.beforeHandshake(request, response, wsHandler, attributes);
        return  true;
    }

    @Override
    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
                               Exception ex) {
        // TODO Auto-generated method stub
        super.afterHandshake(request, response, wsHandler, ex);
    }
}