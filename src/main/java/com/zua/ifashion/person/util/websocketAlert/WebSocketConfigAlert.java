package com.zua.ifashion.person.util.websocketAlert;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Configuration
@EnableWebMvc
@EnableWebSocket
public class WebSocketConfigAlert extends WebMvcConfigurerAdapter implements WebSocketConfigurer {
    public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
        registry.addHandler(webSocketHandler(),"/websocket/socketServer.action").addInterceptors(new WebSocketHandlerInterceptorAlert());
        registry.addHandler(webSocketHandler(), "/sockjs/socketServer.action").addInterceptors(new WebSocketHandlerInterceptorAlert()).withSockJS();
        //registry.addHandler(handler(), "/webSocket");
       // registry.addHandler(handler(), "/webSocket/socketJs").withSockJS();
    }

    @Bean
    public TextWebSocketHandler webSocketHandler(){
        return new WebSocketHandlerAlert();
    }

}