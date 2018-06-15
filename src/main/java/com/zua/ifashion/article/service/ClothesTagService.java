package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.ClothesTag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClothesTagService {

    List<ClothesTag> selectTagNameByTypeId(@Param("clothesTagTypeId") Integer clothesTagTypeId);

    List<ClothesTag> selectTagNameByType(@Param("type") String type);
}
