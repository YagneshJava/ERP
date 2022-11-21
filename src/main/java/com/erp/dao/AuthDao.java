package com.erp.dao;

import java.sql.SQLException;

import com.erp.models.User;

public interface AuthDao {

	User getUserDetails(String userName) throws SQLException;

}
