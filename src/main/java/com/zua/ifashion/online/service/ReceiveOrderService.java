package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.GoodsImg;
import com.zua.ifashion.online.entity.ReceiveOrder;

import java.util.List;

public interface ReceiveOrderService {
    public List<ReceiveOrder> selectReceiveByDesignerId(Integer designerId);

    public List<GoodsImg> selectGoodsImgBygoodId(Integer goodsId);
    public ReceiveOrder selectReceiveByOrdersId(Integer ordersId);
}
