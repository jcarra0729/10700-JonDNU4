/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select * from sysobjects where name = 'Stage_Color' and type = 'U'))
    begin
        Delete from Stage_Color;
    end;
go

insert into Stage_Color	(														
									
                        PRD_Color_ID			
                        ,PRD_Color_Name			
                        ,PRD_Color_Description
						,PRD_Class_Key
						--,PRD_MMC_ID
										
						)
	select		
							
				PRD_Color_ID			
				,PRD_Color_Name 			
				,PRD_Color_Description
				,PRD_Class_Key
				--,PRD_MMC_ID
		
	from		Extract_Color_Without_Desc;
go

insert into Stage_Color	(														
									
                        PRD_Color_ID			
                        ,PRD_Color_Name			
                        ,PRD_Color_Description
						,PRD_Class_Key
						--,PRD_MMC_ID
										
						)
	select		
							
				PRD_Color_ID			
				,PRD_Color_Name 			
				,PRD_Color_Description
				,PRD_Class_Key
				--,PRD_MMC_ID
		
	from		Extract_Color;
go