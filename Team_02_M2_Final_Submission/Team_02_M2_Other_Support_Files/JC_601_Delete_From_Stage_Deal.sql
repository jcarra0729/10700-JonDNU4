if (exists(select * from sysobjects where name = 'Final_Stage_Deal' and type = 'U'))
	begin
		Delete from Final_Stage_Deal
	end;