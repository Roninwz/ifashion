package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.LogForm;
import com.zua.ifashion.person.mapper.LogFormMapper;
import com.zua.ifashion.person.service.LogFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("logFormService")
public class LogFormServiceImpl implements LogFormService {

    @Autowired
    private LogFormMapper logFormMapper;
    @Override
    public int addLogFormSelective(LogForm logForm) {
        return logFormMapper.addLogFormSelective(logForm);
    }

    @Override
    public int deleteLogForm(Integer logId) {
        return logFormMapper.deleteLogForm(logId);
    }

    @Override
    public LogForm selectLogForm(Integer logId) {
        return logFormMapper.selectLogForm(logId);
    }

    @Override
    public List<LogForm> getAllLogForms() {
        return logFormMapper.getAllLogForms();
    }

    @Override
    public List<LogForm> getAllUserLogForms() {
        return logFormMapper.getAllUserLogForms();
    }

    @Override
    public List<LogForm> getAllAdminLogForms() {
        return logFormMapper.getAllAdminLogForms();
    }
}
