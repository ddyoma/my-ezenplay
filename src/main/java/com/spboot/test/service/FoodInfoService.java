package com.spboot.test.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.FoodInfo;

@Service
public interface FoodInfoService {
	
	List<FoodInfo> getFoodInfoList();
	Optional<FoodInfo> getFoodInfo(int fiNum);
	FoodInfo insertFoodInfo(FoodInfo food);
	FoodInfo updateFoodInfo(FoodInfo food);
	int deleteFoodInfo(int fiNum);
	List<FoodInfo> getFoodInfos(String foodType);

}
