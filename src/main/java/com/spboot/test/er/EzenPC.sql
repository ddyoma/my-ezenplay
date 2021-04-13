SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS food_info;
DROP TABLE IF EXISTS pay_history_info;
DROP TABLE IF EXISTS pc_current_status;
DROP TABLE IF EXISTS reservation_info;
DROP TABLE IF EXISTS review_info;
DROP TABLE IF EXISTS user_info;
DROP TABLE IF EXISTS grade_info;
DROP TABLE IF EXISTS pc_info;




/* Create Tables */

CREATE TABLE food_info
(
	food_num tinyint NOT NULL,
	food_type varchar(20) NOT NULL,
	food_name varchar(50) NOT NULL,
	food_desc varchar(100) NOT NULL,
	food_img_name varchar(50),
	food_img_path varchar(30),
	food_price smallint NOT NULL,
	food_cook_time varchar(10) DEFAULT '0' NOT NULL,
	PRIMARY KEY (food_num),
	UNIQUE (food_num)
);


CREATE TABLE grade_info
(
	grade_num decimal NOT NULL,
	grade_name varchar(10) NOT NULL,
	grade_per decimal(1,2) NOT NULL,
	file_path varchar(300) NOT NULL,
	PRIMARY KEY (grade_num),
	UNIQUE (grade_num),
	UNIQUE (grade_name)
);


CREATE TABLE pay_history_info
(
	ph_num mediumint NOT NULL AUTO_INCREMENT,
	user_num mediumint NOT NULL,
	ph_type varchar(20) NOT NULL,
	ph_date date DEFAULT curdate() NOT NULL,
	ph_method varchar(10) NOT NULL,
	ph_price mediumint,
	ph_time tinyint DEFAULT 0,
	ph_details varchar(50),
	ph_save varchar(20),
	ph_total_amount blob,
	PRIMARY KEY (ph_num)
);


CREATE TABLE pc_current_status
(
	pc_status_num int NOT NULL AUTO_INCREMENT,
	res_num mediumint,
	user_num mediumint,
	pc_seat_num year(2) NOT NULL,
	pc_seat_result decimal DEFAULT 0 NOT NULL,
	PRIMARY KEY (pc_status_num),
	UNIQUE (pc_seat_num)
);


CREATE TABLE pc_info
(
	pc_seat_num year(2) NOT NULL,
	pc_spec varchar(100) DEFAULT '없음' NOT NULL,
	PRIMARY KEY (pc_seat_num),
	UNIQUE (pc_seat_num)
);


CREATE TABLE reservation_info
(
	res_num mediumint NOT NULL AUTO_INCREMENT,
	user_num mediumint NOT NULL,
	pc_seat_num year(2) NOT NULL,
	res_date date NOT NULL,
	res_time varchar(8) NOT NULL,
	PRIMARY KEY (res_num),
	UNIQUE (pc_seat_num)
);


CREATE TABLE review_info
(
	rev_num mediumint NOT NULL AUTO_INCREMENT,
	user_num mediumint NOT NULL,
	rev_comment varchar(100) NOT NULL,
	rev_number_of_views mediumint DEFAULT 0 NOT NULL,
	rev_star decimal NOT NULL,
	rev_posted_date date DEFAULT curdate() NOT NULL,
	rev_posted_time varchar(8) DEFAULT 'curtime()' NOT NULL,
	PRIMARY KEY (rev_num)
);


CREATE TABLE user_info
(
	user_num mediumint NOT NULL AUTO_INCREMENT,
	grade_num decimal NOT NULL,
	user_id varchar(10) NOT NULL,
	user_pwd varchar(20) NOT NULL,
	user_name varchar(30) NOT NULL,
	user_gender varchar(5) NOT NULL,
	user_date_of_birth char(8) NOT NULL,
	user_addr1 varchar(200) NOT NULL,
	user_addr2 varchar(100) NOT NULL,
	user_phone1 varchar(10) NOT NULL,
	user_email varchar(100),
	user_mileage mediumint DEFAULT 0 NOT NULL,
	reg_date date DEFAULT curdate() NOT NULL,
	favorite_game varchar(50),
	rest_of_time varchar(9) DEFAULT '0' NOT NULL,
	user_profile varchar(300),
	profile_path varchar(300),
	action varchar(1) DEFAULT '1' NOT NULL,
	PRIMARY KEY (user_num),
	UNIQUE (user_id)
);



/* Create Foreign Keys */

ALTER TABLE user_info
	ADD FOREIGN KEY (grade_num)
	REFERENCES grade_info (grade_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pc_current_status
	ADD FOREIGN KEY (pc_seat_num)
	REFERENCES pc_info (pc_seat_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reservation_info
	ADD FOREIGN KEY (pc_seat_num)
	REFERENCES pc_info (pc_seat_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pc_current_status
	ADD FOREIGN KEY (res_num)
	REFERENCES reservation_info (res_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pay_history_info
	ADD FOREIGN KEY (user_num)
	REFERENCES user_info (user_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pc_current_status
	ADD FOREIGN KEY (user_num)
	REFERENCES user_info (user_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reservation_info
	ADD FOREIGN KEY (user_num)
	REFERENCES user_info (user_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE review_info
	ADD FOREIGN KEY (user_num)
	REFERENCES user_info (user_num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



