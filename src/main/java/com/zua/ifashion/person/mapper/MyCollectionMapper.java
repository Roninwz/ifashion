package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.vo.UserCollectArticleVo;
import com.zua.ifashion.person.vo.UserCollectTopicVo;

import java.util.List;

public interface MyCollectionMapper {

    int addMyCollectionSelective(MyCollection myCollection);


    int deleteMyCollectionById(Integer mycollectId);

    MyCollection selectMyCollectionById(Integer mycollectId);


    List<MyCollection> selectMyCollectionByUserId(Integer userId);

    //ck--根据userid和articleid查询实体
    MyCollection selectCollectByUAndA(Integer userId,Integer articleId);

    //ck--根据userid查询该设计师收藏的话题
    List<UserCollectTopicVo> selectTopicCollectByUserId(Integer userId);

    //ck--根据userid查询该设计师收藏的文章
    List<UserCollectArticleVo> selectArticleCollectByUserId(Integer userId);


    //l--根据userid和topicId查询实体
    MyCollection selectCollectByUAndT(Integer userId,Integer topicId);
}
