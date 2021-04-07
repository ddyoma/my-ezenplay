package com.spboot.test.service;

import java.util.List;

import com.spboot.test.entity.FoodInfo;

public interface FoodInfoService {
	
	List<FoodInfo> getFoodInfoList();
	FoodInfo getFoodInfo(int fiNum);
	int insertFoodInfo(FoodInfo food);
	int updateFoodInfo(FoodInfo food);
	int deleteFoodInfo(int fiNum);

}
