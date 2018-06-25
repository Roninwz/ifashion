package com.zua.ifashion.online.entity;

public class GoodsMaterial {
    private Integer goodsmaterialId;
    private String goodsmaterialName;

    public Integer getGoodsmaterialId() {
        return goodsmaterialId;
    }

    public void setGoodsmaterialId(Integer goodsmaterialId) {
        this.goodsmaterialId = goodsmaterialId;
    }

    public String getGoodsmaterialName() {
        return goodsmaterialName;
    }

    public void setGoodsmaterialName(String goodsmaterialName) {
        this.goodsmaterialName = goodsmaterialName;
    }

    public GoodsMaterial(Integer goodsmaterialId, String goodsmaterialName) {
        this.goodsmaterialId = goodsmaterialId;
        this.goodsmaterialName = goodsmaterialName;
    }

    public GoodsMaterial() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GoodsMaterial that = (GoodsMaterial) o;

        if (goodsmaterialId != null ? !goodsmaterialId.equals(that.goodsmaterialId) : that.goodsmaterialId != null)
            return false;
        if (goodsmaterialName != null ? !goodsmaterialName.equals(that.goodsmaterialName) : that.goodsmaterialName != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = goodsmaterialId != null ? goodsmaterialId.hashCode() : 0;
        result = 31 * result + (goodsmaterialName != null ? goodsmaterialName.hashCode() : 0);
        return result;
    }
}
