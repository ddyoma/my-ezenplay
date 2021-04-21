package com.spboot.test.controller;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.spboot.test.entity.ReservationInfo;
import com.spboot.test.service.ReservationInfoService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class ReservationInfoController {

	@Autowired
	private ReservationInfoService resService;
	
	@PostMapping("/res/insert")
	public String insertRes(@RequestBody ReservationInfo res) {
		log.info("res=>{}",res);
		return resService.insert(res);
	}
	
	@GetMapping("/res/user/{userNum}")
	public List<ReservationInfo> getUserRes(@PathVariable Integer userNum) {
		return resService.getUserRes(userNum);
	}
	
	@DeleteMapping("/res/delete/{resNum}")
	public Integer deleteRes(@PathVariable Integer resNum) {
		log.info("resNum=>{}",resNum);
		return resService.delete(resNum);
	}
	
	@GetMapping("/time/{rTime}")
	public Integer getTime(@PathVariable String rTime) {
		String time = rTime +":00";
		Calendar cal= Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String resDate = sdf.format(cal.getTime());
		resDate = resDate +" "+time;
		Date d = new Date();
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		cal.setTime(d);
		cal.add(Calendar.MINUTE, 31);
		String now = sdf.format(cal.getTime());
		if(resDate.compareTo(now)>0) {
			return 1;
		}
		return 0;
	}
}
