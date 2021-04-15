package com.spboot.test.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.GradeInfoRepository;
import com.spboot.test.repository.UserInfoRepository;
import com.spboot.test.service.UserInfoService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoRepository uiRepo;
	
	@Autowired
	private GradeInfoRepository gradeInfo;

	@Override
	public UserInfo login(UserInfo ui) {
		UserInfo userInfo = uiRepo.findByUserIdAndUserPwd(ui.getUserId(), ui.getUserPwd());
		log.info("tmp=>{}", userInfo);
		return userInfo;
	}
	@Override
	public UserInfo findId(UserInfo ui) {
		UserInfo userInfo = uiRepo.findByUserNameAndUserDateOfBirthAndUserPhone(ui.getUserName(), ui.getUserDateOfBirth(), ui.getUserPhone());
		log.info("tmp=>{}", userInfo);  
		return userInfo;
	}
	@Override
	public UserInfo saveUserPwd(UserInfo userInfo) {
		UserInfo uu = uiRepo.findByUserId(userInfo.getUserId());
		uu.setUserPwd(userInfo.getUserPwd());
		return uiRepo.save(uu);
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
	public Integer updateUserInfo(UserInfo userInfo) {
		UserInfo ui = uiRepo.findByUserNum(userInfo.getUserNum());
		if(ui!=null) {
			if(userInfo.getAction()==null) {
				userInfo.setAction("1");
			}
			if(userInfo.getTotalAmount()<50000) {
				userInfo.setGradeInfo(gradeInfo.getOne(1));
			}else if(userInfo.getTotalAmount()<300000) {
				userInfo.setGradeInfo(gradeInfo.getOne(2));
			}else if(userInfo.getTotalAmount()<1000000) {
				userInfo.setGradeInfo(gradeInfo.getOne(3));
			}else {
				userInfo.setGradeInfo(gradeInfo.getOne(4));
			}
			if(userInfo.getUserPwd()==null) {
				userInfo.setUserPwd(ui.getUserPwd());
			}
			if(userInfo.getUserMileage()==null) {
				userInfo.setUserMileage(ui.getUserMileage());
			}
			MultipartFile mf = userInfo.getUserFile();
			if (mf!=null) {
				String userProfile = userInfo.getUserFile().getOriginalFilename();
				int idx = userProfile.lastIndexOf(".");
				String str = userProfile.substring(idx);
				String profilePath = System.nanoTime() + str;
				userInfo.setUserProfile(userProfile);
				userInfo.setProfilePath(profilePath);
				File f = new File(ROOT + profilePath);
				try {
					mf.transferTo(f);
				} catch (IllegalStateException e1) {
					e1.printStackTrace();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
			ui = uiRepo.save(userInfo);
			return ui.getUserNum();
		}
		return 0;
	}

	@Override
	public int deleteUserInfo(UserInfo ui) {
		UserInfo userInfo = uiRepo.findByUserIdAndUserPwd(ui.getUserId(), ui.getUserPwd());
		if(userInfo!=null) {
			uiRepo.deleteById(ui.getUserNum());
			return 1;
		}
		return 0;
	}

	private final String ROOT = System.getProperty("user.dir")+"\\src\\main\\webapp\\resources\\images\\user\\";

	
	@Override
	public boolean checkId(String userId) {
			
			log.info("tmp=>{}", userId);
			return uiRepo.existsByUserId(userId);
	}

	@Override
	public Integer saveUserInfo(UserInfo user) {
		MultipartFile mf = user.getUserFile();
		if (mf!=null) {
			String userProfile = user.getUserFile().getOriginalFilename();
			int idx = userProfile.lastIndexOf(".");
			String str = userProfile.substring(idx+1);
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
