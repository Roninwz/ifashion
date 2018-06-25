package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;

import java.util.List;

public interface GoodsService {
    //    根据多种条件查询商品
    public abstract List<Goods> getGoodsByConditions(Integer goodstypeId, Integer goodschildId,Integer goodsmaterialId);
    //    根据设计师id得到设计师的作品
    public abstract List<GoodsAndImgDesignerVO> getGoodsByUserId(Integer userId);

//    根据商品的id得到商品的信息和图片
    public abstract GoodsAndImgDesignerVO getGoodsByGoodsId(Integer goodsId);

    public Goods selectGoodsByByGoodsId(Integer goodsId);

}
