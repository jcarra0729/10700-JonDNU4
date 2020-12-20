/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Model' and type = 'U'))
	begin
		drop table Stage_Model;
	end;
go

create table Stage_Model
	(
	PRD_Model_Key			smallint identity(1,1)		not null,
	PRD_Model_Name			varchar(40)					not null,
	PRD_Model_Description	varchar(256)				not null,
	PRD_Make_Key			smallint					not null, 
	--PRD_MMC_ID			smallint				not null,
	CONSTRAINT PK_Stage_Model	PRIMARY KEY CLUSTERED (PRD_Model_Key ASC)
	);
go