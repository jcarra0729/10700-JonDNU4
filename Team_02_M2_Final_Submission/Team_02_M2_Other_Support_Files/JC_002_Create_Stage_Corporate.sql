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
	DLR_Name	varchar(256) null,
	DLR_Type	varchar(11) not null,
	DLR_Email	varchar(256) null,
	DLR_Since	datetime null,
	DLR_County	varchar(60) null,
	DLR_Country	varchar(60) null,
	WEB_URL		varchar(256) null,
	WEB_Admin	varchar(256) null,
	WEB_Start_Date	datetime null
	);
go
