package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spboot.test.entity.ReviewInfo;
import com.spboot.test.service.ReviewInfoService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ReviewInfoController {

	@Autowired
	private ReviewInfoService reviewservice;
	
	@PostMapping("/review/insert")
	public Integer insertReview(@RequestBody ReviewInfo reviewInfo) {
		reviewInfo =reviewservice.insertReviewInfo(reviewInfo);
		log.info("review=>{}",reviewInfo);
		return reviewInfo.getRevNum();
	}
	@PostMapping("/review/update")
	public @ResponseBody Integer update(@ModelAttribute ReviewInfo reviewInfo) {
		reviewInfo = reviewservice.updateReviewInfo(reviewInfo);
		return reviewInfo.getRevNum();
	}
	@DeleteMapping("/review/delete")
	public @ResponseBody int deleteReviewInfo(@RequestParam int revNum) {
		return reviewservice.deleteReviewInfo(revNum);
	}
	@GetMapping("review/view")
	public @ResponseBody ReviewInfo getReviewInfos(@RequestParam int revNum) {
		return reviewservice.getReviewInfo(revNum);
	}
	
}
