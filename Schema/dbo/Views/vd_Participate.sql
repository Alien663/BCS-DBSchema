create   view vd_Participate as
select C.*, T.TID, T.[Name] as [TeamName], T.[Description] as [TeamDesc],
	T.[State],
	case T.[State]
		when 0 then '未繳費'
		when 1 then '已繳費'
		else ''
	end as [Status]
from vd_Competition C
	inner join Team T on C.ChildID = T.CID