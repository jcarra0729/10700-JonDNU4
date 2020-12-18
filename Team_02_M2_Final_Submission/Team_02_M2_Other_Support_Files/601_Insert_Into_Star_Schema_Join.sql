/* to be run in Star Schema*/

if (exists(select * from sysobjects where name = 'DEALER' and type = 'U'))
	begin
		delete from DEALER;
	end;
go


set identity_insert [DEALER] ON;
go

insert into DEALER(DLR_Key,
					DLR_Code,
					DLR_Name,
					DLR_Address,
					DLR_City,
					DLR_County,
					DLR_State,
					DLR_Country,
					DLR_Zip,
					DLR_Authorized_Makes,
					DLR_Independent_Or_Corporate,
					DLR_Email_Address,
					DLR_Initiation_Date,
					DLR_Phone_Number,
					DLR_Official_Website_ID,
					DLR_Official_WebsiteURL,
					DLR_Official_WebsiteAdministrator_Email,
					DLR_Official_Website_Start_Date
					)
			select	DLR_Key,
					a.DLR_Code,
					COALESCE(DLR_CD_Name, DLR_ID_Name),
					DLR_Street,
					DLR_City,
					COALESCE(BR_County, OADR_County),
					DLR_State,
					COALESCE(BR_Country, OADR_Country),
					DLR_Zip,
					c.DLR_Type,
					b.DLR_Type,
					DLR_Email,
					DLR_Since,
					DLR_Phone,
					WEB_ID,
					WEB_URL,
					WEB_Admin,
					WEB_Start_Date
					from	[SEIS732_Team_02_Products].[dbo].[Stage_Deal] a,
							[SEIS732_Team_02_Corporate].[dbo].[Stage_Deal] b,
							[SEIS732_Team_02_Sales_Org].dbo.Stage_Deal c
					where
					a.DLR_Code = b.DLR_Code AND
					b.DLR_Code = c.DLR_Code
					
					;
go

set identity_insert [DEALER] OFF;
go