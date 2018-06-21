package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.LogForm;

import java.util.List;

public interface LogFormService {


    int addLogFormSelective(LogForm logForm);

    int deleteLogForm(Integer logId);

    LogForm selectLogForm(Integer logId);



    List<LogForm> getAllLogForms();
    //获取所有用户日志
    List<LogForm>  getAllUserLogForms();

    //获取所有管理员日志
    List<LogForm>  getAllAdminLogForms();
}
