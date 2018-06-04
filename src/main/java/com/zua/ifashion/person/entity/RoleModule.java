package com.zua.ifashion.person.entity;

public class RoleModule {
    private Integer rolemoduleId;

    private Integer roleId;

    private Integer moduleId;

    public RoleModule(Integer rolemoduleId, Integer roleId, Integer moduleId) {
        this.rolemoduleId = rolemoduleId;
        this.roleId = roleId;
        this.moduleId = moduleId;
    }

    public RoleModule() {
    }

    public Integer getRolemoduleId() {
        return rolemoduleId;
    }

    public void setRolemoduleId(Integer rolemoduleId) {
        this.rolemoduleId = rolemoduleId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }
}