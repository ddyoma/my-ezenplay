package com.spboot.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.TrainerInfo;
import com.spboot.test.repository.TrainerInfoRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController //ResponseBody를안써도 됌. 값만받을거라면 이거씀
public class TrainerInfoController {

	@Autowired
	private TrainerInfoRepository tRepo;
	
	@PostMapping("/trainer-info")
	public Long insert(TrainerInfo ti) {
		tRepo.save(ti);
		log.info("ti=>{}",ti);
		return ti.getTiNum();
	}
	
	@GetMapping("/trainer-infos")
	public List<TrainerInfo> getTrainers(){
		return tRepo.findAll();
	}
}
