/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Dealer' and type = 'U'))
	begin
		drop table Stage_Dealer;
	end;
go

create table Stage_Dealer
	(
	DLR_Code	varchar(15)				not null,			
	DLR_Street	varchar(60)				not null,			
	DLR_City	varchar(60)				not null,			
	DLR_State	varchar(60)				not null,			
	DLR_Zip		varchar(45)				not null,						
	DLR_ID		bigint	identity (1,1)	not null, 
	CONSTRAINT PK_Stage_Dealer	PRIMARY KEY CLUSTERED ( DLR_ID ASC)
	);
go
