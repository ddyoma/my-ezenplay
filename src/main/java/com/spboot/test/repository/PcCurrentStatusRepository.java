package com.spboot.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.PcCurrentStatus;

public interface PcCurrentStatusRepository extends JpaRepository<PcCurrentStatus, Integer> {

	public List<PcCurrentStatus> findAllByUserUserNumOrderByPcStatusNumDesc(Integer userNum);
	
	public List<PcCurrentStatus> findAllByPcPcSeatNumOrderByPcStatusNumDesc(Integer pcSeatNum);
}
