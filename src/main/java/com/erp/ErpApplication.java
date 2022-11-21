package com.erp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.web.session.HttpSessionEventPublisher;


@SpringBootApplication
public class ErpApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(ErpApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(ErpApplication.class);
	}
	
	static {
		String logPath = "";
		if (System.getProperty("os.name").equalsIgnoreCase("Linux")) {
			logPath = "/tmp/ERP-LOG/ERP/";
		} else {
			logPath = "D:\\\\ERP-LOG\\\\ERP\\\\";
		}
		System.setProperty("logPath", logPath);
	}

	@Bean(name = "sessionRegistry")
	public SessionRegistry sessionRegistry() {
		SessionRegistry sessionRegistry = new SessionRegistryImpl();
		return sessionRegistry;
	}
	@Bean
    public static ServletListenerRegistrationBean httpSessionEventPublisher() {
		
        return new ServletListenerRegistrationBean(new HttpSessionEventPublisher());
    }
}
