package com.zua.ifashion.article.entity;

public class ClothesTag {

    private int clothesTagId;

    private int clothesTagTypeId;

    private String clothesTagName;

    private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public ClothesTag(int clothesTagId, int clothesTagTypeId, String clothesTagName, String type) {
        this.clothesTagId = clothesTagId;
        this.clothesTagTypeId = clothesTagTypeId;
        this.clothesTagName = clothesTagName;
        this.type = type;
    }

    public ClothesTag() {
    }

    public int getClothesTagTypeId() {
        return clothesTagTypeId;
    }

    public void setClothesTagTypeId(int clothesTagTypeId) {
        this.clothesTagTypeId = clothesTagTypeId;
    }

    public int getClothesTagId() {
        return clothesTagId;
    }

    public void setClothesTagId(int clothesTagId) {
        this.clothesTagId = clothesTagId;
    }

    public String getClothesTagName() {
        return clothesTagName;
    }

    public void setClothesTagName(String clothesTagName) {
        this.clothesTagName = clothesTagName;
    }

}
