package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.FoodInfo;

public interface FoodInfoRepository extends JpaRepository<FoodInfo, Integer> {

	public List<FoodInfo> findAllByOrderByFoodNumDesc();
	public FoodInfo findByFoodNum(Integer fiNum);
}
