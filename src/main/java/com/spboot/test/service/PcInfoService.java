package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.PcInfo;

@Service
public interface PcInfoService {

	List<PcInfo> getPcInfoList();
	PcInfo getPcInfo(int pcSeatNum);
	int insertPcInfo(PcInfo pc);
	PcInfo updatePcInfo(PcInfo pc);
	int deletePcInfo(int pcSeatNum);
}
