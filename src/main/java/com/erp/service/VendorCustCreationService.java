package com.erp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.CustomerCreationDao;
import com.erp.models.VendorCustomerDto;

@Service
public class VendorCustCreationService {

	@Autowired
	private CustomerCreationDao customerDao;

	public String saveUpdateCustomer(VendorCustomerDto dto, String principal) throws Exception {

		String userId = null;
		try {
			if (null != dto.getVendorId() && !dto.getVendorId().equals("")) {
				customerDao.update(dto.toCustomerInfo(), principal);
				customerDao.updateAddress(dto.toCustomerAddressBean(), principal);
				customerDao.updateBankDetails(dto.toCustomerBankDetails(), principal);
				return "Party updated successfully";
			} else {
				userId = customerDao.save(dto.toCustomerInfo(), principal);
				if (null != userId) {
					customerDao.saveAddress(dto.toCustomerAddressBean(), principal, userId);
					if (null != dto.toCustomerBankDetails())
						customerDao.saveBankDetails(dto.toCustomerBankDetails(), principal, userId);
				} else {
					return "Unable to generate user id";
				}

				return "Party created successfully";
			}

		} finally {

		}

	}

	public List<?> searchParties(String query) throws Exception{
		try {
			return customerDao.searchParties(query);
		} finally {
			
		}
	}

	public Object getCustomerAddress(String customerId) throws Exception {
		try {
			return customerDao.getCustomerAddress(customerId);
		} finally {
			
		}
	}

	public Object getCustomerBankDetails(String customerId)  throws Exception {
		try {
			return customerDao.getCustomerBankDetails(customerId);
		} finally {
			
		}
	}

}
