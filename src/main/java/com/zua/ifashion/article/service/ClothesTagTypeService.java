package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.ClothesTagType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagTypeService {


    ClothesTagType selectTypeById(@Param("clothesTagTypeId") Integer clothesTagTypeId);

    List<ClothesTagType> selectAllTagType();

    List<ClothesTagType> selectTagTypeByType(@Param("type") String type);

}
