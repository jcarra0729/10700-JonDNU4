/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'IncentiveProgram' and type = 'U'))
	begin
		drop table Stage_IncentiveProgram;
	end;
go

create table Stage_IncentiveProgram
	(
	IP_Type				varchar(15)						not null, 
	IP_Level			varchar(20)						not null,
	IP_Name				varchar(60)						not null,
	IP_Desc				varchar(256)					not null,
	IP_Num_Payments		smallint						not null,
	IP_Rate				numeric(4,2)					not null,
	IP_ID				smallint		identity (1,1)	not null,
	CONSTRAINT PK_Stage_IncentiveProgram	PRIMARY KEY CLUSTERED ( IP_ID ASC)
	);
go
