create view vd_GameOfCompetition as
select C.CID, C.[Name] as [Category], G.GID, G.Umpire, G.Remark, G.[State],
	case G.[State]
		when 0 then '尚未開賽'
		when 1 then '比賽中'
		when 2 then '比賽結束'
		when 3 then '完賽(結束計算)'
	end as [Status]
from Competition C
	inner join Game G on C.CID = G.CID