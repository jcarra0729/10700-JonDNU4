/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Make' and type = 'U'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Stage_Make failed to load all expected values:'
									   'Table Stage_Make does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go	
			
if (not exists(select name from sysobjects where name = 'Extract_Make' and type = 'V'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Extract_Make failed to load all expected values:'
									   'View Extract_Make does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go

insert into Stage_Make	(																
							PRD_Make_Name,	
							PRD_Make_Description,
							MMC_ID
						)
	select			
	        PRD_Make_Name,		
		    PRD_Make_Description,
			PRD_MMC_ID
	from	Extract_Make;
go