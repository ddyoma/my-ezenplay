package com.spboot.test;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spboot.test.controller.GradeInfoController;

import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
class AwsEzenplayApplicationTests {

	@Autowired
	private GradeInfoController uRepo;

	@Test
	void contextLoads() {
		log.info("uRepo=>{}",uRepo.getGrade());
	}

}
