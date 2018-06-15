package com.zua.ifashion.online.vo;

import com.zua.ifashion.online.entity.GoodsType;

import java.util.List;

public class GoodsIntegrateVO extends GoodsType {
    private List<GoodsAndImgDesignerVO> goodsAndImgDesignerVOList;

    public List<GoodsAndImgDesignerVO> getGoodsAndImgDesignerVOList() {
        return goodsAndImgDesignerVOList;
    }

    public void setGoodsAndImgDesignerVOList(List<GoodsAndImgDesignerVO> goodsAndImgDesignerVOList) {
        this.goodsAndImgDesignerVOList = goodsAndImgDesignerVOList;
    }

    public GoodsIntegrateVO(Integer goodstypeId, String goodstypeName, List<GoodsAndImgDesignerVO> goodsAndImgDesignerVOList) {
        super(goodstypeId, goodstypeName);
        this.goodsAndImgDesignerVOList = goodsAndImgDesignerVOList;
    }
    public GoodsIntegrateVO(){

    }
}
