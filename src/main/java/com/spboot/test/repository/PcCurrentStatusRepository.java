package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.entity.ReservationInfo;

public interface PcCurrentStatusRepository extends JpaRepository<PcCurrentStatus, Integer> {

	List<PcCurrentStatus> findAllByOrderByPcStatusNumDesc();
	PcCurrentStatus findByPcInfoPcSeatNum(Integer pcSeatNum);
	PcCurrentStatus findByUserInfoUserNum(Integer userNum);
	
}
