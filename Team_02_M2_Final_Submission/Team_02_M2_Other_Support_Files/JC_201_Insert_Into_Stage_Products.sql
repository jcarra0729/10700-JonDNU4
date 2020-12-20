/* to be run in Products */

if (exists(select * from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		Delete from Stage_Deal;
	end;
go

insert into Stage_Deal (
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
		from Extract_Deal;
go