package com.spboot.test.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.service.MailService;
import com.spboot.test.service.UserInfoService;
import com.spboot.test.util.CodeGenerator;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Data
@Component
class Emails{
	private String code;
}

@RestController
@Slf4j
public class MailController {

	@Autowired
	private MailService mailService;
	@Autowired
	private UserInfoService uService;
	@Autowired
	private Emails email;
	
	
	@PostMapping("/mail")
	public Emails sendMail(@RequestBody SimpleMailMessage smm) {
		String code = CodeGenerator.getRandomCode();
		SimpleMailMessage smm2 = new SimpleMailMessage();
		smm2.setText(code); // 해보실래용 되나여?ㅇㅋ념
		smm2.setTo(smm.getTo());
		smm2.setSubject(smm.getSubject());
		mailService.mailSend(smm2);
		email.setCode(code);
		return email;
	}
	
	@GetMapping("/chacknum")
	public Integer chackMail() {
		System.out.println(email.getCode());
		
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
