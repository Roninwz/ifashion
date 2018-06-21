package com.zua.ifashion.person.vo;

public class ModuleVo {

    /** 菜单Id**/
    private int id;

    /** 上级Id**/
    private int pId;

    /** 菜单名称**/
    private String name;

    /** 菜单URL**/
    //private String moduleUrl;


    //private List<Module> subModule;


   // private boolean hasSubModule = false;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ModuleVo() {
    }

    public ModuleVo(int id, int pId, String name) {
        this.id = id;
        this.pId = pId;
        this.name = name;
    }
}
