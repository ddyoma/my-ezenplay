package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.UserInfo;

public interface UserInfoRepository extends JpaRepository<UserInfo, Integer> {

	public List<UserInfo> findAllByOrderByUserNumDesc();
	public UserInfo findByUserIdAndUserPwd(String userId, String userPwd);
	public UserInfo findByUserNameAndUserDateOfBirthAndUserPhone(String userName, String userDateOfBirth, String userPhone);
	public boolean existsByUserId(String userId);
	public UserInfo findByUserId(String userId);
	public UserInfo findByUserNum(Integer userNum);
	public UserInfo findByUserNameAndUserDateOfBirthAndUserPhoneAndUserEmail(String userName, String userDateOfBirth, String userPhone,String userEmail);

}
