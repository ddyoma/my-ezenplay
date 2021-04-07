package com.spboot.test.service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.spboot.test.entity.UserInfo;

@Service
public interface UserInfoService {

	 UserInfo saveUserInfo(UserInfo ui);

	List<UserInfo> getList();
	UserInfo login(UserInfo ui);
	int insertUserInfo(UserInfo userInfo);
	int updateUserInfo(UserInfo userInfo);
	int deleteUserInfo(int uiNum);
}
