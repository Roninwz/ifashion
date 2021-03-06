package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.Topic;
import com.zua.ifashion.talk.vo.TopicUser;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface TopicMapper {
    //添加话题
    int addTopic(Topic topic);

    //添加话题
    int addTopicSelective(Topic topic);

    //删除话题
    int deleteTopic(Integer topicId);

    //修改话题
    int updateTopic(Topic topic);

    //修改话题不为空字段
    int updateTopicSelective(Topic topic);

    //通过id查询话题
    Topic selectTopicByTopicId(Integer topicId);

    //通过用户id来查询话题
    List<Topic> selectTopicByUserId(Integer userId);

    //查询某个用户发布话题数量
    int getTopicCountByUserId(Integer userId);

    //查询话题是否已存在及根据内容
    int selectTopicByTopicContent(@Param("topicContent") String topicContent);

    //查询话题参与人数
    int selectTopicPeopleByTopicId(Integer topicId);

    //根据参与人数给话题排序
    List<Topic> selectTopicByTopicPeopleOrder();

    //查询话题浏览量
    int selectLookNumByTopicId(Integer topicId);

    //根据浏览量来给话题排序
    List<TopicUser> selectTopicByLookNumOrder();
    List<Topic> selectTopiccByLookNumOrder();

    //查询所有话题
    List<Topic> getAllTopic();

    //查询话题数量
    int getAllTopicCount();

    //根据时间段查询话题
    List<Topic> selectTopicByDate(Date topicStart,Date topicEnd);

    //查询比某个时间早的所有话题
    List<Topic> selectTopicByTopicStart(Date topicStart);

    //查询比某个时间晚的所有话题
    List<Topic> selectTopicByTopicEnd(Date topicEnd);



}