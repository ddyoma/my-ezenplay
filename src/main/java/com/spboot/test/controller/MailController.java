package com.spboot.test.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.service.MailService;
import com.spboot.test.util.CodeGenerator;


@RestController
public class MailController {

	@Autowired
	private MailService mailService;

	
	@PostMapping("/mail")
	public Integer sendMail(@RequestBody SimpleMailMessage smm) {
		String v = CodeGenerator.getRandomCode();
		smm.setText(v); //내용랜덤코드화
		mailService.mailSend(smm);
		return 1;
	}
	public static void main(String[] args) {
		String str = "aAbBcC22222222errer341r144ererw4";
		Random r = new Random();
		for(int i=1; i<=6; i++) {
			int rNum = r.nextInt(str.length());
			char c  = str.charAt(rNum);
			System.out.println(c);
		}
		String v = CodeGenerator.getRandomCode();
		System.out.println(v);
	}
}
