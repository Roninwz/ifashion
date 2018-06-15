package com.zua.ifashion.article.mapper;

import com.zua.ifashion.article.entity.ClothesTagType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagTypeMapper {

    //根据clothesTagTypeId查询TagType
    ClothesTagType selectTypeById(@Param("clothesTagTypeId") Integer clothesTagTypeId);

    //查询所有TagType
    List<ClothesTagType> selectAllTagType();

    //根据type查询TagType
    List<ClothesTagType> selectTagTypeByType(@Param("type") String type);
}
