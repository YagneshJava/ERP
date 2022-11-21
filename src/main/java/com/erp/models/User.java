package com.erp.models;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String userName;
	private String email;
	private String userRole;
	private int id;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String userName, String email, String userRole, int id) {
		super();
		this.userName = userName;
		this.email = email;
		this.userRole = userRole;
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	public String getUserRole() {
		return userRole;
	}

	public int getId() {
		return id;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", email=" + email + ", userRole=" + userRole + ", id=" + id + "]";
	}

}
