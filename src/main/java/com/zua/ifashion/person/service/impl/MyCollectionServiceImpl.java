package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.MyCollection;
import com.zua.ifashion.person.mapper.MyCollectionMapper;
import com.zua.ifashion.person.service.MyCollectionService;
import com.zua.ifashion.person.vo.UserCollectArticleVo;
import com.zua.ifashion.person.vo.UserCollectTopicVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("myCollectionService")
public class MyCollectionServiceImpl implements MyCollectionService {
   @Autowired
   private MyCollectionMapper myCollectionMapper;
    @Override
    public int addMyCollectionSelective(MyCollection myCollection) {
        return myCollectionMapper.addMyCollectionSelective(myCollection);
    }

    @Override
    public int deleteMyCollectionById(Integer mycollectId) {
        return myCollectionMapper.deleteMyCollectionById(mycollectId);
    }

    @Override
    public MyCollection selectMyCollectionById(Integer mycollectId) {
        return myCollectionMapper.selectMyCollectionById(mycollectId);
    }

    @Override
    public List<MyCollection> selectMyCollectionByUserId(Integer userId) {
        return myCollectionMapper.selectMyCollectionByUserId(userId);
    }

    @Override
    public MyCollection selectCollectByUAndA(Integer userId, Integer articleId) {
        return myCollectionMapper.selectCollectByUAndA(userId, articleId);
    }

    @Override
    public List<UserCollectTopicVo> selectTopicCollectByUserId(Integer userId) {
        return myCollectionMapper.selectTopicCollectByUserId(userId);
    }

    @Override
    public List<UserCollectArticleVo> selectArticleCollectByUserId(Integer userId) {
        return myCollectionMapper.selectArticleCollectByUserId(userId);
    }
    @Override
    public MyCollection selectCollectByUAndT(Integer userId, Integer topicId) {
        return myCollectionMapper.selectCollectByUAndT(userId,topicId);
    }
}
