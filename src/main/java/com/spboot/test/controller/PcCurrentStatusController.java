package com.spboot.test.controller;

import java.sql.Time;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.entity.UserInfo;
import com.spboot.test.service.PcCurrentStatusService;
import com.spboot.test.service.UserInfoService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PcCurrentStatusController {

	
	@Autowired
	private PcCurrentStatusService pService;
	
	@Autowired
	private UserInfoService userService;
	
	@PostMapping("/pc-status")
	public Integer insert(@RequestBody PcCurrentStatus pcStatus) {//정보를 저장하는 로직
		PcCurrentStatus pc = pService.insertPcCurrentStatus(pcStatus);
		return pc.getPcStatusNum();
	}
	@GetMapping("/pc-status/list")
	public @ResponseBody List<PcCurrentStatus> getPcInfos(){ //리스트로직
		return pService.getPcInfos();
	}
	@GetMapping("/pc-status/reserve")
	public @ResponseBody PcCurrentStatus findOneByPcNum(@RequestParam Integer pcNum){
		return pService.findOneByPcNum(pcNum);
	}
	
	
	@GetMapping("/pc-status/user/{userNum}")
	public List<PcCurrentStatus> findAllByUiNum(@PathVariable Integer userNum){
		return null;
	}
	
	@GetMapping("/pc-status/pc/{pcSeatNum}")
	public List<PcCurrentStatus> findAllByPcSeatNum(@PathVariable Integer pcSeatNum){
		return null;
	}
	
	@GetMapping("/time-compare/{userNum}")
	public Integer getUserRestTime(@PathVariable Integer userNum) {
		UserInfo ui  = userService.getUser(userNum);
		Time t = ui.getRestOfTime();
		String userT = t.toString();
		int cnt = 0;
		if(userT.compareTo("01:00:00")>=0) {
			cnt = 1;
		}
		return cnt;
	}
}
