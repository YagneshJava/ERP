package com.erp.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.erp.dao.CustomerCreationDao;
import com.erp.models.CustomerAddressBean;
import com.erp.models.CustomerBankDetails;
import com.erp.models.CustomerInfoBean;

@Repository
@PropertySource("classpath:erpProperties/vendorCustomerSaveUpdate.properties")
public class CustomerCreationDaoImpl implements CustomerCreationDao {

	@Autowired
	private JdbcTemplate template;

	@Autowired
	private Environment env;

	@Override
	public String save(CustomerInfoBean bean, String principal) throws SQLException {
		try {

			String customerId = template.queryForObject(env.getProperty("generateCustomerId"), new Object[] { bean.getPartyType() }, String.class);
			KeyHolder keyHolder = new GeneratedKeyHolder();
			template.update(connection -> {
				PreparedStatement ps = connection.prepareStatement(env.getProperty("insertCustomerInfo"), new String[] { "id" });
				ps.setString(1, bean.getCustomerName());
				ps.setString(2, customerId);
				ps.setString(3, bean.getGst());
				ps.setString(4, bean.getPan());
				ps.setString(5, bean.getMobileNumber());
				ps.setString(6, bean.getEmail());
				ps.setString(7, principal);
				ps.setString(8, bean.getPartyType());
				return ps;
			}, keyHolder);

			return customerId;
		} finally {

		}
	}

	@Override
	public String saveAddress(CustomerAddressBean bean, String principal, String userId) throws SQLException {

		try {
		
			template.update(env.getProperty("insertCustomerAddressInfo"), new Object[] 
					{
							userId, 
							bean.getAddress1(),
							bean.getAddress2(),
							bean.getPinCode(),
							bean.getCity(),
							bean.getState(),
							bean.getCountry(),
							principal,
							bean.getPartyType()
					});
			
		} finally {

		}
		return "Success";
	}

	@Override
	public String saveBankDetails(CustomerBankDetails bean, String principal, String userId) throws SQLException {
		try {
			template.update(env.getProperty("insertCustomerBankDetails"), new Object[] 
					{
							userId, 
							bean.getBankName(), 
							bean.getAccountNumber(),
							bean.getIfsc(),
							bean.getBranch(),
							principal, 
							bean.getPartyType()
							});
		} finally {

		}
		return "Success";
	}

	@Override
	@SuppressWarnings("deprecation")
	public List<?> searchParties(String query) throws SQLException {
		try {
			
			List<CustomerInfoBean> list = template.query(env.getProperty("getCustomerInfoAutoComplete"), new Object[] {query.trim()+"%"},
					(rs, rownum) -> new CustomerInfoBean(
							rs.getString("customer_id"),
							rs.getString("customer_name"),
							rs.getString("gst"), 
							rs.getString("pan"),
							rs.getString("mobile_number"), 
							rs.getString("email"), 
							rs.getString("party_type")
							));
			return list;
					
		} finally {

		}
	}

	@Override
	@SuppressWarnings("deprecation")
	public CustomerAddressBean getCustomerAddress(String customerId) throws SQLException {
		try {
			
			 CustomerAddressBean bean = template.queryForObject(env.getProperty("getCustomerAddress"), new Object[] {customerId},
					(rs, rownum) -> new CustomerAddressBean(
							rs.getString("address1"),
							rs.getString("address2"),
							rs.getString("post_code"),
							rs.getString("city"), 
							rs.getString("state"),
							rs.getString("country"), 
							rs.getString("customer_id"),
							rs.getLong("id"), 
							rs.getString("party_type")
							));
			 
			 return bean;
		} finally {
			
		}
	}

	@Override
	@SuppressWarnings("deprecation")
	public CustomerBankDetails getCustomerBankDetails(String customerId) throws SQLException {
		try {
			CustomerBankDetails bean = template.queryForObject(env.getProperty("getCustomerBankDetails"), new Object[] {customerId},
					(rs, rownum) -> new CustomerBankDetails(
							rs.getString("bank_name"),
							rs.getString("account_number"),
							rs.getString("ifsc"),
							rs.getString("branch"), 
							rs.getString("customer_id"),
							rs.getLong("id"), 
							rs.getString("party_type")
							));
			return bean;
		} finally {
			
		}
	}

	@Override
	public String update(CustomerInfoBean bean, String principal) throws SQLException {
		try {
			template.update(env.getProperty("updateCustomerInfo"), new Object[] 
					{
							bean.getCustomerName(),
							bean.getGst(),
							bean.getPan(),
							bean.getMobileNumber(),
							bean.getEmail(),
							principal,
							bean.getCustomerId()
					});
			
		}finally {
			
		}
		return "Success";
	}

	@Override
	public String updateAddress(CustomerAddressBean bean, String principal) throws SQLException {
		try {
			
			template.update(env.getProperty("updateAddressInfo"), new Object[] 
					{
							bean.getAddress1(),
							bean.getAddress2(),
							bean.getPinCode(),
							bean.getCity(),
							bean.getState(),
							bean.getCountry(),
							principal,
							bean.getCustomerId()
					});

		} finally {

		}
		return "Success";
	}

	@Override
	public String updateBankDetails(CustomerBankDetails bean, String principal)
			throws SQLException {
		try {
			
			template.update(env.getProperty("updateBankDetails"), new Object[] 
					{
							bean.getBankName(), 
							bean.getAccountNumber(),
							bean.getIfsc(),
							bean.getBranch(),
							principal, 
							bean.getCustomerId()
							});

		} finally {

		}
		return "Success";
	}

}
