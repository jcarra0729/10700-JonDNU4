/* to be run in Products */

if (exists(select name from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		drop table Stage_Deal;
	end;
go

create table Stage_Deal
	(
	DLR_Code	varchar(15)	not null,
	DLR_Street	varchar(60) not null,
	DLR_City	varchar(60) not null,
	DLR_State	varchar(60) not null,
	DLR_Zip		varchar(60) not null
	);
go
