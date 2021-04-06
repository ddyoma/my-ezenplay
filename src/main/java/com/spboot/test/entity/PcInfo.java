package com.spboot.test.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="pc_info")
@Data
public class PcInfo {

	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="pc_seat_num")
	   private Integer pcSeatNum;
	   @Column(name="pc_spec")
	   private String pcSpec;
	   
}
