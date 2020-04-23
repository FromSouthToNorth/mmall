package com.mmall.dao;

import com.mmall.entity.Address;

import java.util.List;

public interface AddressDAO {
    List<Address> findByUserIdAddress(Integer id);
    void updateByIdAddress(Address address);
    void deleteByIdAddress(Integer id);
    void saveAddress(Address address);
}
