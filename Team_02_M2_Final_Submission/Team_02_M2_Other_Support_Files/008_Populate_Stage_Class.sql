/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Class' and type = 'U'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Stage_Class failed to load all expected values:'
									   'Table Stage_Class does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go	
			
if (not exists(select name from sysobjects where name = 'Extract_Class' and type = 'V'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Extract_Class failed to load all expected values:'
									   'View Extract_Class does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go

insert into Stage_Class	(							
							
							PRD_Class_Name,	
							PRD_Class_Description,
							MMC_ID
						)
	select		
				
				PRD_Class_Name,
				PRD_Class_Description,
				PRD_MMC_ID				
	from		Extract_Class;
go