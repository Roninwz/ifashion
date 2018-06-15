package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.ClothesTagType;
import com.zua.ifashion.article.mapper.ClothesTagTypeMapper;
import com.zua.ifashion.article.service.ClothesTagTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("clothesTagTypeService")
public class ClothesTagTypeServiceImpl implements ClothesTagTypeService {

    @Autowired
    ClothesTagTypeMapper clothesTagTypeMapper;

    @Override
    public ClothesTagType selectTypeById(Integer clothesTagTypeId) {
        return clothesTagTypeMapper.selectTypeById(clothesTagTypeId);
    }

    @Override
    public List<ClothesTagType> selectAllTagType() {
        return clothesTagTypeMapper.selectAllTagType();
    }

    @Override
    public List<ClothesTagType> selectTagTypeByType(String type) {
        return clothesTagTypeMapper.selectTagTypeByType(type);
    }
}
