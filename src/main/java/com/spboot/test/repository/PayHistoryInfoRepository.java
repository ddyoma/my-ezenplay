package com.spboot.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.PayHistoryInfo;

public interface PayHistoryInfoRepository extends JpaRepository<PayHistoryInfo, Integer> {

}
