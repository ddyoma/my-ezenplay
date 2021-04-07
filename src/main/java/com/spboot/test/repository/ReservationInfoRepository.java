package com.spboot.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spboot.test.entity.ReservationInfo;

public interface ReservationInfoRepository extends JpaRepository<ReservationInfo, Integer> {

}
