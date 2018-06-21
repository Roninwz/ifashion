package com.zua.ifashion.person.entity;

import java.util.Objects;

public class Module {
    private Integer moduleId;

    private String moduleName;

    private String moduleUrl;

    private Integer pId;

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

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Module(Integer moduleId, String moduleName, String moduleUrl, Integer pId) {
        this.moduleId = moduleId;
        this.moduleName = moduleName;
        this.moduleUrl = moduleUrl;
        this.pId = pId;
    }

    public Module() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Module)) return false;
        Module module = (Module) o;
        return Objects.equals(getModuleId(), module.getModuleId()) &&
                Objects.equals(getModuleName(), module.getModuleName()) &&
                Objects.equals(getModuleUrl(), module.getModuleUrl()) &&
                Objects.equals(getpId(), module.getpId());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getModuleId(), getModuleName(), getModuleUrl(), getpId());
    }
}