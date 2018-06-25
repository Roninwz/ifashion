package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.vo.UserAttentionVo2;

import java.util.List;

public interface UserAttentionService {


    int addUserAttentionSelective(UserAttention userAttention);

    int deleteUserAttention(Integer attentionId);
    int deleteUserAttentionByUserIdAndUsered(Integer userId,Integer userdId);
    //查询关注的人

    UserAttention selectUserAttentionById(Integer attentionId);

    List<UserAttention> selectUserAttentionByUserId(Integer userId);
    //UserAttention selectUserAttentionByName();
    //获取关注的所有人
    List<UserAttention> getAllAttentions();

    List<UserAttentionVo2> selectFansByUserdId(Integer userdId);

    List<UserAttentionVo2> selectAttentionByUserId(Integer userId);


    UserAttention selectIt(Integer userId, Integer userdId);


}
