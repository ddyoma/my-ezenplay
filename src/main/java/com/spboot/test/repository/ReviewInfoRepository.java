package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.ReviewInfo;

public interface ReviewInfoRepository extends JpaRepository<ReviewInfo, Integer> {

	public List<ReviewInfo> findAllByOrderByRevNumDesc();
}
