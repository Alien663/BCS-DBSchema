
CREATE view [dbo].[vd_Participate] as
select C.CID, C.[Name] as [Category], P.PID, P.Sex, P.[Name] as [Player],
	FLOOR(DATEDIFF(DY, P.Birth ,GETDATE())/365.25) as Age,
	CP.[State],
	case CP.[State]
		when 0 then '未繳費'
		when 1 then '已繳費'
		else ''
	end as [Status]
from Competition C
	inner join Participate CP on C.CID = CP.CID
	inner join Person P on CP.PID = P.PID