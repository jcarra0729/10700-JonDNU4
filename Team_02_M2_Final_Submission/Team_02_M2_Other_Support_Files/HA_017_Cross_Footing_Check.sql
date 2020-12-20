declare @count_PRODUCT int
select @count_PRODUCT = count(*) from PRODUCT if (@count_PRODUCT <> 45095)

print 'There is an error'

else 

print 'No error'