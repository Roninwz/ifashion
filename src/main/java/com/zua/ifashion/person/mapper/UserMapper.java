package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //idea格式化快捷键 ctrl+alt+L
    //查询所有加s

    //添加用户
    int addUser(User user);
    //添加用户
    int addUserSelective(User user);

    //删除用户
    int deleteUser(Integer userId);

    //更新用户
    int updateUser(User user);
    //更新用户不为空字段
    int updateUserSelective(User user);

    //通过id查询用户
    User selectUserByUserId(@Param("userId") Integer userId);
    //通过用户名查询用户
    User selectUserByUsername(@Param("username") String username);

    //查询用户邮箱是否已存在
    User selectUserByEmail(@Param("email") String email);

    //查询用户手机号是否已存在
    User selectUserByTel(@Param("tel") String tel);

    //通过输入框输入的内容验证用户登录   where语句拼接字符串 还没写
    User selectUserByUnameAndPass(@Param("uname") String uname,@Param("password") String password);

    //查询所有用户
    List<User> getAllUsers();

    //批量删除

    //查询所有用户数量
    int getAllUserCount();

}