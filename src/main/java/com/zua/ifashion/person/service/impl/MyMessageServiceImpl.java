package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.MyMessage;
import com.zua.ifashion.person.mapper.MyMessageMapper;
import com.zua.ifashion.person.service.MyMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("myMessageService")
public class MyMessageServiceImpl implements MyMessageService{
    @Autowired
    private MyMessageMapper myMessageMapper;
    @Override
    public int addMyMessageSelective(MyMessage myMessage) {
        return myMessageMapper.addMyMessageSelective(myMessage);
    }

    @Override
    public int deleteMyMessage(Integer mymessageId) {
        return myMessageMapper.deleteMyMessage(mymessageId);
    }

    @Override
    public int updateMymessageSelective(MyMessage myMessage) {
        return myMessageMapper.updateMymessageSelective(myMessage);
    }

    @Override
    public MyMessage selectMyMessageById(Integer mymessageId) {
        return myMessageMapper.selectMyMessageById(mymessageId);
    }

    @Override
    public List<MyMessage> selectMyMessagesByUserId(Integer userId) {
        return myMessageMapper.selectMyMessagesByUserId(userId);
    }

    @Override
    public List<MyMessage> selectMyUnreadMessagesByUserId(Integer userId) {
        return myMessageMapper.selectMyUnreadMessagesByUserId(userId);
    }

    @Override
    public List<MyMessage> selectMyReadMessagesByUserId(Integer userId) {
        return myMessageMapper.selectMyReadMessagesByUserId(userId);
    }

    @Override
    public List<MyMessage> getAllUnreadMyMessages() {
        return myMessageMapper.getAllUnreadMyMessages();
    }

    @Override
    public List<MyMessage> getAllReadedMyMessages() {
        return myMessageMapper.getAllReadedMyMessages();
    }
}
