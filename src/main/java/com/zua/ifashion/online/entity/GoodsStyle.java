package com.zua.ifashion.online.entity;

public class GoodsStyle {
    private Integer goodsstyleId;
    private String goodsstyleName;

    public Integer getGoodsstyleId() {
        return goodsstyleId;
    }

    public void setGoodsstyleId(Integer goodsstyleId) {
        this.goodsstyleId = goodsstyleId;
    }

    public String getGoodsstyleName() {
        return goodsstyleName;
    }

    public void setGoodsstyleName(String goodsstyleName) {
        this.goodsstyleName = goodsstyleName;
    }


    public GoodsStyle() {
    }

    public GoodsStyle(Integer goodsstyleId, String goodsstyleName) {
        this.goodsstyleId = goodsstyleId;
        this.goodsstyleName = goodsstyleName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GoodsStyle that = (GoodsStyle) o;

        if (goodsstyleId != null ? !goodsstyleId.equals(that.goodsstyleId) : that.goodsstyleId != null) return false;
        return goodsstyleName != null ? goodsstyleName.equals(that.goodsstyleName) : that.goodsstyleName == null;
    }

    @Override
    public int hashCode() {
        int result = goodsstyleId != null ? goodsstyleId.hashCode() : 0;
        result = 31 * result + (goodsstyleName != null ? goodsstyleName.hashCode() : 0);
        return result;
    }
}
