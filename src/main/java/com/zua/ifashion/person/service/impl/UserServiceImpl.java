package com.zua.ifashion.person.service.impl;

import com.zua.ifashion.person.entity.User;
import com.zua.ifashion.person.mapper.UserMapper;
import com.zua.ifashion.person.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
    public int updatePassword(User user) {
        return userMapper.updatePassword(user);
    }

    @Override
    public int updateTel(User user) {
        return userMapper.updateTel(user);
    }

    @Override
    public int updateEmail(User user) {
        return userMapper.updateEmail(user);
    }


    @Override
    public User selectUserByUserId(Integer userId) {
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
    public List<User> getAllUsersPage(Integer curPage, Integer pageSize) {
        return userMapper.getAllUsersPage(curPage,pageSize);
    }


    @Override
    public int getAllUserCount() {
        return userMapper.getAllUserCount();
    }

    @Override
    public List<User> getAllDesigners() {
        return userMapper.getAllDesigners();
    }

    @Override
    public List<User> getAllPersons() {
        return userMapper.getAllPersons();
    }

    @Override
    public List<User> selectUsersByUname(String username) {
        return userMapper.selectUsersByUname(username);
    }
}
