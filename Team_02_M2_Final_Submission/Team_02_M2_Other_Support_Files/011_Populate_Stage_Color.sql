/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Color' and type = 'U'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Stage_Color failed to load all expected values:'
									   'Table Stage_Color does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go	
			
if (not exists(select name from sysobjects where name = 'Extract_Color' and type = 'V'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Extract_Color failed to load all expected values:'
									   'View Extract_Color does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go

insert into Stage_Color	(														
									
                        PRD_Color_ID,			
                        PRD_Color_Name,			
                        PRD_Color_Description,
						PRD_Class_Key
										
						)
	select		
							
				PRD_Color_ID,			
				PRD_Color_Name, 			
				PRD_Color_Description 
				PRD_Class_Key
		
	from		Extract_Color;
go