/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Color' and type = 'V'))
	begin
		drop view Extract_Color;
	end;
go


create view Extract_Color
as
select  distinct
        --v.MMC_ID                                                  	as		PRD_MMC_ID,
        r.CLR_ID														as		PRD_Color_ID,
		c.CLR_Description												as		PRD_Color_Description,
        c.CLR_Name														as		PRD_Color_Name,
		s.PRD_Class_Key													as		PRD_Class_Key


FROM

Vehicle_Type v,
Stage_Class s,		

RRV_Instance r INNER JOIN Color c ON c.CLR_ID = r.CLR_ID

where 

v.VT_ID = r.VT_ID
--and s.PRD_MMC_ID = v.MMC_ID
;

go


;

go
