declare @count_SALES_ORG int
select @count_SALES_ORG=count(*) from SALES_ORG
if (@count_SALES_ORG<>72)
begin
declare @MSG as varchar(8000)	=	concat(		char(10),
														'===========================================================',
														'Error: SALES_ORG failed to load all expected values; ',char(10),
														'Table SALES_ORG', char(10),
														'Expected Count: 72', char(10),
														'	Actual Count: ',@count_SALES_ORG,char(10),
														'==========================================================='
);
	throw 50001,@MSG,1;
end													

