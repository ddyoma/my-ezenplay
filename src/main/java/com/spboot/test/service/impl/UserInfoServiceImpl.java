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
	   log.info("tmp=>{}",userInfo);
	   return userInfo;
	}

	@Override
	public List<UserInfo> getList() {
	   return uiRepo.findAllByOrderByUserNumDesc();
	}

	@Override
	public int insertUserInfo(UserInfo userInfo) {
		return 0;
	}

	@Override
	public int updateUserInfo(UserInfo userInfo) {
		return 0;
	}

	@Override
	public int deleteUserInfo(int uiNum) {
		return 0;
	}

	private final String ROOT = "C:\\Users\\sherl\\git\\aws-ezenplayteam\\src\\main\\webapp\\resources\\";

	   
	   @Override
	   public UserInfo saveUserInfo(UserInfo ui) {
	      
	      MultipartFile mf = ui.getUserFile();
	      log.info("Name=>{}",mf);
	      int idx = mf.getOriginalFilename().lastIndexOf(".");
	      log.info("Name=>{}",idx);
	      String e = mf.getOriginalFilename().substring(idx);
	      log.info("Name=>{}",e);
	      String profilePath = System.nanoTime() + e;
	      log.info("Name=>{}",profilePath);
	      ui.setUserProfile(mf.getOriginalFilename());
	      ui.setProfilePath(profilePath);
	      File f = new File(ROOT + profilePath);
	      
	         try {
	            mf.transferTo(f);
	         } catch (IllegalStateException e1) {
	            e1.printStackTrace();
	         } catch (IOException e1) {
	            e1.printStackTrace();
	         }
	      
	      return uiRepo.save(ui);
	   }

}
