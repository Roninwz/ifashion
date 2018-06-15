package com.zua.ifashion.online.service;

import com.zua.ifashion.online.entity.Address;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GoodsAddressService {
    //通过收货地址id查询收货地址
    Address getAddressByAddressId(@Param("addressId") Integer addressId);
    //通过用户Id查询用户的所有收货地址
    List<Address> getAddressByUserId(@Param("userId") Integer userId);

    //查询所有收货地址
    List<Address> getAllAddress();


    //    通过地址id 修改地址的状态
    public abstract int updateAddressById(@Param("addressId") Integer addressId,@Param("addressMark") Integer addressMark);

    //更新收货地址
    public abstract int updateAddress(Address address);

    //添加地址
    int addAddress(Address address);


    //删除地址
    int deleteAddress(Integer addressId);
    //更新收货不为空字段
    int updateAddressSelective(Address address);

}
