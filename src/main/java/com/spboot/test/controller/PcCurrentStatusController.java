package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.repository.PcCurrentStatusRepository;

@RestController
public class PcCurrentStatusController {

	@Autowired
	private PcCurrentStatusRepository pcStatusRepo;
	
	@PostMapping("/pc-status")
	public Integer insert(@RequestBody PcCurrentStatus pcStatus) {
		pcStatusRepo.save(pcStatus);
		return pcStatus.getPcStatusNum();
	}
}
