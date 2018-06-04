package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.vo.UserAttentionVo;

import java.util.List;

public interface UserAttentionMapper {

    int addUserAttention();

    int deleteUserAttention();

    //查询关注的人

    UserAttention selectUserAttentionByName();
    //获取关注的所有人
    List<UserAttentionVo> getAllUserAttentions();
    //获取关注的用户
    List<UserAttentionVo> getAllAttentionUsers();
    //获取关注的设计师
    List<UserAttentionVo> getAllAttentionDesigners();

    int getAllUserAttentionCount();
}