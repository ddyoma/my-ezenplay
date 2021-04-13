package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.UserInfo;

@Service
public interface UserInfoService {

	List<UserInfo> getList();
	UserInfo getUser(int userNum);
	UserInfo login(UserInfo ui);
	Integer saveUserInfo(UserInfo ui);
	UserInfo updateUserInfo(UserInfo userInfo);
	int deleteUserInfo(UserInfo ui);
}
