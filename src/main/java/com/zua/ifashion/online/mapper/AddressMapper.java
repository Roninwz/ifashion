package com.zua.ifashion.online.mapper;

import com.zua.ifashion.online.entity.Address;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer idAddress);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer idAddress);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}