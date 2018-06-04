package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.mapper.UserMapper;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int addUserSelective(User user) {
        return userMapper.addUserSelective(user);
    }

    @Override
    public int deleteUser(Integer userId) {
        return userMapper.deleteUser(userId);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int updateUserSelective(User user) {
        return userMapper.updateUserSelective(user);
    }

    @Override
    public User selectUserByUserId(String userId) {
        return userMapper.selectUserByUserId(userId);
    }

    @Override
    public User selectUserByUsername(String username) {
        return userMapper.selectUserByUsername(username);
    }

    @Override
    public User selectUserByEmail(String email) {
        return userMapper.selectUserByEmail(email);
    }

    @Override
    public User selectUserByTel(String tel) {
        return userMapper.selectUserByTel(tel);
    }

    @Override
    public User selectUserByUnameAndPass(String uname, String password) {
        return userMapper.selectUserByUnameAndPass(uname,password);
    }

    @Override
    public List<User> getAllUsers() {
        return userMapper.getAllUsers();
    }

    @Override
    public int getAllUserCount() {
        return userMapper.getAllUserCount();
    }
}
