package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.MyMessage;

import java.util.List;

public interface MyMessageMapper {

    int addMyMessageSelective(MyMessage myMessage);

    int deleteMyMessage(Integer mymessageId);

    MyMessage selectMyMessageById(Integer mymessageId);

  List<MyMessage> selectMyMessagesByUserId(Integer userId);

}