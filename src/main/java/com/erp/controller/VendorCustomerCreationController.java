package com.erp.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.erp.models.VendorCustomerDto;
import com.erp.service.VendorCustCreationService;

import net.sf.json.JSONObject;

@Controller
public class VendorCustomerCreationController {

	
	Logger log = Logger.getLogger(VendorCustomerCreationController.class);
	
	@Autowired
	private VendorCustCreationService service;
	
	@PostMapping("/saveUpdateVendorCustData")
	@ResponseBody
	public String saveUpdateCustVendor(@ModelAttribute VendorCustomerDto dto, Principal principal) {
		JSONObject resp = new JSONObject();
		try {
			String resString = null;
			resString = service.saveUpdateCustomer(dto, principal.getName());
			System.out.println("DTO is .. + " + dto);
			resp.put("success", resString);
		}catch (Exception e) {
			e.printStackTrace();
			resp.put("error", e.getMessage());
			log.error("Exception in saveUpdateCustVendor : ", e);
		}
		return resp.toString();
	}
	
	
	@GetMapping("/searchParty")
	@ResponseBody
	public List<?> getPartyList(@RequestParam String query) {
		try {
			return service.searchParties(query);
		} catch (Exception e) {
				e.printStackTrace();
				log.error("error occured in getPartyList ", e);
		}
			return null;
	}

	
	@PostMapping("/getCustomerAddressDetails")
	@ResponseBody
	public String getCustomerAddressDetails(@RequestParam String customerId) {
		JSONObject resp = new JSONObject();
		try {
			System.out.println("Customer Id is " + customerId);
			resp.put("adddressDetails", service.getCustomerAddress(customerId));
			resp.put("bankDetails", service.getCustomerBankDetails(customerId));
		} catch (Exception e) {
			e.printStackTrace();
			resp.put("error", e.getMessage());
			log.error("error occured in getCustomerAddressDetails ", e);
		}
		return resp.toString();
	}
	
}
