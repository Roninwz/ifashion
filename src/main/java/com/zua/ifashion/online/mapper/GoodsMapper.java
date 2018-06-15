package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.Goods;
import com.zua.ifashion.online.vo.GoodsAndImgDesignerVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {
//    增加商品
    public abstract int addGoods(Goods goods);

//    增加商品不为空的字段
    public abstract int addGoodsSelective(Goods goods);

//    删除商品
    public abstract int deleteGoods(Integer goodsId);

//    更新商品
    public abstract int updateGoods(Goods goods);

//    更新商品不为空的字段
    public abstract int updateGoodsSelective(Goods goods);

//    查询所有的商品
    public abstract List<Goods> selectAllGoods();

//    根据id查询商品
    public abstract Goods selectGoodsById(Integer goodsId);

    //

//根据材质查询所有的商品
    public abstract List<Goods> selectGoodsByMaterial(String goodsmaterialName);

//    根据风格查询所有的商品
    public abstract List<Goods> selectGoodsByStyle(String goodsstyleName);

//    根据多种条件查询商品
    public abstract List<Goods> selectGoodsByConditions(@Param("goodstypeId") Integer goodstypeId,@Param("goodschildId") Integer goodschildId,@Param("goodsmaterialId") Integer goodsmaterialId);

    //根据风格和材质查询商品
    public abstract List<Goods> selectGoodsByMaterialAndStyle(String goodsmaterialName,String goodsstyleName);

//    根据设计师id得到设计师的作品
    public abstract List<GoodsAndImgDesignerVO> selectGoodsByUserId(Integer userId);

//    根据商品id得到商品带图片
    public abstract GoodsAndImgDesignerVO selectGoodByGoodsId(Integer goodsId);
}