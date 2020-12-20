if (exists(select * from sysobjects where name = 'Stage_Make' and type = 'U'))
    begin
        Delete from Stage_Make;
    end;
go

insert into Stage_Make	(																
							PRD_Make_Name	
							,PRD_Make_Description
							--,PRD_MMC_ID
						)
	select	distinct 		
	        PRD_Make_Name		
		    ,PRD_Make_Description
			--,PRD_MMC_ID
	from	Extract_Make;
go