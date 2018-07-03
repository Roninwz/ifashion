package com.zua.ifashion.talk.service;

import com.zua.ifashion.talk.entity.Discuss;
import com.zua.ifashion.talk.vo.DiscussUser;

import java.util.Date;
import java.util.List;

public interface DiscussService {
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
    Discuss selectDiscussByDiscussId(Integer discussId);

    //通过用户id来查询讨论
    List<Discuss> selectDiscussByUserId(Integer userId);

    //查询某个用户的讨论数量
    int selectDiscussByUserIdCount(Integer userId);

    //查询某个用户今日讨论数量
    int selectDiscussByUserIdCountDay(Integer userId);

    //查询讨论的用户ID
    List<Integer> selectUserIdInDiscuss();

    //通过话题id来查询讨论
    List<Discuss> selectDiscussByTopicId(Integer topicId);

    //查询某个话题的讨论数量
    int getDiscussCountByTopicId(Integer topicId);

    //查询讨论评论量
    int selectReviewNumByDiscussId(Integer discussId);

    //查询讨论浏览量
    Integer selectLookNumByDiscussId(Integer discussId);

    //查询比某个时间晚的所有讨论
    List<Discuss> selectDiscussByEDiscussDate(Date discussDate);

    //查询比某个时间早的所有讨论
    List<Discuss> selectDiscussByLDiscussDate(Date discussDate);

    //查询时间段内的讨论
    List<Discuss> selectAllDiscuss(Date start,Date end);

    // 查询所有话题数量
    int getAllDiscussCount();

    //查询所有讨论
    List<Discuss> getAllDiscuss();

    //查询forum页面的讨论
    List<DiscussUser> selectDiscussUserByTopicId(Integer topicId);

    //根据lookNum来查询最新热门讨论
    List<Discuss> selectDiscussByDiscussDateAndLookNum();


}
