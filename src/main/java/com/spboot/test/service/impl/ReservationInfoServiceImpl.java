package com.spboot.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.ReservationInfo;
import com.spboot.test.repository.ReservationInfoRepository;
import com.spboot.test.service.ReservationInfoService;

@Service
public class ReservationInfoServiceImpl implements ReservationInfoService {

	@Autowired
	private ReservationInfoRepository resRepo;
	
	@Override
	public List<ReservationInfo> getList(ReservationInfo resNum) {
		return resRepo.findAllByOrderByResNumDesc();
	}

	@Override
	public ReservationInfo get(int resNum) {
		return null;
	}

	@Override
	public ReservationInfo insert(ReservationInfo resNum) {
		return resRepo.save(resNum);
	}

	@Override
	public ReservationInfo update(ReservationInfo resNum) {
		return resRepo.save(resNum);
	}

	@Override
	public int delete(int resNum) {
		resRepo.deleteById(resNum);
		return 0;
	}

}
