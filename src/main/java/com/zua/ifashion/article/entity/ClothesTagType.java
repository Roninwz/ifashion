package com.zua.ifashion.article.entity;

public class ClothesTagType {

    private int clothesTagTypeId;

    private String type;

    private String clothesTagTypeName;

    private String clothesTagTypeImgUrl;

    public ClothesTagType() {
    }

    public ClothesTagType(int clothesTagTypeId, String type, String clothesTagTypeName, String clothesTagTypeImgUrl) {
        this.clothesTagTypeId = clothesTagTypeId;
        this.type = type;
        this.clothesTagTypeName = clothesTagTypeName;
        this.clothesTagTypeImgUrl = clothesTagTypeImgUrl;
    }

    public String getClothesTagTypeImgUrl() {
        return clothesTagTypeImgUrl;
    }

    public void setClothesTagTypeImgUrl(String clothesTagTypeImgUrl) {
        this.clothesTagTypeImgUrl = clothesTagTypeImgUrl;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getClothesTagTypeId() {
        return clothesTagTypeId;
    }

    public void setClothesTagTypeId(int clothesTagTypeId) {
        this.clothesTagTypeId = clothesTagTypeId;
    }

    public String getClothesTagTypeName() {
        return clothesTagTypeName;
    }

    public void setClothesTagTypeName(String clothesTagTypeName) {
        this.clothesTagTypeName = clothesTagTypeName;
    }
}
