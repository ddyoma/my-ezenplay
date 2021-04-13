package com.spboot.test.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
		log.info("tmp=>{}", userInfo);
		return userInfo;
	}

	@Override
	public List<UserInfo> getList() {
		return uiRepo.findAllByOrderByUserNumDesc();
	}
	
	@Override
	public UserInfo getUser(int userNum) {
		return uiRepo.findByUserNum(userNum);
	}

	@Override
	public UserInfo updateUserInfo(UserInfo userInfo) {
		return uiRepo.save(userInfo);
	}

	@Override
	public int deleteUserInfo(UserInfo ui) {     //웅재수정
		UserInfo userInfo = uiRepo.findByUserIdAndUserPwd(ui.getUserId(), ui.getUserPwd());
		if(userInfo!=null) {
			uiRepo.deleteById(ui.getUserNum());
			return 1;
		}
		return 0;
	}

	private final String ROOT = "C:\\Users\\Administrator\\git\\aws-ezenplay\\src\\main\\webapp\\images\\user\\";  //경로수정하세요

	@Override
	public Integer saveUserInfo(UserInfo user) {
		MultipartFile mf = user.getUserFile();
		if (mf!=null) {
			String userProfile = user.getUserFile().getOriginalFilename();
			int idx = userProfile.lastIndexOf(".");
			String str = userProfile.substring(idx);
			String profilePath = System.nanoTime() + str;
			user.setUserProfile(userProfile);
			user.setProfilePath(profilePath);
			File f = new File(ROOT + profilePath);

			try {
				mf.transferTo(f);
			} catch (IllegalStateException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		UserInfo ui = uiRepo.save(user);
		return ui.getUserNum();
	}


}
