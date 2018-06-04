package com.zua.ifashion.online.entity;

public class Address {
    private Integer addressId;

    private Integer userId;

    private String addressContent;

    private Integer addressState;

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
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

    public Address(Integer addressId, Integer userId, String addressContent, Integer addressState) {
        this.addressId = addressId;
        this.userId = userId;
        this.addressContent = addressContent;
        this.addressState = addressState;
    }

    public Address() {
    }
}