create function [dbo].[str_getnum] (@s varchar(5000))
returns char(11) as 
begin
 declare @start int;
 set @start=PATINDEX('%[1][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]%',@s);
  
 if @start=0
  return null;
   
 return substring(@s,@start,11);
end
