if (exists(select * from sysobjects where name = 'Stage_Class' and type = 'U'))
    begin
        Delete from Stage_Class;
    end;
go
insert into Stage_Class	(							
							
							PRD_Class_Description
							,PRD_MMC_ID
							,PRD_Class_Name
							,PRD_Model_Key
						)
	select	distinct	
				
				PRD_Class_Description
				,PRD_MMC_ID
				,PRD_Class_Name
				,PRD_Model_Key
				
	from		Extract_Class;
go