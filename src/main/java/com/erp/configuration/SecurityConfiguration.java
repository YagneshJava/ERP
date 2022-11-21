package com.erp.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;


@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{

	
	@Autowired
	SessionRegistry sessionRegistry;
	
	@Autowired
	private MyAuthenticationFailureHandler myAuthenticationFailureHandler;

	@Autowired
	private CustomSuccessHandler customSuccessHandler;

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/assets/**");
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
			
					http
					.antMatcher("/**")
					.authorizeRequests().anyRequest().authenticated()
					.and().formLogin().loginPage("/login")
					.successHandler(customSuccessHandler).failureHandler(myAuthenticationFailureHandler).usernameParameter("username")
					.passwordParameter("password").permitAll().and().logout().invalidateHttpSession(true)
					.logoutUrl("/logout").deleteCookies("JSESSIONID")
					.and().csrf().disable().exceptionHandling()
					.accessDeniedPage("/Access_Denied");
					
					http.sessionManagement().sessionAuthenticationErrorUrl("/sessionIn").maximumSessions(5)
					.maxSessionsPreventsLogin(true).expiredUrl("/sessionIn").sessionRegistry(sessionRegistry).and()
					.sessionFixation().newSession();
			

	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticator());
	}

	@Bean
	public AuthenticationProvider authenticator() throws Exception {
		return new MyAuthentictionClass();
	}

}
