/* to be run in Sales Org */

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
