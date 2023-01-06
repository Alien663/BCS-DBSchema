
create   procedure xp_CompetitionInsert
	@CCID int,
	@Name nvarchar(128),
	@Description varchar(max),
	@Organizer int,
	@NewCID int output
as begin
	if(@CCID = 0)
		insert into Competition(Organizer, CCID, [Name], [Description], nLevel)
			values(@Organizer, @CCID, @Name, @Description, 0)
	else
		insert into Competition(Organizer, CCID, [Name], [Description], nLevel)
			select @Organizer, @CCID, @Name, @Description, nLevel
			from Competition
			where CID = @CCID
	set @NewCID = SCOPE_IDENTITY()
end