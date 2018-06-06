package com.zua.ifashion.talk.service;

import com.zua.ifashion.talk.entity.DiscussReply;

import java.util.Date;
import java.util.List;

public interface DiscussReplyService {
    //添加评论
    int addDiscussReply(DiscussReply discussReply);

    //添加评论
    int addDiscussReplySelective(DiscussReply discussReply);

    //删除评论
    int deleteDiscussReply(Integer discussreplyId);

    //修改评论
    int updateDiscussReply(DiscussReply discussReply);

    //修改话题不为空字段
    int updateDiscussReplySelective(DiscussReply discussReply);

    //通过id查询评论
    int selectDiscussReplyByDiscussreplyId(Integer discussreplyId);

    //通过用户id来查询评论
    List<DiscussReply> selectDiscussReplyByUserId(Integer userId);

    //查询某个用户的评论数量
    int getDiscussReplyCountByUserId(Integer userId);

    //通过discussId来查询评论
    List<DiscussReply> selectDiscussReplyByDiscussId(Integer discussId);

    //查询某篇讨论的所有评论数量
    int getDiscussReplyCountByDiscussId(Integer discussId);

    //查询某个话题的所有回复
    List<DiscussReply> selectDiscussReplyByTopicId(Integer topicId);

    //查询某个话题的所有回复数量
    int selectDiscussReplyCountByTopicId(Integer topicId);

    //查询点赞量
    int selectDiscussReplyByDiscussReplyZan(Integer discussId);

    //查询回复内容
    int selectDiscussReplyByDiscussReplyContent(Integer discussId);

    //根据日期查询回复
    List<DiscussReply> selectDiscussReplyByDiscussreplyDate(Date discussreplyDate);

    //查询所有回复
    List<DiscussReply> getAllDiscussReply();

    //查询所有回复数量
    int getAllDiscussReplyCount();

}
