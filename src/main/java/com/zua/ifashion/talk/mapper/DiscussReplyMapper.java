package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.entity.DiscussReply;

public interface DiscussReplyMapper {
    int deleteByPrimaryKey(Integer idDiscussreply);

    int insert(DiscussReply record);

    int insertSelective(DiscussReply record);

    DiscussReply selectByPrimaryKey(Integer idDiscussreply);

    int updateByPrimaryKeySelective(DiscussReply record);

    int updateByPrimaryKeyWithBLOBs(DiscussReply record);

    int updateByPrimaryKey(DiscussReply record);
}