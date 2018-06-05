package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.DiscussReply;

import java.util.List;

public interface DiscussReplyMapper {
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

    //通过discussId来查询评论
    List<DiscussReply> selectDiscussReplyByDiscussId(Integer discussId);

    //查询点赞量
    int selectDiscussReplyByDiscussReplyZan(Integer discussreplyZan);

    //查询回复内容
    




}