package com.erp.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.erp.dao.AuthDao;
import com.erp.models.User;

@Repository
@PropertySource("classpath:erpProperties/authProperties.properties")
public class AuthDaoImpl implements AuthDao{

	@Autowired
	private Environment env;
	
	@Autowired
	private JdbcTemplate template;
	
	@Autowired
	private NamedParameterJdbcTemplate namedTemplate;
	
	@SuppressWarnings("deprecation")
	@Override
	public User getUserDetails(String userName) throws SQLException{
		try {
			return  template.queryForObject(env.getProperty("getUserDetails"), new Object[] {userName},
					new RowMapper<User>(){
						@Override
						public User mapRow(ResultSet rs, int rowNum) throws SQLException {
							User user = new User();
							user.setEmail(rs.getString("email"));
							user.setUserName(rs.getString("user_name"));
							user.setUserRole(rs.getString("user_role"));
							return user;
						}
				
			});
		}finally {
			
		}
	}

}
