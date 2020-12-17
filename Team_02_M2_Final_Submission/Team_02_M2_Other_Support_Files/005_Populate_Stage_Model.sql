/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Model' and type = 'U'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Stage_Model failed to load all expected values:'
									   'Table Stage_Model does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go	
			
if (not exists(select name from sysobjects where name = 'Extract_Model' and type = 'V'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Extract_Model failed to load all expected values:'
									   'View Extract_Model does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go

insert into Stage_Model	(
	
							PRD_Model_Name,	
							PRD_Model_Description,
							MMC_ID
									
						)
	select				
		        PRD_Model_Name,	
	            PRD_Model_Description,
				PRD_MMC_ID
	
	from		Extract_Model;
go