package com.zua.ifashion.person.entity;

public class Magazine {
    private Integer magaId;

    private String magaImgurl;

    public Integer getMagaId() {
        return magaId;
    }

    public void setMagaId(Integer magaId) {
        this.magaId = magaId;
    }

    public String getMagaImgurl() {
        return magaImgurl;
    }

    public void setMagaImgurl(String magaImgurl) {
        this.magaImgurl = magaImgurl == null ? null : magaImgurl.trim();
    }

    public Magazine(Integer magaId, String magaImgurl) {
        this.magaId = magaId;
        this.magaImgurl = magaImgurl;
    }

    public Magazine() {
    }
}