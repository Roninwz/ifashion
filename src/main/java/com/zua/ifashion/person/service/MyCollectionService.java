package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.MyCollection;

import java.util.List;

public interface MyCollectionService {



    int addMyCollectionSelective(MyCollection myCollection);

    int deleteMyCollectionById(Integer mycollectId);

    MyCollection selectMyCollectionById(Integer mycollectId);


    List<MyCollection> selectMyCollectionByUserId(Integer userId);
}
