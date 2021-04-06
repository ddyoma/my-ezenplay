package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.spboot.test.entity.PcInfo;
import com.spboot.test.repository.PcInfoRepository;

public class PcInfoController {

	@Autowired
	private PcInfoRepository pcRepo;
	
	@PostMapping("/pc")
	public Integer insert(@RequestBody PcInfo pc) {
		pcRepo.save(pc);
		return 1;
	}
}
