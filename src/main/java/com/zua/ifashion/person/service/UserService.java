package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.User;

import java.util.List;

public interface UserService {

    //添加用户
    int addUser(User user);
    //添加用户不为空字段
    int addUserSelective(User user);

    //删除用户
    int deleteUser(Integer userId);

    //更新用户
    int updateUser(User user);
    //更新用户不为空字段
    int updateUserSelective(User user);





    //更新密码
    int updatePassword(User user);

    //更新手机号
    int updateTel(User user);
    //更新邮箱
    int updateEmail(User user);
    //通过id查询用户
    User selectUserByUserId(Integer userId);
    //通过用户名查询用户
    User selectUserByUsername(String username);

    //查询用户邮箱是否已存在
    User selectUserByEmail( String email);

    //查询用户手机号是否已存在
    User selectUserByTel( String tel);

    //通过输入框输入的内容验证用户登录   where语句拼接字符串 还没写
    User selectUserByUnameAndPass( String uname, String password);

    //查询所有用户
    List<User> getAllUsers();
    //查询所有用户
    List<User> getAllUsersPage(Integer curPage,Integer pageSize);

    //批量删除

    //查询所有用户数量
    int getAllUserCount();
    //查询所有的设计师1

    List<User> getAllDesigners();
    //查询所有的用户

    List<User> getAllPersons();
    //模糊查询用户名

    List<User> selectUsersByUname(String username);
}
