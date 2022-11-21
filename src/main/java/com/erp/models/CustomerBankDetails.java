package com.erp.models;

import java.io.Serializable;

public class CustomerBankDetails implements Serializable {

	private static final long serialVersionUID = 1L;

	private String bankName;
	private String accountNumber;
	private String ifsc;
	private String branch;
	private String customerId;
	private Long id;
	private String partyType;

	public CustomerBankDetails() {
		// TODO Auto-generated constructor stub
	}

	public CustomerBankDetails(String bankName, String accountNumber, String ifsc, String branch, String customerId,
			Long id, String partyType) {
		super();
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.ifsc = ifsc;
		this.branch = branch;
		this.customerId = customerId;
		this.id = id;
		this.partyType = partyType;
	}

	public String getPartyType() {
		return partyType;
	}

	public void setPartyType(String partyType) {
		this.partyType = partyType;
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

	public String getCustomerId() {
		return customerId;
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

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	@Override
	public String toString() {
		return "CustomerBankDetails [bankName=" + bankName + ", accountNumber=" + accountNumber + ", ifsc=" + ifsc
				+ ", branch=" + branch + ", customerId=" + customerId + ", id=" + id + ", partyType=" + partyType + "]";
	}

	public void setId(Long id) {
		this.id = id;
	}

}
