/* to be run in Sales Org */

if (exists(select name from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		drop table Stage_Deal;
	end;
go

create table Stage_Deal
	(
	DLR_Code	varchar(15)	not null,
	DLR_Phone	varchar(20) not null,
	DLR_Type	varchar(30) not null
	);
go
