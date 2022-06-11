create table if not exists member(
	name varchar(10),
	RRN int,
	ID varchar(16) primary key,
	PW varchar(10),
	phonenum varchar(20),
	license varchar(5)
);

create table if not exists cars(
	ID varchar(16) ,
	car_name varchar(10) primary key,
	fuel varchar(5),
	type varchar(5),
	gear varchar(5),
	drive_price int,
	options varchar(2) default '1'
);

create table if not exists opt(
	options varchar(2) default '1',
	one varchar(10)	default '������',
	two varchar(10) default '������Ʈ',
	three varchar(10) default 'AUX/USB',
	four varchar(10) default '�������',
	five varchar(10) default '������̼�'
);

insert into cars(ID,car_name,fuel,type,gear,drive_price) values('coruddnjs','����','���ָ�','����SUV','�ڵ�9��',500);
	
insert into opt(options) values('1');