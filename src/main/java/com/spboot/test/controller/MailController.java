package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.service.MailService;

@RestController
public class MailController {

	@Autowired
	private MailService mailService;
	
	@PostMapping("/mail")
	public Integer sendMail(@RequestBody SimpleMailMessage smm) {
		mailService.mailSend(smm);
		return 1;
	}
}
