create view vd_Competition as
select 
	P.[Name] as [CupName],
	P.[Description] as [Description],
	P.Organizer,
	C.CID,
	C.[Name] as [CompetitionItem],
	C.[Description] as [ItemDescription],
	C.nLevel
from Competition P
	inner join Competition C on P.CID = C.CCID