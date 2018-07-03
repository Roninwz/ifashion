package com.zua.ifashion.online.service;

import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;

import java.util.List;

public interface OnlineOrderGoodsService {

  public abstract List<GoodsAndImgDesignerVO> getGoodsByCondition(Integer goodstypeId, Integer goodschildId,Integer goodsMaterial,Integer goodsStyle);


}
