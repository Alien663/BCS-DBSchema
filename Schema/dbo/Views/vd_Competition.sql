

CREATE view [dbo].[vd_Competition] as
select 
	C.CID,
	C.CCID as [ParentID],
	P.[Name] as [Organizer],
	C.[Name] as [CompetitionItem],
	C.[Description] as [ItemDescription],
	C.nLevel,
	A.AID,
	A.[Path] + A.[Name] + '.' + A.Extend as [FileName]
from Competition C
	inner join Person P on C.Organizer = P.PID
	left join CompetitionArchive CA on C.CID = CA.CID
	left join Archive A on CA.AID = A.AID