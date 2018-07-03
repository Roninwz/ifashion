package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.mapper.GoodsMapper;
import com.zua.ifashion.online.mapper.GoodsStyleMapper;
import com.zua.ifashion.online.service.GoodsService;
import com.zua.ifashion.online.service.OnlineOrderGoodsService;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class OnlineOrderGoodsServiceImpl implements OnlineOrderGoodsService{
    @Autowired
    private GoodsMapper goodsMapper;

    @Autowired
    private GoodsStyleMapper goodsStyleMapper;

    @Autowired
    private GoodsService goodsService;
    @Override
    public List<GoodsAndImgDesignerVO> getGoodsByCondition(Integer goodstypeId, Integer goodschildId, Integer goodsMaterial, Integer goodsStyle) {
        List<GoodsAndImgDesignerVO> goodsAndImgDesignerVOList=new ArrayList<>();
        System.out.println(goodstypeId+"&"+goodschildId+"&"+goodsMaterial);
        List<Goods> goods =goodsService.getGoodsByConditions(goodstypeId,goodschildId,goodsMaterial);
        System.out.println(goods.size()+"goods");
        List<Integer> goodsId = goodsStyleMapper.selectGoodsByStyleId(goodsStyle);
        System.out.println(goodsId.size()+"id");
        for (Goods goods1 : goods) {
            for (Integer integer : goodsId) {
                if (goods1.getGoodsId() == integer) {
                    goodsAndImgDesignerVOList.add(goodsMapper.selectGoodByGoodsId(integer));

                    break;
                }

            }
        }
        return goodsAndImgDesignerVOList;
    }
}
