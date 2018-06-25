package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.MyMessage;

import java.util.List;

public interface MyMessageMapper {

    int addMyMessageSelective(MyMessage myMessage);

    int deleteMyMessage(Integer mymessageId);

    int updateMymessageSelective(MyMessage myMessage);


    MyMessage selectMyMessageById(Integer mymessageId);

     List<MyMessage> selectMyMessagesByUserId(Integer userId);

     List<MyMessage> selectMyUnreadMessagesByUserId(Integer userId);

     List<MyMessage> selectMyReadMessagesByUserId(Integer userId);


         //获取所有的未读消息
         List<MyMessage> getAllUnreadMyMessages();

        //获取所有的已读消息
         List<MyMessage> getAllReadedMyMessages();

}