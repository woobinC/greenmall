select * from
		(select a.* ,rowNum rn from(select g.*,c.c_Name from goods g, category c where g.c_Num=c.c_Num  and g.c_Num=101 order by p_no) a)
		where rn between 1 and 8; 


create user greenmall identified by g1234;
grant dba to greenmall;
=======
--create user greenmall identified by g1234;
--grant dba to greenmall;

drop sequence basket_seq;
drop sequence order_seq;
drop sequence reply_seq;
drop sequence detailorder_seq;
drop sequence goods_seq;
drop sequence memberaddress_seq;
drop sequence notification_seq;
drop sequence order_seq;
drop sequence review_seq;
drop sequence wish_seq;

drop table notification;
drop table admin;
drop table reply;
drop table review;
drop table memberaddress;
drop table basket;
drop table wish;
drop table detailorder;
drop table goodsOption;
drop table goods;
drop table category;
drop table buy;
drop table member;

select * from member;
select * from member where m_id = 'qwe';
select * from member where m_name = 'test2' and m_email = 'test2@test2.com';

delete from buy;
-- 회원(member) 1
create table member (
m_id VARCHAR2(20) primary key,   	 	-- 회원 번호(PK)
m_pw VARCHAR2(20),           		 	-- 비밀번호
m_email VARCHAR2(30),               	-- 이메일
m_name VARCHAR2(20),                	-- 이름
m_tel VARCHAR2(20),                 	-- 전화번호
m_postCode varchar2(20),				-- 우편번호
m_addr VARCHAR2(100),             		-- 주소
m_addrDe VARCHAR2(100),            		-- 상세주소
mileage number,                  		-- 마일리지
m_del char(1) default 'n',              -- 탈퇴여부
m_rdate date,		             		-- 가입 날짜
);
select * from goods;
select * from category;
-- 주문(buy) 2
create table buy (
b_num number primary key,     			-- 주문번호(PK)
m_id VARCHAR2(20),                 		-- 회원번호(FK)
totalPrice number,               		-- 총 결제 금액
b_rdate date,                      		-- 주문 날짜
b_Satus VARCHAR2(20),        			-- 주문 현황
b_name VARCHAR2(20),               		-- 받는분 성함
b_postCode varchar2(20),				-- 우편번호
b_addr VARCHAR2(100),           		-- 받는분 주소
b_addrDe VARCHAR2(50),           		-- 상세 주소
b_tel VARCHAR2(20),             		-- 받는분 전화번호
b_request VARCHAR2(50),     			-- 요청사항
b_cnt number,							-- 주문 상품 개수
foreign key(m_id) references member(m_id)
);
	
-- 주문(buy) 2 시퀀스
create sequence order_seq start with 1 increment by 1 maxvalue 9999;

-- 카테고리 (category) 3
drop table category cascade constraints;
create table category (
c_Num number primary key,				--카테고리번호
c_Name VARCHAR2(20)						--카테고리명
);
>>>>>>> branch 'main' of https://github.com/woobinC/greenmall.git

create table category (
c_num number primary key,				--카테고리번호
c_name varchar2(100)							--카테고리명 	
);
select * from CATEGORY;
--update category set c_num=101 where c_name='쌀';
--truncate table category cascade constraints;
select * from goods;
-- 상품(goods) 4 
create table goods (
p_no number primary key,			  -- 상품 번호(PK)
c_Num number,						  -- 카테고리 번호(FK)
p_name VARCHAR2(20),        		  -- 상품명
p_price number,            			  -- 가격
p_sale number,             		  	  -- 할인율
p_img1 VARCHAR2(50),       			  -- 이미지1
p_img2 VARCHAR2(50),       		 	  -- 이미지2
p_cnt number,               		  -- 수량
p_date date,						  -- 등록일
foreign key(c_Num) references category(c_Num)
);
-- 상품(goods) 4 시퀀스
create sequence goods_seq start with 1 increment by 1 maxvalue 9999;

-- 주문상세(detailorder) 6
create table detailorder (
orderDetKey number primary key,       -- 상세주문 번호(PK)
b_Num number,                    	  -- 주문 번호(FK)
p_no number,                          -- 상품 번호(FK)
price number,                         -- 가격
d_cnt number,						  -- 개수
foreign key(b_Num) references buy(b_Num),
foreign key(p_no) references goods(p_no)
);
-- 주문상세(detailorder) 6 시퀀스
create sequence detailorder_seq start with 1 increment by 1 maxvalue 9999;

-- 찜(wish) 7
create table wish (
wishKey number primary key,      -- 찜 고유번호(PK)
p_no number,                     -- 상품 번호(FK)
m_id VARCHAR2(20),				 -- 회원 번호(FK)
foreign key(p_no) references goods(p_no),
foreign key(m_id) references member(m_id)
);
-- 찜(wish) 7 시퀀스
create sequence wish_seq start with 1 increment by 1 maxvalue 9999;

-- 장바구니(basket) 8
create table basket (
cartKey number primary key,       -- 장바구니 번호(PK)
p_no number,                      -- 상품 번호(FK)
m_id VARCHAR2(20),  			  -- 회원 ID
c_price number,					  -- 가격
c_cnt number,					  -- 수량
foreign key(p_no) references goods(p_no),
foreign key(m_id) references member(m_id)
);
-- 장바구니(basket) 8 시퀀스
create sequence basket_seq start with 1 increment by 1 maxvalue 9999;

-- 회원 배송지(memberaddress) 9
create table memberaddress (
addrNum number primary key,       	-- 배송지 코드(PK)
m_id VARCHAR2(20),               	-- 회원 번호(FK)
a_name VARCHAR2(20),                -- 받는분 성함
a_postcode VARCHAR2(50),            -- 우편번호
a_addr VARCHAR2(100),            	-- 받는분 주소
a_addrDe VARCHAR2(20),              -- 상세 주소
a_request VARCHAR2(50),        		-- 요청사항
basicAddr char(1)					-- 기본 배송지 여부
foreign key(m_id) references member(m_id)
);
-- 회원 배송지(memberaddress) 9 시퀀스
create sequence memberaddress_seq start with 1 increment by 1 maxvalue 9999;

-- 문의 및 후기 (review) 10
create table review (
boardKey number primary key,       -- 게시글 번호(PK)
m_id VARCHAR2(20),                 -- 회원 번호(FK)
p_no number,                       -- 상품 번호(FK)
r_kind VARCHAR2(20),               -- 종류
r_title VARCHAR2(20),              -- 제목
r_rdate date,                      -- 등록일
r_content VARCHAR2(100),           -- 내용
scope number,					   -- 별점
foreign key(m_id) references member(m_id),
foreign key(p_no) references goods(p_no)
);
-- 문의 및 후기 (review) 10 시퀀스
create sequence review_seq start with 1 increment by 1 maxvalue 9999;

-- 댓글 (reply) 11
create table reply (
replyKey number primary key,        -- 댓글 번호(PK)
boardKey number,                    -- 게시글 번호(FK)
m_id VARCHAR2(20),                  -- 회원 번호(FK)
re_level number,                    -- 답글 레벨
re_step number,                     -- 답글 스텝
re_content VARCHAR2(100),           -- 내용
re_rdate date,                      -- 등록일
re_del char(1) default 'n',			-- 삭제 여부
foreign key(boardKey) references review(boardKey),
foreign key(m_id) references member(m_id)
);
-- 댓글 (comment) 11 시퀀스
create sequence reply_seq start with 1 increment by 1 maxvalue 9999;

-- 관리자 (admin) 12
create table admin (
adminId VARCHAR2(20) primary key,    -- 관리자 아이디(PK)
adminPw VARCHAR2(20)	             -- 관리자 비밀번호
);

-- 공지번호 (notification) 13
create table notification (
noticeKey number primary key,        -- 공지번호(PK)
adminId VARCHAR2(20),                -- 관리자 아이디(FK)
n_title VARCHAR2(20),                -- 제목
n_content VARCHAR2(100),             -- 내용
n_rdate date,                        -- 등록일
hit number,							 -- 조회수
foreign key(adminId) references admin(adminId)
);
-- 공지번호 (notice) 13 시퀀스
create sequence notification_seq start with 1 increment by 1 maxvalue 9999;

select * from member;
select * from buy;
select * from admin;
select * from category;
select * from goods;
select * from basket;
select * from member where m_id = 'qwe';

insert into admin values('master', '1234');

insert into category values('101', '쌀');
insert into category values('102', '잡곡류');
insert into category values('200', '버섯류');
insert into category values('301', '사과');
insert into category values('302', '배');
insert into category values('303', '딸기');
insert into category values('304', '기타');
insert into category values('401', '뿌리채소');
insert into category values('402', '열매채소');
insert into category values('403', '잎줄기채소');
insert into category values('404', '콩류');
insert into category values('405', '기타');
insert into category values('501', '건강즙');
insert into category values('502', '환/분말/차');
insert into category values('503', '꿀');
insert into category values('504', '반찬류/간식류');
insert into category values('505', '기타');

insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test','test','test@test.com','테스트','01011111100','15500','경기도 안산시','고잔동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test1','test1','test1@test1.com','테스트1','01011111101','15501','경기도 안산시','사동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test2','test2','test@test2.com','테스트2','01011111102','15502','경기도 안산시','이동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test3','test3','test@test3.com','테스트3','01011111103','15503','경기도 안산시','일동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test4','test4','test4@test4.com','테스트4','01011111104','15504','경기도 안산시','와동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test5','test5','test5@test5.com','테스트5','01011111105','15505','경기도 안산시','선부동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test6','test6','test6@test6.com','테스트6','01011111106','15506','경기도 안산시','본오동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test7','test7','test7@test7.com','테스트7','01011111107','15507','경기도 안산시','월피동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test8','test8','test8@test8.com','테스트8','01011111108','15508','경기도 안산시','성포동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test9','test9','test9@test9.com','테스트9','01011111109','15509','경기도 안산시','원곡동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test10','test10','test10@test.com10','테스트10','01011111110','15510','경기도 안산시','사이동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test11','test11','test11@test11.com','테스트11','01011111111','15511','경기도 안산시','해양동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test12','test12','test12@test12.com','테스트12','01011111112','15512','경기도 안산시','부곡동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test13','test13','test13@test13.com','테스트13','01011111113','15513','경기도 안산시','호수동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test14','test14','test14@test14.com','테스트14','01011111114','15514','경기도 안산시','신길동',sysdate);
insert into member(m_id,m_pw,m_email,m_name,m_tel,m_postCode,m_addr,m_addrDe,m_rdate) 
values ('test15','test15','test15@test15.com','테스트15','01011111115','15515','경기도 안산시','반월동',sysdate);

insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
insert into goods values (goods_seq.nextval, 102, '테스트상품', 15000, 10,
	'0.jpg', '1.jpg', 50, sysdate);
	
insert into buy values (order_seq.nextval, 'test1', 10000, sysdate, '배송중', '테스트1' , '15501' ,'경기도 안산시','고잔동', '01011111100', '없음', 1);
insert into buy values (order_seq.nextval, 'test2', 20000, sysdate, '배송중', '테스트2' , '15502' ,'경기도 안산시','고잔동', '01011111102', '없음', 11);
insert into buy values (order_seq.nextval, 'test3', 30000, sysdate, '배송중', '테스트3' , '15503' ,'경기도 안산시','고잔동', '01011111103', '없음', 12);
insert into buy values (order_seq.nextval, 'test4', 40000, sysdate, '배송중', '테스트4' , '15504' ,'경기도 안산시','고잔동', '01011111104', '없음', 13);
insert into buy values (order_seq.nextval, 'test5', 50000, sysdate, '배송중', '테스트5' , '15505' ,'경기도 안산시','고잔동', '01011111105', '없음', 14);
insert into buy values (order_seq.nextval, 'test6', 60000, sysdate, '배송중', '테스트6' , '15506' ,'경기도 안산시','고잔동', '01011111106', '없음', 15);
insert into buy values (order_seq.nextval, 'test7', 70000, sysdate, '배송중', '테스트7' , '15507' ,'경기도 안산시','고잔동', '01011111107', '없음', 16);
insert into buy values (order_seq.nextval, 'test8', 80000, sysdate, '배송중', '테스트8' , '15508' ,'경기도 안산시','고잔동', '01011111108', '없음', 17);
insert into buy values (order_seq.nextval, 'test9', 90000, sysdate, '배송중', '테스트9' , '15509' ,'경기도 안산시','고잔동', '01011111109', '없음', 18);
insert into buy values (order_seq.nextval, 'test10', 100000, sysdate, '배송중', '테스트10' , '15510' ,'경기도 안산시','고잔동', '01011111110', '없음', 119);
insert into buy values (order_seq.nextval, 'test11', 110000, sysdate, '배송중', '테스트11' , '15511' ,'경기도 안산시','고잔동', '01011111111', '없음', 100);
insert into buy values (order_seq.nextval, 'test12', 120000, sysdate, '배송중', '테스트12' , '15512' ,'경기도 안산시','고잔동', '01011111112', '없음', 166);
insert into buy values (order_seq.nextval, 'test13', 130000, sysdate, '배송중', '테스트13' , '15513' ,'경기도 안산시','고잔동', '01011111113', '없음', 145);
insert into buy values (order_seq.nextval, 'test14', 140000, sysdate, '배송중', '테스트14' , '15514' ,'경기도 안산시','고잔동', '01011111114', '없음', 121);
insert into buy values (order_seq.nextval, 'test15', 150000, sysdate, '배송중', '테스트15' , '15515' ,'경기도 안산시','고잔동', '01011111115', '없음', 10);
