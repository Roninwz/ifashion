package com.zua.ifashion.talk.mapper;

import com.zua.ifashion.talk.vo.DiscussUser;

import java.util.List;

public interface DiscussUserMapper {
    List<DiscussUser> selectDiscussUserByTopicId(Integer topicId);
}
