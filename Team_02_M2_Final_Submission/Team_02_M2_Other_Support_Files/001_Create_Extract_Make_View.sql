/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Make' and type = 'V'))
	begin
		drop view Extract_Make;
	end;
go



create view Extract_Make
as
select distinct

	--MMC_ID			as	PRD_MMC_ID,
	MMC_Make_Name	as	PRD_Make_Name,
	MMC_Make_Desc	as	PRD_Make_Description
	

from MMC;

go