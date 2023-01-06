CREATE view [dbo].[vd_GamePlayer] as
select GP.*, P.[Name] as Player,
	FLOOR(DATEDIFF(DY, P.Birth ,GETDATE())/365.25) as Age,
	case P.Sex
		when 0 then 'Male'
		when 1 then 'Female'
	end as [Sex]
from Game G
	inner join GamePerson GP on G.GID = GP.GID
	inner join Person P on GP.PID = P.PID