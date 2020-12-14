/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Customer' and type = 'U'))
	begin
		drop table Stage_Customer;
	end;
go

create table Stage_Customer
	(
	CUST_FNAME		varchar(30)				not null,			
	CUST_MNAME		varchar(30)				not null,			
	CUST_LNAME		varchar(60)				not null,			
	CUST_ADDR		varchar(60)				not null,			
	CUST_CITY		varchar(45)				not null,			
	CUST_COUNTY		varchar(60)				not null,			
	CUST_STATE		varchar(2)				not null,		
	CUST_COUNTRY	varchar(60)				not null,			
	CUST_ZIP		varchar(10)				not null,			
	CUST_HOME		varchar(20)				not null,			
	CUST_WORK		varchar(20)				not null,			
	CUST_CELL		varchar(20)				not null,			
	CUST_ID			bigint	identity (1,1)	not null, 
	CONSTRAINT PK_Stage_Customer	PRIMARY KEY CLUSTERED ( CUST_ID ASC)
	);
go
