package com.erp.models;

import java.io.Serializable;

public class VendorBankDetails implements Serializable {

	private static final long serialVersionUID = 1L;

	private String bankName;
	private String accountNumber;
	private String ifsc;
	private String branch;
	private String vendorId;
	private Long id;

	public VendorBankDetails() {
		// TODO Auto-generated constructor stub
	}

	public VendorBankDetails(String bankName, String accountNumber, String ifsc, String branch, String vendorId,
			Long id) {
		super();
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.ifsc = ifsc;
		this.branch = branch;
		this.vendorId = vendorId;
		this.id = id;
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

	public String getVendorId() {
		return vendorId;
	}

	public Long getId() {
		return id;
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

	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "VendorBankDetails [bankName=" + bankName + ", accountNumber=" + accountNumber + ", ifsc=" + ifsc
				+ ", branch=" + branch + ", vendorId=" + vendorId + ", id=" + id + "]";
	}

}
