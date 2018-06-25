package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.AdminMessage;
import com.zua.ifashion.person.mapper.AdminMessageMapper;
import com.zua.ifashion.person.service.AdminMessageService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdminMessageServiceImpl implements AdminMessageService {
    @Autowired
    private AdminMessageMapper adminMessageMapper;
    @Override
    public int addAdminMessageSelective(AdminMessage adminMessage) {
        return adminMessageMapper.addAdminMessageSelective(adminMessage);
    }

    @Override
    public int deleteAdminMessage(Integer adminMessageId) {
        return adminMessageMapper.deleteAdminMessage(adminMessageId);
    }

    @Override
    public int updateAdminmessageSelective(AdminMessage adminMessage) {
        return adminMessageMapper.updateAdminmessageSelective(adminMessage);
    }

    @Override
    public AdminMessage selectAdminMessageById(Integer adminMessageId) {
        return adminMessageMapper.selectAdminMessageById(adminMessageId);
    }

    @Override
    public List<AdminMessage> selectAdminMessagesByAdminId(Integer adminId) {
        return adminMessageMapper.selectAdminMessagesByAdminId(adminId);
    }

    @Override
    public List<AdminMessage> getAllUnreadAdminMessages() {
        return adminMessageMapper.getAllUnreadAdminMessages();
    }

    @Override
    public List<AdminMessage> getAllReadedAdminMessages() {
        return adminMessageMapper.getAllReadedAdminMessages();
    }
}
