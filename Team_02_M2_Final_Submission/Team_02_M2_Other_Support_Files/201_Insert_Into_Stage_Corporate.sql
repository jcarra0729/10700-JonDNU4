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