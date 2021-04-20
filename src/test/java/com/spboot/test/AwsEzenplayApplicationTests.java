package com.spboot.test;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spboot.test.controller.ReservationInfoController;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class AwsEzenplayApplicationTests {

	@Autowired
	private ReservationInfoController uRepo;

	
	@Test
	void contextLoads() {
		log.info("uRepo=>{}",uRepo.getUserRes(1));
	}

}
