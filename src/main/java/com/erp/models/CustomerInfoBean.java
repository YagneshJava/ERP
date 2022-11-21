package com.erp.models;

import java.io.Serializable;

public class CustomerInfoBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private String customerId;
	private String customerName;
	private String gst;
	private String pan;
	private String mobileNumber;
	private String email;
	private String partyType;

	public CustomerInfoBean() {
	}

	public CustomerInfoBean(String customerId, String customerName, String gst, String pan, String mobileNumber,
			String email, String partyType) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.gst = gst;
		this.pan = pan;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.partyType = partyType;
	}

	public String getPartyType() {
		return partyType;
	}

	public void setPartyType(String partyType) {
		this.partyType = partyType;
	}

	public String getCustomerId() {
		return customerId;
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

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
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

	@Override
	public String toString() {
		return "CustomerInfoBean [customerId=" + customerId + ", customerName=" + customerName + ", gst=" + gst
				+ ", pan=" + pan + ", mobileNumber=" + mobileNumber + ", email=" + email + ", partyType=" + partyType
				+ "]";
	}

}
