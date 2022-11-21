package com.erp.models;

import java.io.Serializable;

public class CustomerAddressBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String address1;
	private String address2;
	private String pinCode;
	private String city;
	private String state;
	private String country;
	private String customerId;
	private Long addressId;
	private String partyType;

	public CustomerAddressBean() {
		// TODO Auto-generated constructor stub
	}

	public CustomerAddressBean(String address1, String address2, String pinCode, String city, String state,
			String country, String customerId, Long addressId, String partyType) {
		super();
		this.address1 = address1;
		this.address2 = address2;
		this.pinCode = pinCode;
		this.city = city;
		this.state = state;
		this.country = country;
		this.customerId = customerId;
		this.addressId = addressId;
		this.partyType = partyType;
	}

	public String getPartyType() {
		return partyType;
	}

	public void setPartyType(String partyType) {
		this.partyType = partyType;
	}

	public String getAddress1() {
		return address1;
	}

	public String getAddress2() {
		return address2;
	}

	public String getPinCode() {
		return pinCode;
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

	public String getCustomerId() {
		return customerId;
	}

	public Long getAddressId() {
		return addressId;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
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

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	@Override
	public String toString() {
		return "CustomerAddressBean [address1=" + address1 + ", address2=" + address2 + ", pinCode=" + pinCode
				+ ", city=" + city + ", state=" + state + ", country=" + country + ", customerId=" + customerId
				+ ", addressId=" + addressId + ", partyType=" + partyType + "]";
	}

}
