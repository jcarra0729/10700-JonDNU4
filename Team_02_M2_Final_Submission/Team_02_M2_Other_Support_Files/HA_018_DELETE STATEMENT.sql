if (exists(select name from sysobjects where name = 'PRODUCT' and type = 'U'))
	begin
		delete from PRODUCT
	end;
go