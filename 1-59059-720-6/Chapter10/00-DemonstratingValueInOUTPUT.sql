use tempdb
go
create proc testparam(@a int,@b int output)
as
print 'Value of @b at start :' + cast(@b as varchar(10))
select @b = @a + ISNULL(@b,0)
print 'Value of @b at end :' + cast(@b as varchar(10))
return
go

declare @a int ; set @a = 1
declare @b int ; set @b = 5
exec testparam @a,@b output
select @b

/*
Value of @b at start :5
Value of @b at end :6

-----------
6

*/
