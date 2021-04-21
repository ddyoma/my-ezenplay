package com.spboot.test.service.impl;

import java.sql.Time;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spboot.test.entity.PcCurrentStatus;
import com.spboot.test.entity.ReservationInfo;
import com.spboot.test.repository.PcCurrentStatusRepository;
import com.spboot.test.repository.ReservationInfoRepository;
import com.spboot.test.service.ReservationInfoService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ReservationInfoServiceImpl implements ReservationInfoService {

	@Autowired
	private ReservationInfoRepository resRepo;
	
	@Autowired
	private PcCurrentStatusRepository PCRepo;
	
	@Override
	public List<ReservationInfo> getList(ReservationInfo resNum) {
		return resRepo.findAllByOrderByResNumDesc();
	}

	@Override
	public List<ReservationInfo> getUserRes(Integer resNum) {
		log.info("u=>{}",resRepo.findByUserInfoUserNumOrderByResNumDesc(resNum));
		return resRepo.findByUserInfoUserNumOrderByResNumDesc(resNum);
	}


	@Override
	public String insert(ReservationInfo res) {
		PcCurrentStatus pc = PCRepo.findByPcInfoPcSeatNum(res.getPcInfo().getPcSeatNum());
		PcCurrentStatus pc1 = PCRepo.findByUserInfoUserNum(res.getUserInfo().getUserNum());
		String msg;
		if(pc1==null) {
			if(pc.getPcSeatResult()==0&&pc.getReservationInfo()==null) { //한명의회원이 하나의좌석만예약가능
				 res.setResResult(1);
				 ReservationInfo r = resRepo.save(res);
				 pc.setPcSeatResult(2);
				 pc.setReservationInfo(r);
				 pc.setUserInfo(r.getUserInfo());
				 log.info("pc=>{}",pc);
				 if(r!=null) {
				 PCRepo.save(pc);
				 }
				 msg="예약이 완료되었습니다!";
			 }else {
				 msg="이미 예약된 좌석입니다.";
			 }
		}else {
			msg ="좌석은 하나만 예약 가능합니다."; //사용자가 하나의좌석 이상을 예약했을때
		}
		return msg;
	}

	@Override
	public ReservationInfo update(ReservationInfo resNum) {
		return resRepo.save(resNum);
	}

	@Override
	public Integer delete(int resNum) {
		Optional<ReservationInfo> Ores = resRepo.findById(resNum);
		ReservationInfo res = Ores.get();
		PcCurrentStatus pc = PCRepo.findByPcInfoPcSeatNum(res.getPcInfo().getPcSeatNum());
		if(pc.getPcSeatResult()==2&&PCRepo.findByUserInfoUserNum(res.getUserInfo().getUserNum())!=null) {
			res.setResResult(0);
			ReservationInfo r = resRepo.save(res);
			pc.setPcSeatResult(0);
			pc.setReservationInfo(null);
			pc.setUserInfo(null);
			if(r!=null) {
			PCRepo.save(pc);
			}
			return r.getResNum();
		}
		return null;
	}


}
