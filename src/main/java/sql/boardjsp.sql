create table member(
	id varchar2(10) not null,			-- id						
	pass varchar2(10) not null,			-- pw
	name varchar2(30) not null,			-- name
	regdate date default sysdate not null, -- 생성날짜
	primary key(id)
) -- 회원용 테이블


create table board(
	num number primary key,			-- 게시물번호(시퀀스)
	title varchar2(200) not null,	-- 제목
	content varchar2(2000) not null,	-- 내용
	id varchar2(10) not null,			-- 작성자 ->member=id
	postdate date default sysdate not null, -- 작성일
	visitcount number(6) 					-- 조회수
)



-- 외래키 설정 ( 부모 member -> 자식 board) 자식에서 설정
alter table board add constraint board_member_fk foreign key(id) references member(id);

-- 시퀀스 설정 ( 자동번호 주입 )
create sequence seq_board_num 
	increment by 1	-- 증가값 1
	start with 1 	-- 시작값 1
	minvalue 1 		-- 최소값 1
	nomaxvalue 		-- 최대값 없음
	nocycle 			-- 반복 없음
	nocache;		-- 미리 만들지 않음
	
drop sequence seq_board_num ;  -- 시퀀스 객체 삭제

--dummy data
insert into member(id, pass, name)
	values ('kkw', '1234', '김기원');
insert into member(id, pass, name)
	values ('mjh', '1234', '문지현');
insert into member(id, pass, name)
	values ('kjs', '1234', '김지선');
insert into member(id, pass, name)
	values ('jyj', '1234', '조용재');
insert into member(id, pass, name)
	values ('lyh', '1234', '이영훈');
insert into member(id, pass, name)
	values ('hse', '1234', '함시은');	

insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목1', '내용1', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목2', '내용2', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목3', '내용3', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목4', '내용4', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목5', '내용5', 'kkw', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount) 
	values(seq_board_num.nextval, '제목6', '내용6', 'kkw', sysdate, 0);	
	
select * from member;

select * from board;

select * from member where id='kkw' and pass='1234';

select count(*) from board where title like '%제목%';

select B.*, M.name from member M inner join board B on M.id = B.id where num=2;

update board set visitcount = visitcount+1 where num=2;

select * from (
				select tb.*, rownum rNum from (
										select * from board order by num desc
												) Tb
				) where rNum between 1 and 10;


create table myfile(
	idx number primary key,
	name varchar2(50) not null,
	title varchar2(200) not null,
	cate varchar2(30),
	ofile varchar2(100) not null,    -- 원본 파일명
	sfile varchar2(100) not null,	 -- 저장 파일명
	postdate date default sysdate not null
);
				
select * from myfile;				
				
drop table myfile;				
				
				
				
				
				
				
				
				
				
				
				
				
				
				