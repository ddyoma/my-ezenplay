package com.spboot.test.service;

import java.util.List;

import com.spboot.test.entity.PcCurrentStatus;

public interface PcCurrentStatusService {

	List<PcCurrentStatus> getPcStatusList();
	PcCurrentStatus getPcCurrentStatus(int pcStatusNum);
	int insertPcCurrentStatus(PcCurrentStatus pcStatus);
	int updatePcCurrentStatus(PcCurrentStatus pcStatus);
	int deletePcCurrentStatus(int pcStatusNum);
	
}
