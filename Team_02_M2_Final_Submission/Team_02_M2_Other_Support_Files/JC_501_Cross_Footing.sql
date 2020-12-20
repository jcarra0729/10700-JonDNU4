declare @count_DIM int
select @count_DIM=count(*) from DEALER
if (@count_DIM<>360)
begin
declare @DIM as varchar(8000) = concat(	char(10),
												'Error: DIM failed to load all expected values'
);

throw 50001,@DIM,1;

end