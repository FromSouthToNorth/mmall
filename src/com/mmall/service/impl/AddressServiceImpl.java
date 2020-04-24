package com.mmall.service.impl;

import com.mmall.dao.AddressDAO;
import com.mmall.dao.impl.AddressDAOImpl;
import com.mmall.entity.Address;
import com.mmall.service.AddressService;

import java.util.List;

public class AddressServiceImpl implements AddressService {
    private final AddressDAO addressDAO = new AddressDAOImpl();
    @Override
    public List<Address> findByUserIdAddress(Integer id) {
        return addressDAO.findByUserIdAddress(id);
    }

    @Override
    public Address findByIdAddress(Integer id) {
        return addressDAO.findByIdAddress(id);
    }

    @Override
    public void updateByIdAddress(Address address) {
        addressDAO.updateByIdAddress(address);
    }

    @Override
    public void deleteByIdAddress(Integer id) {
        addressDAO.deleteByIdAddress(id);
    }

    @Override
    public void saveAddress(Address address) {
        addressDAO.saveAddress(address);
    }
}
