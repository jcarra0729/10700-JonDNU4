/* to be run in Corporate */

if (exists(select * from sysobjects where name = 'Extract_Deal' and type = 'V'))
	begin
		drop view Extract_Deal;
	end;
go

create view Extract_Deal
as
select	w.WEB_ID	as WEB_ID,
		DLR_Code	as DLR_Code,
		CD_Name	as DLR_CD_Name,
		ID_Name	as DLR_ID_Name,
		DLR_Type	as DLR_Type,
		DLR_Email	as DLR_Email,
		DLR_Since	as DLR_Since,
		BR_County	as BR_County,
		OADR_County as OADR_County,
		BR_Country	as BR_Country,
		OADR_Country as OADR_Country,
		WEB_URL		as WEB_URL,
		WEB_Admin	as WEB_Admin,
		WEB_Start_Date	as WEB_Start_Date
	from Dealership d left outer Join Branch b on d.BR_ID = b.BR_ID 
						left outer join Website w on w.WEB_ID = d.WEB_ID
						left outer join Owner_Address oa on oa.OADR_ID = d.OADR_ID
		;
go
