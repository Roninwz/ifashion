package com.zua.ifashion.article.entity;

public class ClothesTagImg {

    private int clothesTagImgId;

    private int clothesTagId;

    private String clothesTagImgUrl;

    private int articleId;

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public ClothesTagImg(int clothesTagImgId, int clothesTagId, String clothesTagImgUrl, int articleId) {
        this.clothesTagImgId = clothesTagImgId;
        this.clothesTagId = clothesTagId;
        this.clothesTagImgUrl = clothesTagImgUrl;
        this.articleId = articleId;
    }

    public ClothesTagImg() {
    }

    public int getClothesTagImgId() {
        return clothesTagImgId;
    }

    public void setClothesTagImgId(int clothesTagImgId) {
        this.clothesTagImgId = clothesTagImgId;
    }

    public int getClothesTagId() {
        return clothesTagId;
    }

    public void setClothesTagId(int clothesTagId) {
        this.clothesTagId = clothesTagId;
    }

    public String getClothesTagImgUrl() {
        return clothesTagImgUrl;
    }

    public void setClothesTagImgUrl(String clothesTagImgUrl) {
        this.clothesTagImgUrl = clothesTagImgUrl;
    }
}
