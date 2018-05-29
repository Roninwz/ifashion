package com.zua.ifashion.person.entity;

public class MagazineWithBLOBs extends Magazine {
    private String magaContent;

    private String magaIntroduction;

    public String getMagaContent() {
        return magaContent;
    }

    public void setMagaContent(String magaContent) {
        this.magaContent = magaContent == null ? null : magaContent.trim();
    }

    public String getMagaIntroduction() {
        return magaIntroduction;
    }

    public void setMagaIntroduction(String magaIntroduction) {
        this.magaIntroduction = magaIntroduction == null ? null : magaIntroduction.trim();
    }
}