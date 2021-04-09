package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.ReservationInfo;

@Service
public interface ReservationInfoService {
	
	List<ReservationInfo> getList(ReservationInfo resNum);
	ReservationInfo get(int resNum);
	int insert(ReservationInfo resNum);
	int update(ReservationInfo resNum);
	int delete(int resNum);
	
}
