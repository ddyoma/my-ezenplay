package com.spboot.test.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="pc_info")
@Data
public class PcInfo {

	   @Id
	   @Column(name="pc_seat_num",unique = true)
	   private Integer pcSeatNum;
	   @Column(name="pc_spec")
	   private String pcSpec;
	   
}
