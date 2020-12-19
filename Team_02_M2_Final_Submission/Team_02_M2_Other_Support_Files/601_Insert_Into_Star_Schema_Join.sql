if (exists(select * from sysobjects where name = 'Final_Extract_Deal' and type = 'V'))
	begin
		drop view Final_Extract_Deal;
	end
go

Create View Final_Extract_Deal
as
select	a.DLR_Code as DLR_Code, 
		a.DLR_Name as DLR_Name, 
		b.DLR_Street as DLR_Address, 
		b.DLR_City as DLR_City, 
		a.DLR_County as DLR_County, 
		b.DLR_State as DLR_State, 
		a.DLR_Country as DLR_Country, 
		b.DLR_Zip as DLR_Zip, 
		a.DLR_Authorized_Makes as DLR_Authorized_Makes, 
		c.DLR_Independent_Or_Corporate as DLR_Independent_Or_Corporate, 
		a.DLR_Email_Address as DLR_Email_Address, 
		a.DLR_Initiation_Date as DLR_Initiation_Date,
		c.DLR_Phone_Number as DLR_Phone_Number, 
        a.DLR_Official_Website_ID as DLR_Official_Website_ID, 
		a.DLR_Official_WebsiteURL as DLR_Official_WebsiteURL, 
		a.DLR_Official_WebsiteAdministrator_Email as DLR_Official_WebsiteAdministrator_Email, 
		a.DLR_Official_Website_Start_Date as DLR_Official_Website_Start_Date
FROM					Stage_Deal a,
						Stage_Deal_Prod b,
						Stage_Deal_SO c
where a.DLR_Code = b.DLR_Code
		and
		b.DLR_Code = c.DLR_Code;
go