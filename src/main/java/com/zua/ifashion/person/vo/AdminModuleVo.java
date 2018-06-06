package com.zua.ifashion.person.vo;

import com.zua.ifashion.person.entity.Module;

import java.util.List;
import java.util.Objects;

public class AdminModuleVo {
private String moduleName;
private List<Module> modules;

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }

    public AdminModuleVo(String moduleName, List<Module> modules) {
        this.moduleName = moduleName;
        this.modules = modules;
    }

    public AdminModuleVo() {
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminModuleVo)) return false;
        AdminModuleVo that = (AdminModuleVo) o;
        return Objects.equals(getModuleName(), that.getModuleName()) &&
                Objects.equals(getModules(), that.getModules());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getModuleName(), getModules());
    }
}
