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
	public FoodInfo insertFoodInfo(FoodInfo food) {
		return foodRepo.save(food);
	}

	@Override
	public FoodInfo getFoodInfo(int fiNum) {
		return foodRepo.findByFoodNum(fiNum);
	}

	@Override
	public FoodInfo updateFoodInfo(FoodInfo food) {
		return foodRepo.save(food);
	}

	@Override
	public int deleteFoodInfo(int fiNum) {
		foodRepo.deleteById(fiNum);
		if(getFoodInfo(fiNum)==null) {
			return 1;
		}
		return 0;
	}

}
