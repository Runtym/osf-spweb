
/* Drop Triggers */

DROP TRIGGER TRI_class_c_num;
DROP TRIGGER TRI_match_m_num;
DROP TRIGGER TRI_student_s_num;



/* Drop Tables */

DROP TABLE match CASCADE CONSTRAINTS;
DROP TABLE class CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_class_c_num;
DROP SEQUENCE SEQ_match_m_num;
DROP SEQUENCE SEQ_student_s_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_class_c_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_match_m_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_student_s_num INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE class
(
	c_num number(5,0) NOT NULL,
	c_name  NOT NULL,
	PRIMARY KEY (c_num)
);


CREATE TABLE match
(
	m_num number(7,0) NOT NULL,
	s_num number(5,0) NOT NULL,
	c_num number(5,0) NOT NULL,
	PRIMARY KEY (m_num)
);


CREATE TABLE student
(
	s_num number(5,0) NOT NULL,
	s_name varchar2(100) NOT NULL,
	s_id varchar2(100) NOT NULL,
	PRIMARY KEY (s_num)
);



/* Create Foreign Keys */

ALTER TABLE match
	ADD FOREIGN KEY (c_num)
	REFERENCES class (c_num)
;


ALTER TABLE match
	ADD FOREIGN KEY (s_num)
	REFERENCES student (s_num)
;



