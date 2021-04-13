package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.PayHistoryInfo;
import com.spboot.test.repository.PayHistoryInfoRepository;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PayHistoryInfoController {

	@Autowired
	private PayHistoryInfoRepository payRepo;
	
	@PostMapping("/pay/insert")
	public Integer insertPay(@RequestBody PayHistoryInfo payInfo) {
		payRepo.save(payInfo); 
		return payInfo.getPhNum();
	}
	
}
