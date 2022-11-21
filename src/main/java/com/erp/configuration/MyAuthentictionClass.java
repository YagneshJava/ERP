package com.erp.configuration;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import com.erp.models.User;

@Component
public class MyAuthentictionClass implements AuthenticationProvider{
	
	@Autowired
	private JdbcTemplate template;
	

	@SuppressWarnings("deprecation")
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

			String userName = authentication.getName();
			String password = authentication.getCredentials().toString();
			List<User> user = null;
			try {
				System.out.println("User Name "+ userName +" Password is "+ password);
				user = template.query("select ut.user_name, ut.email, urt.user_role from users_tab ut inner join users_role_tab urt on ut.user_role_id = urt.user_role_id where BINARY(user_name) = ? and binary(password) = ?"
						, new Object[] {userName, password}, new RowMapper<User>() {

							@Override
							public User mapRow(ResultSet rs, int rowNum) throws SQLException {
								User user = new User();
								user.setUserName(rs.getString("user_name") != null ? rs.getString("user_name"):"");
								user.setEmail(rs.getString("email") != null ? rs.getString("email"): "" );
								user.setUserRole(rs.getString("user_role") != null ? rs.getString("user_role"):"");
								return user;
							}
							
						});
			
				
			}catch (Exception e) {
				e.printStackTrace();
				throw new BadCredentialsException("System authentication failed");
			}

			if(null != user && !user.isEmpty()) {
				Set<GrantedAuthority> grantedAuths = new HashSet<GrantedAuthority>();
				grantedAuths.add(new SimpleGrantedAuthority("ROLE_" + user.get(0).getUserRole()));
				return new UsernamePasswordAuthenticationToken(userName, password, grantedAuths);
			} else {
				throw new BadCredentialsException("System authentication failed");
			}
	
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}
