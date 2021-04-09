package com.spboot.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//github.com/cwyoon75/aws-ezenplay.git
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//github.com/cwyoon75/aws-ezenplay.git
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.service.UserInfoService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class UserInfoController {

	@Autowired
	private UserInfoService uService;

	@GetMapping("/user")
	public List<UserInfo> getUser() {
		return uService.getList();
	}

	@PostMapping("/login")
	public @ResponseBody UserInfo login(@RequestBody UserInfo ui, HttpServletRequest req) {
		UserInfo userInfo = uService.login(ui);
		if (userInfo != null) {
			HttpSession session = req.getSession();
			session.setAttribute("UserInfo", userInfo);
		}
		return userInfo;
	}

	@PostMapping("/logout")
	public @ResponseBody boolean logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate(); // 세션초기화
		return true;  // 커밋가자
	}

	@PostMapping("/memberjoin")
	public Integer upload(@ModelAttribute UserInfo mf) {
		log.info("mf=>{}", mf);
		UserInfo ui = uService.saveUserInfo(mf);
		return ui.getUserNum();
	}
	@PostMapping("/delete")
	public @ResponseBody Integer deleteUser(@RequestBody UserInfo userInfo) {
		return uService.deleteUserInfo(userInfo.getUserNum());
	}
	@PostMapping("/update")
	public @ResponseBody Integer updateUser(@ModelAttribute UserInfo userInfo) {
		userInfo = uService.updateUserInfo(userInfo);
		return userInfo.getUserNum();
	}
	
	
}
