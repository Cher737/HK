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
delete from passport where pp_id='test1';


-------------------
select * from japanbill;
create sequence japanbill_seq;
create table japanbill(
	jb_number number(8) primary key,
	jb_rate varchar2(10 char) not null,
	jb_date date not null
);
delete from japanbill where jb_number='21';
drop table chinabill cascade constraint;

select * from chinabill;
create sequence chinabill_seq;
create table chinabill(
	cb_number number(8) primary key,
	cb_rate varchar2(10 char) not null,
	cb_date date not null
);
delete from chinabill where cb_number='21';

select * from eurobill;
create sequence eurobill_seq;
create table eurobill(
	eb_number number(8) primary key,
	eb_rate varchar2(10 char) not null,
	eb_date date not null
);
delete from eurobill where eb_number='';

select * from koreabill;
create sequence koreabill_seq;
create table koreabill(
	kb_number number(8) primary key,
	kb_rate varchar2(10 char) not null,
	kb_date date not null
);
delete from koreabill where kb_number='21';

drop table koreabill cascade constraint;
-----------------------------------------------------------
--가장 최근 일본환율조회
select jb_rate
from japanbill
where jb_number = (
	select max(jb_number)
	from japanbill 
);
--가장 최근 중국환율조회
select cb_rate
from chinabill
where cb_number = (
	select max(cb_number)
	from chinabill 
);
--가장 최근 유로환율조회
select eb_rate
from eurobill
where eb_number = (
	select max(eb_number)
	from eurobill 
);
--가장 최근 원화환율조회
select kb_rate
from koreabill
where kb_number = (
	select max(kb_number)
	from koreabill 
);
---------------------------------------------------환율테이블 다시짜본거
select * from exchange_rate;
create sequence exchange_rate_seq;
create table exchange_rate(
	er_number number(8) primary key,
	er_date date not null,
	er_rate varchar2(10 char) not null,
	er_country varchar2(3char) not null
);
delete from exchange_rate where er_country='EU';
delete from exchange_rate;

------처음 내가 짰던 최신환율조회(실패)
select * 
		from (
			select rownum as rn, er_number, er_date, er_rate, er_country
			from (
				select * 
				from exchange_rate
				order by er_date desc
			)
		)
		order by rn desc;
------------------------------가장 최신 환율만 조회(rateMapper.xml 에서 확인)
select * from exchange_rate
	where er_number = (
		select max(er_number)
			from (
				select *
				from (
					select * 
					from exchange_rate
					where er_country = 'KR'
					order by er_date desc
				)
			) 
	);
----------------------------테스트
select * from exchange_rate
		where er_number = (
			select max(er_number)
				from (
					select *
					from (
						select * 
						from exchange_rate
							where er_country = 'EU'
							order by er_date desc
					)
				) 
		);
-------------------세일조회
select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount 
where p_number=d_pnumber and p_price &gt;= #{p_pricemin} 
and p_price &lt; #{p_pricemax} 
and p_name like '%'||#{p_name}||'%' 
and p_gender like '%'||#{p_gender}||'%' 
and d_discount like '%'||#{d_discount}||'%' 
and p_categoryone like '%'||#{p_categoryone}||'%' 
and p_categorytwo like '%'||#{p_categorytwo}||'%' 
 order by p_number )
) where rm >= 1 and rm <= 30
order by rm desc;
------------------------세일상품조회 (getProduct에서 가져와서 수정)
select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber order by d_discountrate desc)
) where rm >= 1 and rm <= 10
order by rm;

	---매퍼용
select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber order by p_number )
) where rm &lt;= #{start} and rm &gt;= #{end} 
order by rm desc



select * from (
			select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
				from (select * from hk_Product,hk_discount where p_number=d_pnumber order by d_discountrate desc)
				) where rm >= 1 and rm <= 10
			order by rm;

