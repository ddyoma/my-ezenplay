package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.PcInfo;
import com.spboot.test.repository.PcInfoRepository;

@RestController
public class PcInfoController {
	
	@Autowired
	private PcInfoRepository pcRepo;
	
	@PostMapping("/pc")
	public Integer insert(@RequestBody PcInfo pc) {
		pcRepo.save(pc);
		return pc.getPcSeatNum();
	}
	
}
