package com.zua.ifashion.online.vo;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.entity.GoodsImg;

import java.util.List;

public class GoodsAndImgDesignerVO extends Goods{
    private List<GoodsImg> goodsImgList;


    public GoodsAndImgDesignerVO() {
    }


    public List<GoodsImg> getGoodsImgList() {
        return goodsImgList;
    }

    public void setGoodsImgList(List<GoodsImg> goodsImgList) {
        this.goodsImgList = goodsImgList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof GoodsAndImgDesignerVO)) return false;

        GoodsAndImgDesignerVO that = (GoodsAndImgDesignerVO) o;

        if (getGoodsImgList() != null ? !getGoodsImgList().equals(that.getGoodsImgList()) : that.getGoodsImgList() != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        return getGoodsImgList() != null ? getGoodsImgList().hashCode() : 0;
    }
}
