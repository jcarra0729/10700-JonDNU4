/* to be run in Products */

if (exists(select name from sysobjects where name = 'Extract_Deal' and type = 'V'))
	begin
		drop view Extract_Deal;
	end;
go

create view Extract_Deal
as
select	DLR_Code as DLR_Code,
		DLR_Street as DLR_Street,
		DLR_City as DLR_City,
		DLR_State as DLR_State,
		DLR_Zip as DLR_Zip
	from Dealer;
go