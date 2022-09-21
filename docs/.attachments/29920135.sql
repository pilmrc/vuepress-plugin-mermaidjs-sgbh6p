IF OBJECT_ID('tempdb..#Root') IS NOT NULL DROP TABLE #Root
IF OBJECT_ID('tempdb..#Level1') IS NOT NULL DROP TABLE #Level1
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp

--Root Menu Level Items
select 
P0.PermissionId, P0.Name, P0.Description
into #Root
from [dbo].[Permissions] P0
where 1=1
and P0.ParentPermissionId is NULL
order by P0.Name

--Sub-Level Tier Items
Select
P1.PermissionId, P1.ParentPermissionId, P1.Name, P1.Description
into #Level1
from [dbo].[Permissions] P1
where 1=1
and P1.ParentPermissionId is not NULL
order by P1.ParentPermissionId

--Populate Temp table with preliminary results
select
R.PermissionId as [RId]
,R.Name as [RootGroup] 
, L1.PermissionId as [L1Id]  
,L1.Name as [Group1]
, L2.PermissionId as [L2Id]
, [Group2] = L2.Name
, L3.PermissionId as [L3Id]
,[Group3] = L3.Name
into #temp
from #Root R
left join #Level1 L1 on L1.ParentPermissionId = R.PermissionId
left join #Level1 L2 on L2.ParentPermissionId = L1.PermissionId
left join #Level1 L3 on L3.ParentPermissionId = L2.PermissionId
order by R.Name, L1.Name, L2.Name, L3.Name

Select 
TBL1.RootGroup as [1st Level]
, [2nd Level] = IsNull(TBL1.Group1, '')
, [3rd Level] = IsNull(TBL1.Group2, '')
, [4th Level] = IsNull(TBL1.Group3, '')
from
(
	--Root Level 
	select R.PermissionId as [RId], R.Name as [RootGroup], [L1Id] = NULL, [Group1] = NULL, [L2Id] = NULL, [Group2] = NULL, [L3Id] = NULL, [Group3] = NULL
	from #Root R
	where 1=1
	and R.PermissionId in (select L.ParentPermissionId from #Level1 L)
	UNION
	--Group 1
	select t.*
	from #temp t
	UNION
	--Group 2
	select R.PermissionId as [RId], R.Name as [RootGroup], L1.PermissionId as [L1Id], L1.Name as [Group1]
	, [L2Id] = NULL, [Group2] = NULL, [L3Id] = NULL, [Group3] = NULL
	from #Root R
	left join #Level1 L1 on L1.ParentPermissionId = R.PermissionId
	UNION
	--Group 3
	select R.PermissionId as [RId], R.Name as [RootGroup], L1.PermissionId as [L1Id], L1.Name as [Group1]
	, L2.PermissionId as [L2Id], L2.Name as [Group2], [L3Id] = NULL, [Group3] = NULL
	from #Root R
	left join #Level1 L1 on L1.ParentPermissionId = R.PermissionId
	left join #Level1 L2 on L2.ParentPermissionId = L1.PermissionId
	UNION
	--Group 4
	select R.PermissionId as [RId], R.Name as [RootGroup], L1.PermissionId as [L1Id], L1.Name as [Group1]
	, L2.PermissionId as [L2Id], L2.Name as [Group2], L3.PermissionId as [L3Id], L3.Name as [Group3]
	from #Root R
	left join #Level1 L1 on L1.ParentPermissionId = R.PermissionId
	left join #Level1 L2 on L2.ParentPermissionId = L1.PermissionId
	left join #Level1 L3 on L3.ParentPermissionId = L2.PermissionId
) TBL1
order by 1,2,3,4
