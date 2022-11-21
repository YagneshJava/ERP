package com.erp.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.dao.AuthDao;
import com.erp.models.User;

@Service
public class AuthService {

	
	@Autowired
	private AuthDao dao;
	
	public User getUserByUserName(String userName) throws Exception {
		try {
			
			return dao.getUserDetails(userName);
			
		} finally {
			
		}
	}
	
}
