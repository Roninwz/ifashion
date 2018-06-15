package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.UserAttention;

import java.util.List;

public interface UserAttentionMapper {

    int addUserAttentionSelective(UserAttention userAttention);

    int deleteUserAttention(Integer attentionId);

    //查询关注的人

    UserAttention selectUserAttentionById(Integer attentionId);
    List<UserAttention> selectUserAttentionByUserId(Integer userId);

    List<UserAttention> getAllAttentions();

    //int getAllUserAttentionCount();
}