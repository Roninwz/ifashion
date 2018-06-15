package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.Complain;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComplainService {

    //添加举报
    int addComplain(@Param("complain") Complain complain);

    //添加非空字段举报
    int addComplainSelective(@Param("complain") Complain complain);

    //删除举报
    int deleteComplain(@Param("complainId") Integer complainId);

    //根据userid查询被举报信息
    Complain selectComplainBycomplainedUserid(@Param("complainedUserid") Integer complainedUserid);

    //根据complainId查询举报信息
    Complain selectComplainByComplainId(@Param("complainId") Integer complainId);

    //查询所有举报信息
    List<Complain> selectAllComplain();
}
