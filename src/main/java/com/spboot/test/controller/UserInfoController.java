package com.spboot.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.UserInfoRepository;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoRepository uRepo;
	
	@GetMapping("/user")
	public @ResponseBody List<UserInfo> getUser(){
		return uRepo.findAllByOrderByUserNumDesc();
	}
}
