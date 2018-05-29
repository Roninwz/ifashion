package com.zua.ifashion.person.entity;

public class Magazine {
    private Integer idMaga;

    private String magaImgurl;

    public Integer getIdMaga() {
        return idMaga;
    }

    public void setIdMaga(Integer idMaga) {
        this.idMaga = idMaga;
    }

    public String getMagaImgurl() {
        return magaImgurl;
    }

    public void setMagaImgurl(String magaImgurl) {
        this.magaImgurl = magaImgurl == null ? null : magaImgurl.trim();
    }
}