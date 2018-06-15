package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Address;
import com.zua.ifashion.online.mapper.AddressMapper;
import com.zua.ifashion.online.service.GoodsAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodsAddressServiceImpl implements GoodsAddressService {
    @Autowired
    private AddressMapper addressMapper;
    @Override
    public Address getAddressByAddressId(Integer addressId) {
        return addressMapper.selectAddressByAddressId(addressId);
    }

    @Override
    public List<Address> getAddressByUserId(Integer userId) {
        return addressMapper.selectAddressByUserId(userId);
    }

    @Override
    public List<Address> getAllAddress() {
        return addressMapper.getAllAddress();
    }

    @Override
    public int updateAddressById(Integer addressId, Integer addressMark) {
        return addressMapper.updateAddressById(addressId,addressMark);
    }

    @Override
    public int updateAddress(Address address) {
        return addressMapper.updateAddress(address);
    }

    @Override
    public int addAddress(Address address) {
        return addressMapper.addAddress(address);
    }

    @Override
    public int deleteAddress(Integer addressId) {
        return addressMapper.deleteAddress(addressId);
    }

    @Override
    public int updateAddressSelective(Address address) {
        return addressMapper.updateAddressSelective(address);
    }
}
