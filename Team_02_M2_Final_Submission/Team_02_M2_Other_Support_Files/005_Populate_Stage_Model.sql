if (exists(select * from sysobjects where name = 'Stage_Model' and type = 'U'))
    begin
        Delete from Stage_Model;
    end;
go
insert into Stage_Model	(
	
							PRD_Model_Name	
							,PRD_Model_Description
							--,PRD_MMC_ID
							,PRD_Make_Key
									
						)
	select distinct				
		        PRD_Model_Name	
	            ,PRD_Model_Description
				--,PRD_MMC_ID
				,PRD_Make_Key
	
	from		Extract_Model;
go