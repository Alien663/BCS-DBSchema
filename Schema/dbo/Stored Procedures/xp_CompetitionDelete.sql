
CREATE     procedure [dbo].[xp_CompetitionDelete]
	@CID int
as begin
	if exists(select 1 from Competition where CCID = @CID)
		raiserror('There is at least one sub competition need to delete', 18, 1)
	if exists(select 1 from Team where CID = @CID)
		raiserror('There is at least one team still participate the competition', 18, 2)
	if exists(select 1 from Game where CID = @CID)
		raiserror('There is at least one game under this competition', 18, 3)
	delete CompetitionArchive where CID = @CID
	delete Competition where CID = @CID
end