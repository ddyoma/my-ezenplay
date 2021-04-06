package com.spboot.test.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.UserInfoRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserInfoController {

	@Autowired
	private UserInfoRepository uiRepo;
	
	@PostMapping("/user")
	public @ResponseBody Integer insert(@RequestBody UserInfo user) {
		log.info("user=>{}",user);
		uiRepo.save(user);
		return 1;
	}
	public static void main(String[] args) throws JsonProcessingException {
		ObjectMapper om = new ObjectMapper();
		UserInfo ui = new UserInfo();
		ui.setUserId("test");
		ui.setUserPwd("test");
		ui.setUserName("hong");
		ui.setUserGender("남");
		ui.setUserDateOfBirth("2019-10-11");
		ui.setUserAddr1("서울시 강서구 등촌1동");
		ui.setUserAddr2("라인아파트 101");
		ui.setUserPhone1("010");
		ui.setUserPhone1("6208");
		ui.setUserPhone1("0018");
		String json = om.writeValueAsString(ui);
		log.info(json);
	}
}
