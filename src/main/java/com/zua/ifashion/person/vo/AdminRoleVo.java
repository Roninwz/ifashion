package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.Admin;
import com.zua.ifashion.person.entity.Role;

import java.util.Date;
import java.util.List;

public class AdminRoleVo  extends Admin{


    private List<Role> roles;


    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public AdminRoleVo(Integer adminId, String adminName, String password, Date createDate, String introduce, List<Role> roles) {
        super(adminId, adminName, password, createDate, introduce);
        this.roles = roles;
    }

    public AdminRoleVo(List<Role> roles) {
        this.roles = roles;
    }

    public AdminRoleVo() {
    }


}
