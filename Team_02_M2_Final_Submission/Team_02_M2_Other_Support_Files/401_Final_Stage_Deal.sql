/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Final_Stage_Deal' and type = 'U'))
	begin
		drop table Final_Stage_Deal;
	end;
go

create table Final_Stage_Deal(
		DLR_Key		numeric(18,0)	identity(1,1)	not null,
		DLR_Code	varchar(15)	not null,
		DLR_Name	varchar(256) not null,
		DLR_Address	varchar(256) not null,
		DLR_City	varchar(60) not null,
		DLR_County	varchar(60) not null,
		DLR_State	varchar(2) not null,
		DLR_Country	varchar(60) not null,
		DLR_Zip		varchar(10) not null,
		DLR_Authorized_Makes	varchar(30) not null,
		DLR_Independent_Or_Corporate	varchar(11) not null,
		DLR_Email_Address	varchar(256) not null,
		DLR_Initiation_Date datetime not null,
		DLR_Phone_Number	varchar(30) not null,
		DLR_Official_Website_ID smallint not null,
		DLR_Official_WebsiteURL	varchar(256) not null,
		DLR_Official_WebsiteAdministrator_Email	varchar(256) not null,
		DLR_Official_Website_Start_Date	datetime not null);
go

if (exists(select * from sysobjects where name = 'Final_Stage_Deal' and type = 'U'))
	begin
		delete from Final_Stage_Deal;
	end;
go

set identity_insert Final_Stage_Deal ON;
go


insert into [dbo].[Final_Stage_Deal](
					DLR_Key,
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
					select 
					DLR_Key,
					a.DLR_Code,
					DLR_Name,
					DLR_Street,
					DLR_City,
					DLR_County,
					DLR_State,
					DLR_Country,
					DLR_Zip,
					a.DLR_Type,
					c.DLR_Type,
					DLR_Email,
					DLR_Since,
					DLR_Phone,
					WEB_ID,
					WEB_URL,
					WEB_Admin,
					WEB_Start_Date
					from	Stage_Deal a,
							Stage_Deal_Prod b,
							Stage_Deal_SO c
					where
					a.DLR_Code = b.DLR_Code AND
					b.DLR_Code = c.DLR_Code
go

set identity_insert Final_Stage_Deal OFF;
go
