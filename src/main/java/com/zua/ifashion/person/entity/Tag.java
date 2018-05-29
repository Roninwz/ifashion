package com.zua.ifashion.person.entity;

public class Tag {
    private Integer idTag;

    private String tagName;

    private String tagMark;

    public Integer getIdTag() {
        return idTag;
    }

    public void setIdTag(Integer idTag) {
        this.idTag = idTag;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName == null ? null : tagName.trim();
    }

    public String getTagMark() {
        return tagMark;
    }

    public void setTagMark(String tagMark) {
        this.tagMark = tagMark == null ? null : tagMark.trim();
    }
}