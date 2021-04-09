package com.spboot.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.FoodInfo;
import com.spboot.test.repository.FoodInfoRepository;
import com.spboot.test.service.FoodInfoService;

@Service
public class FoodInfoServiceImpl implements FoodInfoService {

	@Autowired
	private FoodInfoRepository foodRepo;
	
	@Override
	public List<FoodInfo> getFoodInfoList(FoodInfo food) {
		return foodRepo.findAllByOrderByFoodNumDesc();
	}

	@Override
	public int insertFoodInfo(FoodInfo food) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FoodInfo getFoodInfo(int fiNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateFoodInfo(FoodInfo food) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFoodInfo(int fiNum) {
		// TODO Auto-generated method stub
		return 0;
	}

}
