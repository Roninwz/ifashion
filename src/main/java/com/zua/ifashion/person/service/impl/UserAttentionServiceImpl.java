package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.UserAttention;
import com.zua.ifashion.person.mapper.UserAttentionMapper;
import com.zua.ifashion.person.service.UserAttentionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userAttentionService")
public class UserAttentionServiceImpl implements UserAttentionService {
    @Autowired
    private UserAttentionMapper userAttentionMapper;
    @Override
    public int addUserAttentionSelective(UserAttention userAttention) {
        return userAttentionMapper.addUserAttentionSelective(userAttention);
    }

    @Override
    public int deleteUserAttention(Integer attentionId) {
        return userAttentionMapper.deleteUserAttention(attentionId);
    }

    @Override
    public UserAttention selectUserAttentionById(Integer attentionId) {
        return userAttentionMapper.selectUserAttentionById(attentionId);
    }

    @Override
    public List<UserAttention> selectUserAttentionByUserId(Integer userId) {
        return userAttentionMapper.selectUserAttentionByUserId(userId);
    }

    @Override
    public List<UserAttention> getAllAttentions() {
        return userAttentionMapper.getAllAttentions();
    }

}
