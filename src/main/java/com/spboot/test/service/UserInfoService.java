package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.UserInfo;

@Service
public interface UserInfoService {

	public UserInfo login(UserInfo ui);
	public List<UserInfo> getList();
}
