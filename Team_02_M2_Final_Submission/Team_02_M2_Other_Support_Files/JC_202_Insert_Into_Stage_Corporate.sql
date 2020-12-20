/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Stage_Deal' and type = 'U'))
	begin
		Delete from Stage_Deal;
	end;
go

insert into Stage_Deal(
						WEB_ID,
						DLR_Code,
						DLR_Name,
						DLR_Type,
						DLR_Email,
						DLR_Since,
						DLR_County,
						DLR_Country,
						WEB_URL,
						WEB_Admin,
						WEB_Start_Date
					)
		select 
		distinct WEB_ID,
		DLR_Code,
		DLR_Name,
		DLR_Type,
		DLR_Email,
		DLR_Since,
		DLR_County,
		DLR_Country,
		WEB_URL,
		WEB_Admin,
		WEB_Start_Date

		from Extract_Deal;

go

