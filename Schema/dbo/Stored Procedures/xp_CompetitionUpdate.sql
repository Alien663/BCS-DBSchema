create   procedure xp_CompetitionUpdate
	@CID int,
	@CCID int,
	@Organizer int,
	@Name nvarchar(128),
	@Description varchar(max)
as begin
	update Competition
		set CCID = @CCID,
			[Name] = @Name,
			Organizer = @Organizer,
			[Description] = @Description
		where CID = @CID
end