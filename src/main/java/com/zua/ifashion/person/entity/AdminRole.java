package com.zua.ifashion.person.entity;

public class AdminRole {
    private Integer adminroleId;

    private Integer adminId;

    private Integer roleId;

    private Integer state;

    public Integer getAdminroleId() {
        return adminroleId;
    }

    public void setAdminroleId(Integer adminroleId) {
        this.adminroleId = adminroleId;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public AdminRole(Integer adminroleId, Integer adminId, Integer roleId, Integer state) {
        this.adminroleId = adminroleId;
        this.adminId = adminId;
        this.roleId = roleId;
        this.state = state;
    }

    public AdminRole() {
    }
}