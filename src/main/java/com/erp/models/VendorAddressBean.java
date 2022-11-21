package com.erp.models;

import java.io.Serializable;

public class VendorAddressBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String address1;
	private String address2;
	private String pinCode;
	private String city;
	private String state;
	private String country;
	private String vendorId;
	private Long addressId;

	public VendorAddressBean() {
	}

	public VendorAddressBean(String address1, String address2, String pinCode, String city, String state,
			String country, String vendorId, Long addressId) {
		super();
		this.address1 = address1;
		this.address2 = address2;
		this.pinCode = pinCode;
		this.city = city;
		this.state = state;
		this.country = country;
		this.vendorId = vendorId;
		this.addressId = addressId;
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

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
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

	public String getVendorId() {
		return vendorId;
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

	public void setCity(String city) {
		this.city = city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	@Override
	public String toString() {
		return "VendorAddressBean [address1=" + address1 + ", address2=" + address2 + ", pinCode=" + pinCode + ", city="
				+ city + ", state=" + state + ", country=" + country + ", vendorId=" + vendorId + ", addressId="
				+ addressId + "]";
	}

}
