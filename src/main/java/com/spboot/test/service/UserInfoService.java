package com.spboot.test.service;

import java.util.List;

import com.spboot.test.entity.UserInfo;

public interface UserInfoService{

	UserInfo login(UserInfo ui);
	List<UserInfo> getList();
}
