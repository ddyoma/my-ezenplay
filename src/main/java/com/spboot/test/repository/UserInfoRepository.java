package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.UserInfo;

public interface UserInfoRepository extends JpaRepository<UserInfo, Integer> {

	List<UserInfo> findAllByOrderByUserNumDesc();
	UserInfo findByUserIdAndUserPwd(String userId, String userPwd);
}
