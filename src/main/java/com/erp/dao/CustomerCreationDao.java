package com.erp.dao;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import com.erp.models.CustomerAddressBean;
import com.erp.models.CustomerBankDetails;
import com.erp.models.CustomerInfoBean;

public interface CustomerCreationDao {

	String save(CustomerInfoBean bean, String principal) throws SQLException;
	
	String saveAddress(CustomerAddressBean bean, String principal, String userId) throws SQLException;

	String saveBankDetails(CustomerBankDetails customerBankDetails, String principal,  String userId) throws SQLException;

	List<?> searchParties(String query) throws SQLException;

	CustomerAddressBean getCustomerAddress(String customerId) throws SQLException;

	CustomerBankDetails getCustomerBankDetails(String customerId) throws SQLException;
	
	String update(CustomerInfoBean bean, String principal) throws SQLException;
	
	String updateAddress(CustomerAddressBean bean, String principal) throws SQLException;

	String updateBankDetails(CustomerBankDetails customerBankDetails, String principal) throws SQLException;

}
