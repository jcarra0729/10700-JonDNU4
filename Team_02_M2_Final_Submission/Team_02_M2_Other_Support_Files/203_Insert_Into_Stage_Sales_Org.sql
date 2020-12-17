/* to be run in Sales Org */

if (exists(select * from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		Delete from Stage_Deal;
	end;
go

insert into Stage_Deal (
						DLR_Code,
						DLR_Phone,
						DLR_Type
					)
		select DLR_Code,
				DLR_Phone,
				DLR_Type
		from Extract_Deal;
go
