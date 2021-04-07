package com.spboot.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.repository.PcCurrentStatusRepository;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PcCurrentStatusController {

	@Autowired
	private PcCurrentStatusRepository pcCurrentStatusRepo;
	
	@PostMapping("/status/insert")
	public Integer insertStatus(@RequestBody PcCurrentStatus pc) {
		log.info("pc=>{}",pc);
		pcCurrentStatusRepo.save(pc);
		return pc.getPcStatusNum();
	}
}
