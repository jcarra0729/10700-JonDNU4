/* to be run in Sales Org */

if (exists(select name from sysobjects where name = 'Extract_Deal' and type = 'V'))
	begin
		drop view Extract_Deal;
	end;
go

create view Extract_Deal
as
select	DLR_Code as DLR_Code,
		DLR_Phone as DLR_Phone,
		DLR_Type as DLR_Type
	from Dealer;
go
