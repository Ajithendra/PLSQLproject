/* ========================================================== TABLES =========================================================*/
  create table student(
      rollno varchar2(10) primary key NOT NULL, 
      name varchar2(30) NOT NULL,
      age number(2) NOT NULL,
      father varchar(15) NOT NULL,
      sex char(6) NOT NULL
  );

  create table clgrecord(
      rollno varchar2(10) NOT NULL,
      reg_no number(5) NOT NULL,
      name varchar(30) NOT NULL,
      branch char(6) NOT NULL, 
      year number(1) NOT NULL,
      semester number(1) NOT NULL
  );

  create table marks(
      reg_no number(5) NOT NULL,
      subj1 number(3) NOT NULL,
      subj2 number(3) NOT NULL,
      subj3 number(3) NOT NULL,
      subj4 number(3) NOT NULL,
      subj5 number(3) NOT NULL,
      subj6 number(3) NOT NULL
  );

create table results(
      reg_no number(5) NOT NULL,
      percentage number(6,2) NOT NULL,
      result varchar(10) NOT NULL,
      arrears number(1) NOT NULL
  );

/* ===================================================== END TABLES ========================================================= */

/* ======================================== DESCRIBE STUDENT TABLE ATTRIBUTES =============================================== */

desc student;

/* ===================================================== POPULATING TABLE =================================================== */

insert into student values('19KN1A0501','BASHA',20,'ALTHAF','MALE');
insert into student values('19KN1A0502','ARUN',19,'ANJI','MALE');
insert into student values('20KN1A0501','BANU',19,'MURALI','FEMALE');
insert into student values('21KN1A0509','VINOD',18,'ALTHAF','MALE');
insert into student values('22KN1A0501','VAMSI',18,'PARDHU','MALE');

insert into student values('19KN1A0401','AZEEZ',21,'AMEER','MALE');
insert into student values('19KN1A0402','AJAY',21,'ANJI','MALE');
insert into student values('21KN1A0401','PRIYANKA',21,'POORNA','FEMALE');
insert into student values('20KN1A0401','SHIVANI',20,'VAMSI','FEMALE');
insert into student values('22KN1A0401','SHIVA',18,'VARUN','MALE');

insert into student values('19KN1A0301','SIDHU',22,'SAM','MALE');
insert into student values('19KN1A0302','SURI',21,'SASI','MALE');
insert into student values('21KN1A0301','SUMAN',18,'SHANKAR','MALE');
insert into student values('20KN1A0301','SUSHANTH',19,'SASI','MALE');
insert into student values('22KN1A0301','SUMAN',19,'SURESH','MALE');

insert into student values('19KN1A0201','BANU',20,'SURESH','FEMALE');
insert into student values('19KN1A0202','BANU SRI',21,'SRIDHAR','FEMALE');
insert into student values('21KN1A0201','KRISHNA',19,'SRINU','MALE');
insert into student values('20KN1A0201','KUMAR',18,'SAM','MALE');
insert into student values('22KN1A0201','KUSUMA',18,'SAMAR','FEMALE');

insert into student values('19KN1A0101','ANKITH',20,'SHIVA','MALE');
insert into student values('19KN1A0102','BUVAN',20,'SUKESH','MALE');
insert into student values('20KN1A0101','HARI',20,'KRISHNA','MALE');
insert into student values('21KN1A0101','NAVENDRA',20,'HEMANTH','MALE');
insert into student values('22KN1A0101','NAVEEN',18,'NANI','MALE');

SELECT * FROM STUDENT;

/* ========================================= DESCRIBE CLGRECORD TABLE ATTRIBUTES ============================================ */

desc clgrecord;

insert into  clgrecord values('19KN1A0501',6001,'BASHA','CSE',4,2);
insert into  clgrecord values('19KN1A0502',6075,'ARUN','CSE',4,2);
insert into  clgrecord values('20KN1A0501',7075,'BANU','CSE',3,2);
insert into  clgrecord values('21KN1A0509',8088,'VINOD','CSE',2,2);
insert into  clgrecord values('22KN1A0501',9088,'VAMSI','CSE',1,2);

insert into  clgrecord values('19KN1A0401',6102,'AZEEZ','ECE',4,2);
insert into clgrecord values('19KN1A0402',6112,'AJAY','ECE',4,2);
insert into clgrecord values('21KN1A0401',8102,'PRIYANKA','ECE',2,2);
insert into clgrecord values('20KN1A0401',7232,'SHIVANI','ECE',3,2);
insert into clgrecord values('22KN1A0401',9232,'SHIVA','ECE',1,2);

insert into clgrecord values('19KN1A0301',6222,'SIDHU','IT',4,2);
insert into clgrecord values('19KN1A0302',6722,'SURI','IT',4,2);
insert into clgrecord values('21KN1A0301',8112,'SUMAN','IT',2,2);
insert into clgrecord values('20KN1A0301',7222,'SUSHANTH','IT',3,2);
insert into clgrecord values('22KN1A0301',9222,'SUMAN','IT',1,2);

insert into clgrecord values('19KN1A0201',6072,'BANU','EEE',4,2);
insert into clgrecord values('19KN1A0202',6012,'BANU SRI','EEE',4,2);
insert into clgrecord values('20KN1A0201',8082,'KRISHNA','EEE',3,2);
insert into clgrecord values('21KN1A0201',7072,'KUMAR','EEE',2,2);
insert into clgrecord values('22KN1A0201',9072,'KUSUMA','EEE',1,2);

insert into clgrecord values('19KN1A0101',6082,'ANKITH','MECH',4,2);
insert into clgrecord values('19KN1A0102',6092,'BUVAN','MECH',4,2);
insert into clgrecord values('20KN1A0101',7002,'HARI','MECH',3,2);
insert into clgrecord values('21KN1A0101',8072,'NAVENDRA','MECH',2,2);
insert into clgrecord values('22KN1A0101',9172,'NAVEEN','MECH',1,2);


SELECT * FROM clgrecord;

/* =========================================== DESCRIBE MARKS TABLE ATTRIBUTES ============================================== */

desc marks;

insert into marks values(6001,95,97,95,94,93,90);
insert into marks values(6075,95,84,95,94,93,98);
insert into marks values(7075,99,94,88,94,93,91);
insert into marks values(8088,95,89,94,94,88,90);
insert into marks values(9088,95,89,94,94,88,90);

insert into marks values(6102,94,97,92,88,85,90);
insert into marks values(6112,94,86,96,88,87,91);
insert into marks values(8102,99,90,92,88,86,80);
insert into marks values(7232,75,92,94,45,94,88);
insert into marks values(9232,75,92,94,45,94,88);

insert into marks values(6222,85,91,96,44,84,86);
insert into marks values(6722,95,94,97,45,84,89);
insert into marks values(8112,95,94,82,22,85,89);
insert into marks values(7222,75,34,95,89,74,88);
insert into marks values(9222,75,34,95,89,74,88);

insert into marks values(6072,97,94,94,80,77,62);
insert into marks values(6012,97,94,94,80,77,62);
insert into marks values(8082,97,94,94,80,77,62);
insert into marks values(7072,97,94,94,80,77,62);
insert into marks values(9072,97,94,94,80,77,62);

insert into marks values(6082,97,94,94,80,76,77);
insert into marks values(6092,45,46,96,70,75,62);
insert into marks values(7002,97,94,94,80,77,82);
insert into marks values(8072,97,94,94,80,88,42);
insert into marks values(9172,97,94,94,80,88,42);

SELECT * FROM MARKS;

/ ============================================ DESCRIBE RESULTS TABLE ATTRIBUTES ============================================ */

desc results;

insert into results values(6001,94,'PASS',0);
insert into results values(6075,93.16,'PASS',0);
insert into results values(7075,93.16,'PASS',0);
insert into results values(8088,91.66,'PASS',0);
insert into results values(9088,91.66,'PASS',0);

insert into results values(6102,91,'PASS',0);
insert into results values(6112,90.32,'PASS',0);
insert into results values(8102,89.16,'PASS',0);
insert into results values(7232,81.33,'PASS',0);
insert into results values(9232,81.33,'PASS',0);

insert into results values(6222,81,'PASS',0);
insert into results values(6722,84,'PASS',0);
insert into results values(8112,77.83,'FAIL',1);
insert into results values(7222,75.83,'FAIL',1);
insert into results values(9222,75.83,'FAIL',1);

insert into results values(6072,84,'PASS',0);
insert into results values(6012,84,'PASS',0);
insert into results values(8082,84,'PASS',0);
insert into results values(7072,84,'PASS',0);
insert into results values(9072,84,'PASS',0);

insert into results values(6082,86.33,'PASS',0);
insert into results values(6092,65.66,'PASS',0);
insert into results values(7002,87.33,'PASS',0);
insert into results values(8072,82.5,'PASS',0);
insert into results values(9172,82.5,'PASS',0);


SELECT * FROM RESULTS;

/* ==================================================== END POPULATING TABLE ================================================ */


/* ==================================================== START PROCEDURE ===================================================== */

/* ==================================== 1.INSIVIDUAL MARKS DEATAILS OF STUDENTS ============================================= */

create or replace procedure pro_sreg_no(sreg_no number)
as
student_rec student%rowtype;
clg_rec clgrecord%rowtype;
marks_rec marks%rowtype;
result_rec results%rowtype;
/* =================== CREATING A CURSOR  =================================== */
cursor cur_first is
select * from clgrecord where reg_no=sreg_no ;
begin
/* =================== OPENING THE CURSOR =================================== */
open cur_first;
loop
/* =================== FETCHING DATA FROM CURSOR =================================== */
fetch cur_first into clg_rec;
if cur_first%rowcount=0 
then
dbms_output.put_line('*****NO STUDENTS DATA IS PRESENT HAVING REGESTER NUMBER:'||sreg_no||'******');
exit;
else
exit when cur_first%notfound;
select  *  into clg_rec from clgrecord where reg_no=sreg_no; 
select * into marks_rec from marks where reg_no=clg_rec.reg_no;
select * into result_rec from results where reg_no=clg_rec.reg_no;
dbms_output.put_line('*****MARKS DEATAILS OF STUDENT HAVING REGNUMBER:'||sreg_no||'******');
dbms_output.put_line('NAME:'||clg_rec.name);
dbms_output.put_line('BRANCH:'||clg_rec.branch);
dbms_output.put_line('*****MARKS DETAILS******');
dbms_output.put_line('SUBJ1:'||marks_rec.subj1);
dbms_output.put_line('SUBJ2:'||marks_rec.subj2);
dbms_output.put_line('SUBJ3:'||marks_rec.subj3);
dbms_output.put_line('SUBJ4:'||marks_rec.subj4);
dbms_output.put_line('SUBJ5:'||marks_rec.subj5);
dbms_output.put_line('SUBJ6:'||marks_rec.subj6);
dbms_output.put_line('***************RESULT IS*****************');
dbms_output.put_line('percentage:'||result_rec.percentage);
dbms_output.put_line('no.of arrears:'||result_rec.arrears);
dbms_output.put_line('class:'||result_rec.result);
dbms_output.put_line(' ');
end if;
end loop;
/* =================== CLOSING CURSOR =================================== */
close cur_first;
/* ========================================== END OF PROCEDURE ============================================================== */
end pro_sreg_no;



/* =================== 1.EXECUTING PROCEDURE =================================== */
begin
pro_sreg_no(6001);
END;
/




/* ==================================== 2.INSIVIDUAL BRANCH MARKS DEATAILS OF STUDENTS ====================================== */

create or replace procedure pro_sbranch(sbranch  char)
as
student_rec student%rowtype;
clg_rec clgrecord%rowtype;
marks_rec marks%rowtype;
result_rec results%rowtype;
/* =================== CREATING A CURSOR  =================================== */
cursor cur_first is
select * from clgrecord where branch=sbranch order by reg_no;
begin
/* =================== OPENING THE CURSOR =================================== */
open cur_first;
dbms_output.put_line('************* DETAILS OF STUDENTS FROM BRANCH '||sbranch||'***************');
loop
/* =================== FETCHING DATA FROM CURSOR =================================== */
fetch cur_first into clg_rec;
if cur_first%rowcount=0 
then
dbms_output.put_line('*****NO STUDENTS DATA IS PRESENT FROM BRANCH '||sbranch||'******');
exit;
else
exit when cur_first%notfound;
select * into clg_rec from clgrecord where reg_no=clg_rec.reg_no;
select * into marks_rec from marks where reg_no=clg_rec.reg_no;
select * into result_rec from results where reg_no=clg_rec.reg_no;
dbms_output.put_line('*****MARKS DEATAILS OF STUDENT HAVING REGISTER NUMBER:'||marks_rec.reg_no||'******');
dbms_output.put_line('NAME:'||clg_rec.name);
dbms_output.put_line('*****MARKS DETAILS******');
dbms_output.put_line('SUBJ1:'||marks_rec.subj1);
dbms_output.put_line('SUBJ2:'||marks_rec.subj2);
dbms_output.put_line('SUBJ3:'||marks_rec.subj3);
dbms_output.put_line('SUBJ4:'||marks_rec.subj4);
dbms_output.put_line('SUBJ5:'||marks_rec.subj5);
dbms_output.put_line('SUBJ6:'||marks_rec.subj6);
dbms_output.put_line('***************RESULT IS*****************');
dbms_output.put_line('percentage:'||result_rec.percentage);
dbms_output.put_line('no.of arrears:'||result_rec.arrears);
dbms_output.put_line('class:'||result_rec.result);
dbms_output.put_line(' ');
end if;
end loop;
/* =================== CLOSING CURSOR =================================== */
close cur_first;
/* ========================================== END OF PROCEDURE ============================================================== */
end pro_sbranch;


/* =================== 2.EXECUTING PROCEDURE =================================== */

begin
pro_sbranch('CSE');
END;
/






/* ==================================== 3.ARREAR STUDENTS FROM ALL BRANCHES ================================================= */

create or replace procedure pro_arrear 
as
student_rec student%rowtype;
clg_rec clgrecord%rowtype;
marks_rec marks%rowtype;
result_rec results%rowtype;
/* =================== CREATING A CURSOR  =================================== */
cursor cur_first is 
select * from results where arrears!=0 order by reg_no;
begin
/* =================== OPENING THE CURSOR =================================== */
open cur_first;
dbms_output.put_line('*****STUDENTS WITH ARREAR******');
loop
/* =================== FETCHING DATA FROM CURSOR =================================== */
fetch cur_first into result_rec;
if cur_first%rowcount=0 
then
dbms_output.put_line('*****NO STUDENT WITH ARREAR****');
exit;
else
exit when cur_first%notfound;
select * into clg_rec from clgrecord where reg_no=result_rec.reg_no;
select * into marks_rec from marks where reg_no=result_rec.reg_no;
select * into result_rec from results where reg_no=result_rec.reg_no;
dbms_output.put_line('REGISTER NUMBER:'||result_rec.reg_no);
dbms_output.put_line('NAME:'||clg_rec.name);
dbms_output.put_line('BRANCH:'||clg_rec.branch);
dbms_output.put_line('********MARKS DEATILS*********');
dbms_output.put_line('SUBJ1:'||marks_rec.subj1);
dbms_output.put_line('SUBJ2:'||marks_rec.subj2);
dbms_output.put_line('SUBJ3:'||marks_rec.subj3);
dbms_output.put_line('SUBJ4:'||marks_rec.subj4);
dbms_output.put_line('SUBJ5:'||marks_rec.subj5);
dbms_output.put_line('SUBJ6:'||marks_rec.subj6);
dbms_output.put_line('*****RESULT************');
dbms_output.put_line('PERCENTAGE:'||result_rec.percentage);
dbms_output.put_line('NUMBER OF ARREARS:'||result_rec.arrears);
dbms_output.put_line('CLASS:'||result_rec.result);
dbms_output.put_line('');
end if;
end loop;
/* =================== CLOSING CURSOR =================================== */
close cur_first;
/* ========================================== END OF PROCEDURE ============================================================== */
end pro_arrear;




/* =================== 3.EXECUTING PROCEDURE =================================== */

begin
pro_arrear;
END;
/


