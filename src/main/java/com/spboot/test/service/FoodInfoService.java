package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.FoodInfo;

@Service
public interface FoodInfoService {
	
	List<FoodInfo> getFoodInfoList(FoodInfo food);
	FoodInfo getFoodInfo(int fiNum);
	FoodInfo insertFoodInfo(FoodInfo food);
	FoodInfo updateFoodInfo(FoodInfo food);
	int deleteFoodInfo(int fiNum);

}
