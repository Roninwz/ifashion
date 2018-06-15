package com.zua.ifashion.online.vo;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.entity.GoodsImg;
import com.zua.ifashion.person.entity.User;

import java.util.Date;
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


}
