package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ClothesTag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagMapper {

    //根据ClothesTagTypeId查询ClothesTag
    List<ClothesTag> selectTagNameByTypeId(@Param("clothesTagTypeId") Integer clothesTagTypeId);

    //根据type查询ClothesTag
    List<ClothesTag> selectTagNameByType(@Param("type") String type);

}
