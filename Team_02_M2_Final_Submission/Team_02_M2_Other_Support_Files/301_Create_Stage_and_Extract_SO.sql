/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Stage_Deal_SO' and type = 'U'))
	begin
		drop table Stage_Deal_SO
	end;
go

create table Stage_Deal_SO
	(DLR_Code	varchar(15)	not null,
	DLR_Phone	varchar(20) not null,
	DLR_Type	varchar(30) not null
	);
go

if (exists(select name from sysobjects where name = 'Extract_Deal_SO' and type = 'V'))
	begin
		drop view Extract_Deal_SO;
	end;
go

create view Extract_Deal_SO
as
select	DLR_Code as DLR_Code,
		DLR_Phone as DLR_Phone,
		Case DLR_Type When 'A' then 'All_Makes'
							When 'B' then 'Behemoth'
										else 'Packrat'
				End As DLR_Type
	from [SEIS732_Team_02_Sales_Org].[dbo].[Dealer];
go

if (exists(select * from sysobjects where name = 'Stage_Deal_SO' and type = 'U'))
	begin
		Delete from Stage_Deal_SO;
	end;
go

insert into Stage_Deal_SO (
						DLR_Code,
						DLR_Phone,
						DLR_Type
					)
		select DLR_Code,
				DLR_Phone,
				DLR_Type
		from Extract_Deal_SO;
go
