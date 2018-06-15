package com.zua.ifashion.person.entity;

import java.util.Date;

public class Admin {
    private Integer adminId;

    private String adminName;

    private String password;
    private Date createDate;
    private String introduce;
    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Admin(Integer adminId, String adminName, String password, Date createDate, String introduce) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.password = password;
        this.createDate = createDate;
        this.introduce = introduce;
    }

    public Admin() {
    }
}