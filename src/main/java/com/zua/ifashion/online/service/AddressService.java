package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.Address;
import org.apache.ibatis.annotations.Param;

public interface AddressService {
    //通过收货地址id查询收货地址
    Address selectAddressByAddressId(@Param("addressId") Integer addressId);
}
