IF OBJECT_ID('tempdb..#Parent') IS NOT NULL DROP TABLE #Parent
IF OBJECT_ID('tempdb..#Items') IS NOT NULL DROP TABLE #Items

--Parent Items
Select M1.DisplayOrder, M1.MenuId, M1.DisplayName, M1.ParentMenuId, M1.Permission
into #Parent
from dbo.Menu M1
where 1=1
and M1.ParentMenuId is NULL
and M1.IsEnabled = 1
or M1.MenuId in (
	select M2.ParentMenuId
	from dbo.Menu M2 with (NoLock)
	where M1.IsEnabled = 1
	)
order by M1.DisplayOrder

--Child Items
select 
M2.DisplayOrder, M2.MenuId, M2.DisplayName, M2.ParentMenuId, M2.Permission, M1.IsEnabled
into #Items
from dbo.Menu M1 with (NoLock)
inner join dbo.Menu M2 with (NoLock) on M1.MenuId = M2.ParentMenuId
	and M2.IsEnabled = 1
left join [dbo].[Permissions] P with (NoLock) on P.Code = M2.Permission
where 1=1
and M1.IsEnabled = 1
order by M1.DisplayOrder, M2.DisplayOrder

--Results in Display Order of Menu
Select
TBL1.ParentName as [Group]
, [Item] = IsNull(TBL1.DisplayName, 'N/A')
, [Permission] = IsNull(P.Name, 'NO PERMISSION')
from
(
	Select P.DisplayOrder as [ParentOrder], P.MenuId as [Pid], P.DisplayName as [ParentName], [MenuId] = NULL, [DisplayOrder] = NULL, [DisplayName] = NULL, P.Permission
	from #Parent P
	Union
	Select P.DisplayOrder as [ParentOrder], P.MenuId as [Pid], P.DisplayName as [ParentName], I.MenuId, I.DisplayOrder, I.DisplayName, I.Permission
	from #Parent P
	inner join #Items I on I.ParentMenuId = P.MenuId
) TBL1
left join [dbo].[Permissions] P with (NoLock) on P.Code = TBL1.Permission
order by TBL1.ParentOrder, TBL1.Pid, TBL1.ParentName, TBL1.MenuId, TBL1.DisplayOrder