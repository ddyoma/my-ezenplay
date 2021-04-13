package com.spboot.test.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spboot.test.entity.FoodInfo;
import com.spboot.test.repository.FoodInfoRepository;
import com.spboot.test.service.FoodInfoService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class FoodInfoServiceImpl implements FoodInfoService {

	private final String ROOT = "C:\\Users\\Administrator\\git\\aws-ezenplay\\src\\main\\webapp\\images\\food\\";
	
	@Autowired
	private FoodInfoRepository foodRepo;
	
	@Override
	public List<FoodInfo> getFoodInfoList(FoodInfo food) {
		return null;
	}

	@Override
	public int insertFoodInfo(FoodInfo food) {
		MultipartFile mf = food.getFoodFile();
		if(mf!=null) {
		    mf = food.getFoodFile();
			String foodImgName = food.getFoodFile().getOriginalFilename();
			food.setFoodImgName(foodImgName);
			File file = new File(ROOT+foodImgName);
			try {
				mf.transferTo(file);   
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		FoodInfo fi = foodRepo.save(food);
		return fi.getFoodNum();
	}
		


	@Override
	public FoodInfo getFoodInfo(int fiNum) {
		return foodRepo.findByFoodNum(fiNum);
	}

	@Override
	public int updateFoodInfo(FoodInfo food) {
		return 0;
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
