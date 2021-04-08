package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.FoodInfo;

@Service
public interface FoodInfoService {
	
	List<FoodInfo> getFoodInfoList();
	FoodInfo getFoodInfo(int fiNum);
	int insertFoodInfo(FoodInfo food);
	int updateFoodInfo(FoodInfo food);
	int deleteFoodInfo(int fiNum);

}
