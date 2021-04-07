package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spboot.test.entity.ReviewInfo;
import com.spboot.test.repository.ReviewInfoRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ReviewInfoController {

	@Autowired
	private ReviewInfoRepository reviewRepo;
	
	@PostMapping("/review/insert")
	public @ResponseBody Integer insertReview(@RequestBody ReviewInfo reviewInfo) {
		reviewRepo.save(reviewInfo);
		log.info("review=>{}",reviewInfo);
		return reviewInfo.getRevNum();
	}
	
}
