CREATE TABLESPACE student_examination_sys DATAFILE 'student_examination_sys.dbf' SIZE 20M;
CREATE USER C##zach IDENTIFIED BY 123456 ACCOUNT UNLOCK DEFAULT TABLESPACE student_examination_sys;
GRANT dba TO C##zach;

CREATE TABLE C##zach.student (
"id" VARCHAR2(16 BYTE) NOT NULL primary key,
"name" VARCHAR2(128 BYTE) NOT NULL ,
"age" NUMBER NOT NULL ,
"sex" VARCHAR2(16 BYTE) NOT NULL 
);


INSERT INTO C##zach.student VALUES ('001', 'zhangsan', '18', 'male');
INSERT INTO C##zach.student VALUES ('002', 'lisi', '20', 'female');


CREATE TABLE C##zach.subject (
"id" VARCHAR2(16 BYTE) NOT NULL primary key,
"subject" VARCHAR2(32 BYTE) NOT NULL ,
"teacher" VARCHAR2(64 BYTE) NOT NULL ,
"description" VARCHAR2(255 BYTE) NOT NULL 
);


INSERT INTO C##zach.subject VALUES ('1001', 'Chinese', 'Mr.Wang', 'the exam is easy');
INSERT INTO C##zach.subject VALUES ('1002', 'math', 'Miss Liu', 'the exam is diffcult');


CREATE TABLE C##zach.score (
"id" NUMBER NOT NULL primary key,
"student_id" VARCHAR2(16 BYTE) NOT NULL ,
"subject_id" VARCHAR2(16 BYTE) NOT NULL ,
"score" NUMBER(7,2) NOT NULL 
);

INSERT INTO C##zach.score VALUES ('4', '002', '1002', '60.50');
INSERT INTO C##zach.score VALUES ('2', '002', '1002', '60');
INSERT INTO C##zach.score VALUES ('1', '001', '1001', '80');
INSERT INTO C##zach.score VALUES ('3', '001', '1001', '70');