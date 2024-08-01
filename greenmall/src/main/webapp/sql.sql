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

-- 옵션(goodsOption) 5
create table goodsOption (
optionNum number primary key,			--옵션번호(PK)
p_no number,							--상품 번호(FK)
o_name VARCHAR2(20),					--옵션명
o_price number,							--옵션가격
o_sale number,							--옵션할인율
o_cnt number,							--옵션갯수
foreign key(p_no) references goods(p_no)
);

-- 주문상세(detailorder) 6
create table detailorder (
orderDetKey number primary key,       -- 상세주문 번호(PK)
b_Num number,                    	  -- 주문 번호(FK)
p_no number,                          -- 상품 번호(FK)
optionNum number,					  -- 옵션번호(FK)
price number,                         -- 가격
d_cnt number,						  -- 개수
foreign key(b_Num) references buy(b_Num),
foreign key(p_no) references goods(p_no),
foreign key(optionNum) references goodsOption(optionNum)
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
optionNum number,				  -- 옵션번호(FK)
m_id VARCHAR2(20),                -- 회원 번호(FK)
c_cnt number,					  -- 수량
foreign key(p_no) references goods(p_no),
foreign key(m_id) references member(m_id),
foreign key(optionNum) references goodsOption(optionNum)
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
