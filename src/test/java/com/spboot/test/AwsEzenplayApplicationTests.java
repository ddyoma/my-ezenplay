package com.spboot.test;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spboot.test.entity.UserInfo;
import com.spboot.test.repository.PayHistoryInfoRepository;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class AwsEzenplayApplicationTests {

	@Autowired
	private PayHistoryInfoRepository uRepo;

	
	@Test
	void contextLoads() {
		log.info("uRepo=>{}",uRepo.findByUserInfoUserNum(1));
	}

}
