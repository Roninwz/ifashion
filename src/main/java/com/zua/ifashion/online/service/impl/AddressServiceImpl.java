package com.zua.ifashion.online.service.impl;

import com.zua.ifashion.online.entity.Address;
import com.zua.ifashion.online.mapper.AddressMapper;
import com.zua.ifashion.online.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public Address selectAddressByAddressId(Integer addressId) {
        return addressMapper.selectAddressByAddressId(addressId);
    }
}
