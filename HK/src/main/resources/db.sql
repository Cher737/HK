drop table hk_user cascade constraint;
----------------
select * from hk_user;
create table hk_user(
	u_id varchar2(15 char) primary key,
	u_pw varchar2(15 char) not null,
	u_name varchar2(15 char) not null,
	u_addr varchar2(150 char) not null,
	u_mail varchar2(80 char) not null,
	u_phone varchar2(11 char) not null,
	u_jumin varchar2(13 char) not null,
	u_joinday date not null,
	u_grade number(3) not null,
	u_gradedate date not null,
	u_point number(7) not null
);
delete from hk_user where u_id='test';
-----
select * from passport;
create table passport(
	pp_ppnumber varchar2(9 char) primary key,
	pp_id varchar2(15 char) not null,
	pp_exp date not null,
	pp_nationality varchar2(20 char) not null,
	pp_engname varchar2(30 char) not null
);
delete from passport where pp_pnumber='M12345678';