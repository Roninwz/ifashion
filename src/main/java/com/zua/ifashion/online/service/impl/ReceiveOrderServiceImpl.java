package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.GoodsImg;
import com.zua.ifashion.online.entity.ReceiveOrder;
import com.zua.ifashion.online.mapper.GoodsImgMapper;
import com.zua.ifashion.online.mapper.ReceiveOrderMapper;
import com.zua.ifashion.online.service.ReceiveOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReceiveOrderServiceImpl implements ReceiveOrderService{

    @Autowired
    private ReceiveOrderMapper receiveOrderMapper;
    @Autowired
    private GoodsImgMapper goodsImgMapper;

    @Override
    public List<ReceiveOrder> selectReceiveByDesignerId(Integer designerId) {
        return receiveOrderMapper.selectReceiveByDesignerId(designerId);
    }

    @Override
    public List<GoodsImg> selectGoodsImgBygoodId(Integer goodsId) {
        return goodsImgMapper.selectGoodsImgBygoodId(goodsId);
    }

    @Override
    public ReceiveOrder selectReceiveByOrdersId(Integer ordersId) {
        return receiveOrderMapper.selectReceiveByOrdersId(ordersId);
    }

    @Override
    public int updateReceiveOrder(ReceiveOrder receiveOrder) {
        return receiveOrderMapper.updateReceiveOrder(receiveOrder);
    }

    @Override
    public int addReceiveOrder(ReceiveOrder receiveOrder) {
        return receiveOrderMapper.addReceiveOrderSelective(receiveOrder);
    }
}
