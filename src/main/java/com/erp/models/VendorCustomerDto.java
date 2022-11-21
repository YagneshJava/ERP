package com.erp.models;

import java.io.Serializable;

public class VendorCustomerDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String vendorId;
	private String vendorName;
	private String customerName;
	private String gst;
	private String pan;
	private String mobileNumber;
	private String email;
	private String userType;

	private String address1;
	private String address2;
	private String postCode;
	private String city;
	private String state;
	private String country;

	private String bankName;
	private String accountNumber;
	private String ifsc;
	private String branch;

	public VendorCustomerDto() {
	}

	public VendorCustomerDto(Long id, String vendorName, String customerName, String gst, String pan,
			String mobileNumber, String email, String address1, String address2, String postCode, String city,
			String state, String country, String bankName, String accountNumber, String ifsc, String branch,
			String userType, String vendorId) {
		super();
		this.id = id;
		this.vendorName = vendorName;
		this.customerName = customerName;
		this.gst = gst;
		this.pan = pan;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.address1 = address1;
		this.address2 = address2;
		this.postCode = postCode;
		this.city = city;
		this.state = state;
		this.country = country;
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.ifsc = ifsc;
		this.branch = branch;
		this.userType = userType;
		this.vendorId = vendorId;
	}

	public Long getId() {
		return id;
	}

	public String getVendorName() {
		return vendorName;
	}

	public String getCustomerName() {
		return customerName;
	}

	public String getGst() {
		return gst;
	}

	public String getPan() {
		return pan;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress1() {
		return address1;
	}

	public String getAddress2() {
		return address2;
	}

	public String getPostCode() {
		return postCode;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public String getCountry() {
		return country;
	}

	public String getBankName() {
		return bankName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public String getIfsc() {
		return ifsc;
	}

	public String getBranch() {
		return branch;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getVendorId() {
		return vendorId;
	}

	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "VendorCustomerDto [id=" + id + ", vendorId=" + vendorId + ", vendorName=" + vendorName
				+ ", customerName=" + customerName + ", gst=" + gst + ", pan=" + pan + ", mobileNumber=" + mobileNumber
				+ ", email=" + email + ", userType=" + userType + ", address1=" + address1 + ", address2=" + address2
				+ ", postCode=" + postCode + ", city=" + city + ", state=" + state + ", country=" + country
				+ ", bankName=" + bankName + ", accountNumber=" + accountNumber + ", ifsc=" + ifsc + ", branch="
				+ branch + "]";
	}

	public CustomerInfoBean toCustomerInfo() {
		return new CustomerInfoBean(vendorId, vendorName, gst, pan, mobileNumber, email, userType);
	}

	public CustomerAddressBean toCustomerAddressBean() {
		return new CustomerAddressBean(address1, address2, postCode, city, state, country, vendorId, id, userType);
	}

	public CustomerBankDetails toCustomerBankDetails() {
		boolean flag = false;
		if (null != bankName) {
			flag = true;
		} else if (null != accountNumber) {
			flag = true;
		} else if (null != ifsc) {
			flag = true;
		} else if (null != branch) {
			flag = true;
		}

		if (flag)
			return new CustomerBankDetails(bankName, accountNumber, ifsc, branch, vendorId, id, userType);
		else
			return null;
	}
}
