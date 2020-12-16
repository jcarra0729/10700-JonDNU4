/* to be run in Products*/

set identity_insert [dbo].[DEALER] ON;
go

insert into [DEALER](DLR_Code,
					DLR_Address,
					DLR_City,
					DLR_State,
					DLR_Zip
					)
			select	DLR_Code,
					DLR_Street,
					DLR_City,
					DLR_State,
					DLR_Zip
					from [SEIS732_Team_02_Products].[dbo].[Stage_Deal];
go

set identity_insert [dbo].[DEALER] OFF;
go