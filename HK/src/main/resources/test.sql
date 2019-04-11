create table hk_Product(
p_number number(8) primary key,
p_name varchar2(100 char) not null,
p_price number(8) not null,
p_img varchar2(200 char) not null,
p_categoryone varchar2(20 char) not null,
p_categorytwo varchar2(20 char) not null,
p_brand varchar2(50 char) not null,
p_gender varchar2(2 char) not null,
p_avgscore number(2) not null
);
select * from hk_Product order by p_number desc
select * from HK_DISCOUNT order by d_pnumber desc

select * from Hk_discount where d_discountrate > 40

update Hk_discount
set d_discountrate = 40
where d_discountrate > 40

update  HK_Product
set p_categorytwo = '지갑'
where p_number = 463

select distinct p_name from hk_Product where 
select distinct p_name from test123 where 	
delete from hk_Product 
where rowid> (select min(rowid) from hk_Product
where p_name=p_name)

insert into hk_product
SELECT *
FROM hk_Product
AS OF TIMESTAMP(SYSTIMESTAMP - INTERVAL '11' MINUTE);



create table test123(
p_number number(8) primary key,
p_name varchar2(100 char) not null
)
insert into test123 values( 3,'김치');
select * from test123
update HK_DISCOUNT
set d_pnumber = 13
where D_pnumber = 13 and d_number = 13


create table hk_discount(
d_number number(8) primary key,
d_pnumber number(8) not null,
d_discount char(1) not null,
d_discountrate number(3) not null
)

create sequence hk_discount_seq;

insert into hk_discount values(
hk_discount_seq.nextval,30,'y',70);

create sequence hk_Product_seq;
insert into hk_Product values(
hk_Product_seq.nextval,'Classic Petite Melrose White 28mm',161,
'http://image2.shilladfs.com/files/product/2018/05/16/119722000493_20180516_11403400_07_119722000493_1.JPG',
'시계/주얼리','시계','다니엘웰링턴','여성',4.0);
insert into hk_Product values(
hk_Product_seq.nextval,'Rosegold / Emma Collection White',84,
'http://image2.shilladfs.com/files/product/2018/09/10/755422000006_20180910_09562391_07_755422000006_1.JPG',
'시계/주얼리','시계','폴바이스','여성',3.5);
insert into hk_Product values(
hk_Product_seq.nextval,'WATCH(여성용)',499,
'http://image2.shilladfs.com/files/product/2016/06/28/072622000173_20160628_10262914_07_072622000173_1.JPG',
'시계/주얼리','시계','로즈몽/ROSEMONT','여성',4.5);
insert into hk_Product values(
hk_Product_seq.nextval,'Rosegold / Emma Collection White',84,
'http://image2.shilladfs.com/files/product/2018/09/10/755422000006_20180910_09562391_07_755422000006_1.JPG',
'시계/주얼리','시계','폴바이스','여성',3.5);
insert into hk_Product values(
hk_Product_seq.nextval,'WATCH(여성용)',499,
'http://image2.shilladfs.com/files/product/2016/06/28/072622000173_20160628_10262914_07_072622000173_1.JPG',
'시계/주얼리','시계','로즈몽/ROSEMONT','여성',4.5);
insert into hk_Product values(
hk_Product_seq.nextval,'Classic Petite Melrose White 28mm',161,
'http://image2.shilladfs.com/files/product/2018/05/16/119722000493_20180516_11403400_07_119722000493_1.JPG',
'시계/주얼리','시계','다니엘웰링턴','여성',4.0);

drop table hk_Product cascade constraint purge;
drop table hk_discount cascade constraint purge;

select * 
from hk_product 
where p_number >= 1 and p_number <= 5

select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber and p_name like '%Class%' order by p_number )
) where rm >= 1 and rm <= 30 
order by rm desc

select count(*) from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber and p_price <50 and p_price >10 order by p_number )
) 
order by rm desc


select count(*) from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber and '%White%' order by p_number )
)
order by rm desc

select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber and p_price >= 100 and p_price <300)
) where rm >= 1 and rm <= 15
order by rm desc

select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount where p_number=d_pnumber and p_price >= 0 and p_price <500 and p_name like '%%' and p_gender like '%%' and d_discount like '%%' )
) where rm >= 1 and rm <= 15
order by rm desc

select * from (
select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
from (select * from hk_Product,hk_discount 
where p_number=d_pnumber and p_price >= 0 
and p_price < 50000 
and (p_name like '%리%'
or p_brand like '%리%')
and (p_name like '%뉴%'
or p_brand like '%뉴%')
and p_gender like '%%'
and d_discount like '%%'
and p_categoryone like '%%'
and p_categorytwo like '%%'
 order by p_number )
) where rm >= 1 and rm <= 15 
order by rm desc;

select * from HK_PRODUCT
where p_brand like '%리%' 

select * from HK_PRODUCT
where p_name like '%리%'

select * from HK_PRODUCT
where p_brand like '%가방%' or p_name like '%가방%'


insert into hk_Product values(
hk_Product_seq.nextval,'어번 블루 디톡스 클레이 마스크',26,'http://www.dootadutyfree.com/static_root/product_img/0000164/000016431_001_1_3.jpg?1031',
'화장품/향수','스킨케어','LAB SERIES','남성',0);
select * from hk_product where p_number = (select max(p_number) from hk_product)


create table hk_point(
pt_number number(8) primary key,
pt_id varchar2(15 char) not null,
pt_txt varchar2(50 char) not null,
pt_point number(8) not null,
pt_date date not null,
pt_code varchar2(5 char) not null
);

select * from hk_point

drop table hk_point cascade constraint purge;
create sequence hk_point_seq;

create table hk_search(
s_number number(8) primary key,
s_word varchar(30char) not null,
s_frequency number(8) not null
);
select* from hk_search
create sequence hk_search_seq;
drop table hk_search cascade constraint purge;
select * from hk_search 
where 

select * from (
select rownum as rm, s_word,s_frequency
from (select * from hk_search order by s_frequency desc)
) where rm >= 1 and rm <= 10
order by rm

create table hk_regcoupon(
r_number varchar2(30char) primary key,
r_name varchar2 (40char) not null,
r_amount number(6) not null,
r_exp Date not null,
r_used varchar2 (1char) not null
)

create table hk_usecoupon(
uc_number number(8) primary key,
uc_rnumber varchar2 (30char) not null,
uc_name varchar2 (40char)  not null,
uc_discount number(6) not null,
uc_discountrate number(3) not null,
uc_id varchar2 (15char) not null,
uc_used varchar2 (1char) not null,
uc_exp Date not null
)
create sequence hk_usecoupon_seq;
drop table hk_regcoupon cascade constraint purge;

select * from hk_regcoupon
select * from hk_usecoupon

update hk_usecoupon
set uc_used = 'x'
where uc_id ='Kjun'

create table hk_Bucket(
bk_number number(8) primary key,
bk_id varchar2 (15char) not null,
bk_pnumber number(8) not null
)
select * from hk_Bucket
create sequence hk_bucket_seq;
select * from hk_Product,hk_discount 
where p_number=d_pnumber and p_number = 80

select * from hk_Product,hk_discount,hk_Bucket
where p_number = bk_pnumber and p_number = d_pnumber and bk_id = #{bk_id};

create table hk_buylist(
b_buycode varchar2 (50char) primary key,
b_id varchar2 (15char) not null,
b_date date not null,
b_pay varchar2(15 char) not null,
b_payment number(8) not null,
b_ucnumber number(8) not null,
b_ucdiscount number(8) not null,
b_ptnumber number(8) not null,
b_ptdiscount number(8) not null,
b_ugrade number(3) not null,
b_udiscount number(8) not null
)

create table hk_buydetail(
bd_number number(8) primary key,
bd_bbuycode varchar2 (50char) not null,
bd_receive varchar2 (2char) not null,
bd_pnumber number(8) not null,
bd_payment number(8) not null,
bd_count number(2) not null
)

create sequence hk_buydetail_seq;


drop table hk_buydetail cascade constraint purge;
select * from hk_usecoupon
select * from hk_buylist
select * from hk_usecoupon where uc_id = 'test' and uc_name = 'Test'

update  hk_usecoupon
set uc_used = 'o'
where uc_number =  41

update HK_USER
set u_point = 300000
where u_id = 'Kjun'
select* from hk_user
select * from hk_point where pt_id = 'test' order by pt_date

insert into hk_point values(
hk_point_seq.nextval,'Kjun','이벤트',50000, sysdate, '00001'
)

select * from hk_point where pt_number = (
select max(pt_number) from hk_point  where pt_id = 'test1') 


select * from hk_buydetail,hk_product,hk_discount
where p_number = bd_pnumber and bd_pnumber = d_pnumber and  bd_bbuycode = 'merchant_1554721089853'


select * from hk_buylist
where b_buycode = (select b_buycode from (
select rownum as rm, b_buycode
from (select * from hk_buylist where b_id = 'test' order by b_date desc)
) where rm = 1)
select * from hk_point
insert into hk_buydetail values(
hk_buydetail_seq.nextval,'bsfdf23123123123','x',86
,250067,1)


select * from (
			select rownum as rm, p_number, p_name, p_price,p_img,p_categoryone,p_categorytwo,p_brand,p_gender,p_avgscore,d_discount,d_discountrate
				from (select * from hk_Product,hk_discount where p_number=d_pnumber and p_categoryone = '화장품/향수'  order by p_avgscore desc)
				) where rm >= 1 and rm <= 10
			order by rm