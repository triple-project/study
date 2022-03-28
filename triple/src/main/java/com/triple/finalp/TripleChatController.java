package com.triple.finalp;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Controller
public class TripleChatController extends TextWebSocketHandler{

    /**
     * websocket 연결 성공 시
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }
 
    /**
     * websocket 연결 종료 시
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
 
    }
    
    /**
     * websocket 메세지 수신 및 송신
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
 
    }
}
