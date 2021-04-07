package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.ReservationInfo;
import com.spboot.test.repository.ReservationInfoRepository;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class ReservationInfoController {

	@Autowired
	private ReservationInfoRepository resRepo;
	
	@PostMapping("/res/insert")
	public Integer insertRes(@RequestBody ReservationInfo res) {
		resRepo.save(res);
		return res.getResNum();
	}
}
