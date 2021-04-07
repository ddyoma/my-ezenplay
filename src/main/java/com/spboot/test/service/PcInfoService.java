package com.spboot.test.service;

import java.util.List;

import com.spboot.test.entity.PcInfo;

public interface PcInfoService {

	List<PcInfo> getPcInfoList();
	PcInfo getPcInfo(int pcSeatNum);
	int insertPcInfo(PcInfo pc);
	int updatePcInfo(PcInfo pc);
	int deletePcInfo(int pcSeatNum);
}
