package com.spboot.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.UserInfoRepository;
import com.spboot.test.service.UserInfoService;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoRepository uRepo;
	@Autowired
	private UserInfoService uService;

	@GetMapping("/user")
	public @ResponseBody List<UserInfo> getUser() {
		return uRepo.findAllByOrderByUserNumDesc();
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
		return true;
	}
	@DeleteMapping("/delete")
	public @ResponseBody UserInfo delete(@RequestBody UserInfo ui){
		return ui;
	}
	
}
