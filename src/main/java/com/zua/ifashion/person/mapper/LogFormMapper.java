package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.LogForm;

import java.util.List;

public interface LogFormMapper {


    int addLogFormSelective(LogForm logForm);

    int deleteLogForm(Integer logId);

    LogForm selectLogForm(Integer logId);

    List<LogForm> getAllLogForms();
    //获取所有用户日志
    List<LogForm>  getAllUserLogForms();

    //获取所有管理员日志
    List<LogForm>  getAllAdminLogForms();

}
