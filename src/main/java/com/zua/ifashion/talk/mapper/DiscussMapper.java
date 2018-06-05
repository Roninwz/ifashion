package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.Discuss;

import java.util.Date;
import java.util.List;

public interface DiscussMapper {
    //添加讨论
    int addDiscuss(Discuss discuss);

    //添加讨论
    int addDiscussSelective(Discuss discuss);

    //删除讨论
    int deleteDiscuss(Integer discussId);

    //修改讨论
    int updateDiscuss(Discuss discuss);

    //修改讨论不为空字段
    int updateDiscussSelective(Discuss discuss);

    //通过id查询讨论
    int selectDiscussByDiscussId(Integer discussId);

    //通过用户id来查询讨论
    List<Discuss> selectDiscussByUserId(Integer userId);

    //通过话题id来查询讨论
    List<Discuss> selectDiscussByTopicId(Integer topicId);

    //查询讨论评论量
    int selectReviewNumByDiscussId(Integer discussId);

    //查询讨论浏览量
    int selectLookNumByDiscussId(Integer discussId);

    //查询比某个时间晚的所有讨论
    List<Discuss> selectDiscussByEDiscussDate(Date discussDate);

    //查询比某个时间早的所有讨论
    List<Discuss> selectDiscussByLDiscussDate(Date discussDate);

    //查询时间段内的讨论
    List<Discuss> selectAllDiscuss(Date start,Date end);




}