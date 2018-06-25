package com.zua.ifashion.person.entity;

import org.springframework.format.annotation.DateTimeFormat;

public class LogForm {
    private Integer logId;
    private  String logOperation;
    private String logName;
    private  Integer logIdentity;//0是用户，1是管理员
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private  String logCreatedate;

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getLogOperation() {
        return logOperation;
    }

    public void setLogOperation(String logOperation) {
        this.logOperation = logOperation;
    }

    public String getLogName() {
        return logName;
    }

    public void setLogName(String logName) {
        this.logName = logName;
    }

    public Integer getLogIdentity() {
        return logIdentity;
    }

    public void setLogIdentity(Integer logIdentity) {
        this.logIdentity = logIdentity;
    }

    public String getLogCreatedate() {
        return logCreatedate;
    }

    public void setLogCreatedate(String logCreatedate) {
        this.logCreatedate = logCreatedate;
    }

    public LogForm(Integer logId, String logOperation, String logName, Integer logIdentity, String logCreatedate) {
        this.logId = logId;
        this.logOperation = logOperation;
        this.logName = logName;
        this.logIdentity = logIdentity;
        this.logCreatedate = logCreatedate;
    }

    public LogForm() {
    }
}
