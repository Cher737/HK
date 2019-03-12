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
and p_name like '%%'
and p_gender like '%%'
and d_discount like '%%'
and p_categoryone like '%%'
and p_categorytwo like '%%'
 order by p_number )
) where rm >= 1 and rm <= 15 
order by rm desc;

insert into hk_Product values(
hk_Product_seq.nextval,'어번 블루 디톡스 클레이 마스크',26,'http://www.dootadutyfree.com/static_root/product_img/0000164/000016431_001_1_3.jpg?1031',
'화장품/향수','스킨케어','LAB SERIES','남성',0);
select * from hk_product where p_number = (select max(p_number) from hk_product)