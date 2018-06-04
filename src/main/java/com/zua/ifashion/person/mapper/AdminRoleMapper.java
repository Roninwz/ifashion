package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.AdminRole;

import java.util.List;

public interface AdminRoleMapper {


     int addAdminRoleSelective(AdminRole adminRole);


     int deleteAdminRole(int adminroleId);


     int updateAdminRoleSelective(AdminRole adminRole);

     AdminRole selectAdminRoleById(int adminroleId);

    //根据管理员id查询出AdminRole集合
     List<AdminRole> selectAdminRoleByAdminId(int adminId);

     List<AdminRole> getAllAdminRole();

}