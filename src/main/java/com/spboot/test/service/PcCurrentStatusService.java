package com.spboot.test.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spboot.test.entity.PcCurrentStatus;

@Service
public interface PcCurrentStatusService {

	List<PcCurrentStatus> getPcStatusList();
	PcCurrentStatus getPcCurrentStatus(int pcStatusNum);
	PcCurrentStatus insertPcCurrentStatus(PcCurrentStatus pcStatus);
	PcCurrentStatus updatePcCurrentStatus(PcCurrentStatus pcStatus);
	int deletePcCurrentStatus(int pcStatusNum);
	
}
