package com.spboot.test.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.repository.PcCurrentStatusRepository;
import com.spboot.test.service.PcCurrentStatusService;

@Service
@Transactional
public class PcCurrentStatusServiceImpl implements PcCurrentStatusService {

	@Autowired
	private PcCurrentStatusRepository pcRepo;
	
//	@Override
//	public List<PcCurrentStatus> getPcStatusList() {
//		return pcRepo.findAllByOrderByPcStatusNumDesc();
//	}

	@Override
	public PcCurrentStatus getPcCurrentStatus(int pcStatusNum) {
		Optional<PcCurrentStatus> opPc = pcRepo.findById(pcStatusNum);
		if(opPc.isEmpty()) return null;
		return opPc.get();
	}
	@Override
	public PcCurrentStatus findOneByPcNum(Integer pcNum){
		return pcRepo.findByPcInfoPcSeatNum(pcNum);
	}
	@Override
	public PcCurrentStatus insertPcCurrentStatus(PcCurrentStatus pcStatus) {
		return pcRepo.save(pcStatus);
	}
	@Override
	public List<PcCurrentStatus> getPcInfos(){
		List<PcCurrentStatus>  list = pcRepo.findAllByOrderByPcStatusNumDesc();
		return list;
	}
//	@Override
//	public List<PcCurrentStatus> getPcInfos(){
//		return pcRepo.findPcInfoOrderByPcStatusNumDesc();
//	}
	@Override
	public PcCurrentStatus updatePcCurrentStatus(PcCurrentStatus pcStatus) {
		return pcRepo.save(pcStatus);
	}

	@Override
	public int deletePcCurrentStatus(int pcStatusNum) {
		pcRepo.deleteById(pcStatusNum);
		return 0;
	}


}
