package com.zua.ifashion.online.entity;

public class Address {
    private Integer idAddress;

    private Integer userId;

    private String addressContent;

    private Integer addressState;

    public Integer getIdAddress() {
        return idAddress;
    }

    public void setIdAddress(Integer idAddress) {
        this.idAddress = idAddress;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddressContent() {
        return addressContent;
    }

    public void setAddressContent(String addressContent) {
        this.addressContent = addressContent == null ? null : addressContent.trim();
    }

    public Integer getAddressState() {
        return addressState;
    }

    public void setAddressState(Integer addressState) {
        this.addressState = addressState;
    }
}