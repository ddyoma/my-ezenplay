package com.spboot.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.UserInfoRepository;
import com.spboot.test.service.UserInfoService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoRepository uiRepo;
	
	@Override
	public UserInfo login(UserInfo ui) {
	   UserInfo userInfo = uiRepo.findByUserIdAndUserPwd(ui.getUserId(), ui.getUserPwd());
	   log.info("tmp=>{}",userInfo);
	   return userInfo;
	}

	@Override
	public List<UserInfo> getList() {
	   return uiRepo.findAllByOrderByUserNumDesc();
	}

}
