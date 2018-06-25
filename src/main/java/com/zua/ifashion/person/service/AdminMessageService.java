package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.AdminMessage;

import java.util.List;

public interface AdminMessageService {



    int addAdminMessageSelective(AdminMessage adminMessage);

    int deleteAdminMessage(Integer adminMessageId);

    int updateAdminmessageSelective(AdminMessage adminMessage);


    AdminMessage selectAdminMessageById(Integer adminMessageId);

    List<AdminMessage> selectAdminMessagesByAdminId(Integer adminId);

   List<AdminMessage>  getAllUnreadAdminMessages();

    List<AdminMessage>  getAllReadedAdminMessages();
}
