package com.spboot.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.PcInfo;
import com.spboot.test.repository.PcInfoRepository;
import com.spboot.test.service.PcInfoService;

@Service
public class PcInfoServiceImpl implements PcInfoService {

	@Autowired
	private PcInfoRepository pcRepo;
	
	@Override
	public List<PcInfo> getPcInfoList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertPcInfo(PcInfo pc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PcInfo getPcInfo(int pcSeatNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PcInfo updatePcInfo(PcInfo pc) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deletePcInfo(int pcSeatNum) {
		// TODO Auto-generated method stub
		return 0;
	}

}
