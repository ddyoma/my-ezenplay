package com.spboot.test.service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.spboot.test.entity.UserInfo;

public interface UserInfoService {

	List<UserInfo> getList();
	UserInfo getUser(int userNum);
	UserInfo login(UserInfo ui);
	UserInfo findId(UserInfo ui);
	UserInfo match(UserInfo ui); //이메일용
	Integer saveUserInfo(UserInfo ui);
	Integer updateUserInfo(UserInfo userInfo);
	int deleteUserInfo(UserInfo ui);
	boolean checkId(String userId);
	UserInfo saveUserPwd(UserInfo userInfo);
	int withdrawnUserInfo(UserInfo userInfo);

}
