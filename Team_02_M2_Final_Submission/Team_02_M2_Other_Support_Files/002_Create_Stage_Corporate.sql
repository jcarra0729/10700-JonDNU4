/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		drop table Stage_Deal;
	end;
go

create table Stage_Deal
	(
	WEB_ID		smallint null,
	DLR_Code	varchar(15)	null,
	DLR_CD_Name	varchar(60) null,
	DLR_ID_Name	varchar(256) null,
	DLR_Type	varchar(1) null,
	DLR_Email	varchar(256) null,
	DLR_Since	datetime null,
	BR_County	varchar(60) null,
	OADR_County	varchar(60) null,
	BR_Country	varchar(60) null,
	OADR_Country	varchar(60) null,
	WEB_URL		varchar(256) null,
	WEB_Admin	varchar(256) null,
	WEB_Start_Date	datetime null
	);
go
