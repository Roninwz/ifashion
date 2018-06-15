package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.GoodsImg;

import java.util.List;

public interface GoodsImgMapper {
//    添加商品的照片
    public abstract int addGoodsImg(GoodsImg goodsImg);

    //添加商品照片不为空的字段
    public abstract int addGoodsImgSelective(GoodsImg goodsImg);

    //删除商品的照片
    public abstract int deleteGoodsImg(Integer goodImgId);
//更新商品的照片
    public abstract int updateGoodsImg(GoodsImg goodsImg);

//    更新商品的照片不为空的字段
    public abstract int updateGoodsImgSelective(GoodsImg goodsImg);

//    根据商品照片id查找信息
    public abstract GoodsImg selectGoodsImgById(Integer goodsImgId);

//    根据商品编号查询该商品的所有照片
    public abstract List<GoodsImg> selectGoodsImgBygoodId(Integer goodsId);

//    查询所有的商品照片
    public abstract List<GoodsImg> selectAllGoodsImg();



}