CREATE view vd_GamePlayer as 
select C.CID, C.[Name] as [CompetitionCategory], T.TID, T.[Name] as [TeamName],
	G.GID, G.[State], U.PID as [UID], U.[Name] as [Umpire], G.GameTime, GP.Score, 
	P.PID, P.[Name] as [Player],
	FLOOR(DATEDIFF(DY, P.Birth ,GETDATE())/365.25) as Age,
	case P.Sex
		when 0 then 'Male'
		when 1 then 'Female'
	end as [Sex]
from Competition C
	inner join Team T on C.CID = T.CID
	inner join Game G on C.CID = G.CID
	inner join GamePerson GP on G.GID = GP.GID
	inner join Participate TP on T.TID = TP.TID
	inner join Person P on GP.PID = P.PID and TP.PID = P.PID
	inner join Person U on G.Umpire = U.PID