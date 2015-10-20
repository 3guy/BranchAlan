create function [dbo].[str_get](@src varchar(8000), @start varchar(8000),@end varchar(8000))
returns varchar(8000)
as
begin
	declare @sindex int,@eindex int,@rstr varchar(8000)

	set @src=ltrim(@src)
	set @start=ltrim(@start)
	set @end=ltrim(@end)

	set @src=rtrim(@src)
	set @start=rtrim(@start)
	set @end=rtrim(@end)
	if @src is null
	begin
		return ''
	end

	set @sindex=CHARINDEX(@start,@src)
	if @sindex>0
	begin
		set @sindex=@sindex+len(@start)
	end
	else
	begin
		return ''
	end

	set @eindex=CHARINDEX(@end,@src,@sindex)
	if @eindex<=0
	begin
		return ''
	end

	set @rstr=SubString(@src,@sindex,@eindex-@sindex)
	if @rstr is null
	begin
		return ''
	end
    return @rstr
end
