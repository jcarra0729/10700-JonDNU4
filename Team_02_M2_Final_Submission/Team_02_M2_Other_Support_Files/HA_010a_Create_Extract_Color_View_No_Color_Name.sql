/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Color_Without_Desc' and type = 'V'))
	begin
		drop view Extract_Color_Without_Desc;
	end;
go


create view Extract_Color_Without_Desc
as
select  distinct
        --s.PRD_MMC_ID                                                  		as    PRD_MMC_ID,
        r.CLR_ID														as	PRD_Color_ID,
		concat ('<No color description for ',r.CLR_ID,'>')			as    PRD_Color_Description,
        concat ('<No color name for ',r.CLR_ID,'>')                        as    PRD_Color_Name,
		s.PRD_Class_Key													as PRD_Class_Key


FROM

Vehicle_Type v,
Stage_Class s,		

RRV_Instance r left outer join Color c ON c.CLR_ID = r.CLR_ID
where c.CLR_ID is null

and

v.VT_ID = r.VT_ID
;

go



