package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {

	@GetMapping(value = { "/", "/login" })
	public String getIndexPage() {
		return "login";
	}

	@GetMapping(value = { "accessDenied" })
	public String getAccessDeniedPage() {
		return "accessDenied";
	}

	@GetMapping("/vendorCreationPage")
	public String vendorCreationPage() {
		return "userPages/vendorCreation";
	}

	@GetMapping("/itemCreationPage")
	public String itemCreationPage() {
		return "userPages/itemCreation";
	}

}
