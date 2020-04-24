package com.mmall.service;

import com.mmall.entity.Address;

import java.util.List;

public interface AddressService {
    List<Address> findByUserIdAddress(Integer id);
    Address findByIdAddress(Integer id);
    void updateByIdAddress(Address address);
    void deleteByIdAddress(Integer id);
    void saveAddress(Address address);
}
