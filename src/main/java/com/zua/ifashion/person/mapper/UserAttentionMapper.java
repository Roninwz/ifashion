package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.vo.UserAttentionVo2;

import java.util.List;

public interface UserAttentionMapper {
    //6-25添加deleteUserAttentionByUserIdAndUsered

    int addUserAttentionSelective(UserAttention userAttention);

    int deleteUserAttention(Integer attentionId);


    int deleteUserAttentionByUserIdAndUsered(Integer userId,Integer userdId);




    //查询关注的人

    UserAttention selectUserAttentionById(Integer attentionId);
    List<UserAttention> selectUserAttentionByUserId(Integer userId);

    List<UserAttention> getAllAttentions();

    //根据userdId查询他的粉丝
    List<UserAttentionVo2> selectFansByUserdId(Integer userdId);

    //根据userid查询该用户的关注
    List<UserAttentionVo2> selectAttentionByUserId(Integer userId);

    //int getAllUserAttentionCount();

    //根据userId和userdId查询实体
    UserAttention selectIt(Integer userId, Integer userdId);
}