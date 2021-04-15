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

import lombok.Data;

@Entity
@Table(name="pay_history_info")
@Data
public class PayHistoryInfo {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name="ph_num")
	 private Integer phNum;
	 @Column(name="ph_type")
	 private String phType ;
	 @Column(name="ph_date",insertable = false)
	 private Date phDate ;
	 @Column(name="ph_method")
	 private String phMethod ;
	 @Column(name="ph_price")
	 private Integer phPrice ;
	 @Column(name="ph_time")
	 private Integer phTime;
	 @Column(name="ph_details")
	 private String phDetails;
	 @Column(name="ph_save")
	 private Integer phSave;
	 
	 @ManyToOne
	 @JoinColumn(name="user_num")
	 private UserInfo userInfo;

}
