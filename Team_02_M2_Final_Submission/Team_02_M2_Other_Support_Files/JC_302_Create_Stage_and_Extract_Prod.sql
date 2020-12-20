/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Stage_Deal_Prod' and type = 'U'))
	begin
		drop table Stage_Deal_Prod;
	end;
go

create table Stage_Deal_Prod
	(DLR_Key		numeric(18,0)	identity(1,1)	not null,
	DLR_Code	varchar(15)	not null,
	DLR_Street	varchar(60) not null,
	DLR_City	varchar(60) not null,
	DLR_State	varchar(60) not null,
	DLR_Zip		varchar(60) not null,
	Constraint PK_Stage_Deal Primary Key Clustered (DLR_Key ASC)
	);
go

if (exists(select name from sysobjects where name = 'Extract_Deal_Prod' and type = 'V'))
	begin
		drop view Extract_Deal_Prod;
	end;
go

create view Extract_Deal_Prod
as
select	DLR_Code as DLR_Code,
		DLR_Street as DLR_Street,
		DLR_City as DLR_City,
		DLR_State as DLR_State,
		DLR_Zip as DLR_Zip
	from [SEIS732_Team_02_Products].dbo.Dealer;
go

if (exists(select * from sysobjects where name = 'Stage_Deal_Prod' and type = 'U'))
	begin
		Delete from Stage_Deal_Prod;
	end;
go

insert into Stage_Deal_Prod (
						DLR_Code,
						DLR_Street,
						DLR_City,
						DLR_State,
						DLR_Zip
					)
		select DLR_Code,
				DLR_Street,
				DLR_City,
				DLR_State,
				DLR_Zip
		from Extract_Deal_Prod;
go
