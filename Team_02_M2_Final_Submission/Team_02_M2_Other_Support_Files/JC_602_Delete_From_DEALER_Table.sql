if (exists(select * from sysobjects where name = 'DEALER' and type = 'U'))
 begin
  Delete from DEALER
 end;