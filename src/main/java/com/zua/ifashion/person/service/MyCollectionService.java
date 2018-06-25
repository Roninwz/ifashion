package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.vo.UserCollectArticleVo;
import com.zua.ifashion.person.vo.UserCollectTopicVo;

import java.util.List;

public interface MyCollectionService {



    int addMyCollectionSelective(MyCollection myCollection);

    int deleteMyCollectionById(Integer mycollectId);

    MyCollection selectMyCollectionById(Integer mycollectId);


    List<MyCollection> selectMyCollectionByUserId(Integer userId);

    MyCollection selectCollectByUAndA(Integer userId,Integer articleId);

    List<UserCollectTopicVo> selectTopicCollectByUserId(Integer userId);

    List<UserCollectArticleVo> selectArticleCollectByUserId(Integer userId);
    MyCollection selectCollectByUAndT(Integer userId,Integer topicId);


}
