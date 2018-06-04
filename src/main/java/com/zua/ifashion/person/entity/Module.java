package com.zua.ifashion.person.entity;

public class Module {
    private Integer moduleId;

    private String moduleName;

    private String moduleUrl;

    private Integer parentId;

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName == null ? null : moduleName.trim();
    }

    public String getModuleUrl() {
        return moduleUrl;
    }

    public void setModuleUrl(String moduleUrl) {
        this.moduleUrl = moduleUrl == null ? null : moduleUrl.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Module(Integer moduleId, String moduleName, String moduleUrl, Integer parentId) {
        this.moduleId = moduleId;
        this.moduleName = moduleName;
        this.moduleUrl = moduleUrl;
        this.parentId = parentId;
    }

    public Module() {
    }
}