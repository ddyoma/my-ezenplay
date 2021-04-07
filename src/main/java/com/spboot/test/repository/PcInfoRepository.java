package com.spboot.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.PcInfo;

public interface PcInfoRepository extends JpaRepository<PcInfo, Integer> {

}