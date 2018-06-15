package com.zua.ifashion.article.service.impl;

import com.zua.ifashion.article.entity.ClothesTag;
import com.zua.ifashion.article.mapper.ClothesTagMapper;
import com.zua.ifashion.article.service.ClothesTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("clothesTagService")
public class ClothesTagServiceImpl implements ClothesTagService {

    @Autowired
    ClothesTagMapper clothesTagMapper;

    @Override
    public List<ClothesTag> selectTagNameByTypeId(Integer clothesTagTypeId) {
        return clothesTagMapper.selectTagNameByTypeId(clothesTagTypeId);
    }

    @Override
    public List<ClothesTag> selectTagNameByType(String type) {
        return clothesTagMapper.selectTagNameByType(type);
    }
}
