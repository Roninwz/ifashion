package com.zua.ifashion.person.mapper;

import com.zua.ifashion.person.entity.MyMessage;

public interface MyMessageMapper {
    int deleteByPrimaryKey(Integer idMymessage);

    int insert(MyMessage record);

    int insertSelective(MyMessage record);

    MyMessage selectByPrimaryKey(Integer idMymessage);

    int updateByPrimaryKeySelective(MyMessage record);

    int updateByPrimaryKeyWithBLOBs(MyMessage record);
}