create   view vd_Competition as
with temp as (
	select C.CID, C.CCID, C.[Name], C.[Description], C.nLevel, C.Since, C.UPDDate,
		P.PID, P.[Name] as [Origanizer], iif(P.Sex = 0, 'Male', 'Female') as [Sex],
		A.AID, A.[Path] + '\' + A.[Name] + '.' + A.Extend as [FileName]
	from Competition C
		inner join Person P on C.Organizer = P.PID
		left join CompetitionArchive CA on C.CID = CA.CID
		left join Archive A on CA.AID = A.AID
)
select P.CID as [ParentID], P.[Name] as [ParentName], P.[Description] as [ParentDesc],
	P.nLevel as [ParentLevel], P.Since as [ParentSince], P.UPDDate as [ParentUPDDate], P.[FileName] as [ParentArchive],
	C.CID as [ChildID], C.[Name] as [ChildName], C.[Description] as [ChildDesc],
	C.nLevel as [ChildLevel], C.Since as [ChildSince], C.UPDDate as [ChildUPDDate], C.[FileName] as [ChildArchive]
from temp P
	inner join temp C on P.CID = C.CCID