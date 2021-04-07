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
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Entity
@Table(name="grade_info")
@Data
public class GradeInfo {
	@Id
	@Column(name="grade_num",unique = true)
	private Integer gradeNum;
	@Column(name="grade_name")
	private String gradeName;
	@Column(name="grade_per")
	private Integer gradePer;
	@Column(name="file_path")
	private String filePath;
	
	@Transient
	private MultipartFile gradeFile;
	
	@ManyToOne
	@JoinColumn(name="user_num")
	private UserInfo userInfo;
}
