create table member(
	사원번호 varchar2(50) not null primary key,
	사원명 varchar2(50) not null,
	직급 varchar2(15) not null,
	상관번호 varchar2(50) not null,
	입사일자 varchar2(100) not null,
	급여 varchar2(50) not null,
	COMM varchar2(50) not null,
	DEPTNO varchar2(50) not null
);