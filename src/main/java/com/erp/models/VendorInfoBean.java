package com.erp.models;

import java.io.Serializable;

public class VendorInfoBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private String vendorId;
	private String vendorName;
	private String gst;
	private String pan;
	private String mobileNumber;
	private String email;

	public VendorInfoBean() {
		// TODO Auto-generated constructor stub
	}

	public VendorInfoBean(String vendorId, String vendorName, String gst, String pan, String mobileNumber,
			String email) {
		super();
		this.vendorId = vendorId;
		this.vendorName = vendorName;
		this.gst = gst;
		this.pan = pan;
		this.mobileNumber = mobileNumber;
		this.email = email;
	}

	public String getVendorId() {
		return vendorId;
	}

	public String getVendorName() {
		return vendorName;
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

	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
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
		return "VendorInfoBean [vendorId=" + vendorId + ", vendorName=" + vendorName + ", gst=" + gst + ", pan=" + pan
				+ ", mobileNumber=" + mobileNumber + ", email=" + email + "]";
	}

}
