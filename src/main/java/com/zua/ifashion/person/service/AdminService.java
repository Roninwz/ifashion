package com.zua.ifashion.person.service;

import com.zua.ifashion.person.entity.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminService {


    //添加管理员
    int addAdmin(Admin admin);
    //添加管理员不为空字段
    int addAdminSelective(Admin admin);
    //删除管理员
    int deleteAdmin(Integer adminId);

    //更新管理员
    int updateAdmin(Admin admin);
    //更新管理员不为空字段
    int updateAdminSelective(Admin admin);

    //通过管理员id查询用户
    Admin selectAdminByAdminId(@Param("adminId") Integer adminId);
    //通过管理员名查询用户
    Admin selectAdminByAdminName(@Param("adminName") String adminName);


    //通过管理名和密码验证管理员登录
    Admin selectAdminByAdminNameAndPass(@Param("adminName") String adminName, @Param("password") String password);

    //查询所有管理员
    List<Admin> getAllAdmins();


    //查询所有管理员数量
    int getAllAdminCount();
}
