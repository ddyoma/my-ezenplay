package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.ReviewInfo;

@Service
public interface ReviewInfoService {

	List<ReviewInfo> getReviewList();
	ReviewInfo getReviewInfo(int riNum);
	int insertReviewInfo(ReviewInfo review);
	int updateReviewInfo(ReviewInfo review);
	int deleteReviewInfo(int riNum);
}
