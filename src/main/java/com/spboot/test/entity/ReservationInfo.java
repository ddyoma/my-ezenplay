package com.spboot.test.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Entity
@Table(name="reservation_info")
@Data
public class ReservationInfo {

	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  @Column(name="res_num")
	  private Integer resNum;
	  @DateTimeFormat(pattern = "yyyy-MM-dd")
	  @Column(name="res_date")
	  private Date resDate;
	  @Column(name="res_time")
	  private Time resTime;
	  
	  @ManyToOne
	  @JoinColumn(name="user_num")
	  private UserInfo userInfo;
	  
	  @ManyToOne
	  @JoinColumn(name="pc_seat_num")
	  private PcInfo pcInfo;
}
