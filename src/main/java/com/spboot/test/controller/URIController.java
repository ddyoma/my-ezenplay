package com.spboot.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class URIController {

	@GetMapping("/views/**")
	public void goView() {
		
	}
	
	@GetMapping("/")
	public String goIndex() {
		return "views/index";
	}
	@GetMapping("/views/left")
	public String goSideber1() {
		return "views/left-sideber";
	}
	@GetMapping("/views/no")
	public String goSideber2() {
		return "views/no-sideber";
	}
	@GetMapping("/views/right")
	public String goSideber3() {
		return "views/right-sideber";
	}
}
