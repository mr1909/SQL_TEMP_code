------------------------------Student------------------------------
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn)
--select	SamAccountName, DistinguishedName,
--SUBSTRING(
--STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '')
--,4,
--len( STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '') ) 
--)
--from DB1.dbo.Student
--
--
--
---------------------------------------------------------------------
--
--if object_id ('tempdb..#aTempTable1') is not null drop table #aTempTable1
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    )+1)  ,'') 
--,7,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(      /*c1*/  (sbuDN.cn)      /*c1*/     )+1) ,''),7)-7   
--) 
--
--as ou1
--into #aTempTable1
--from sbuDN 
--INNER JOIN Student ON sbuDN.SamAccountName = Student.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1)
--SELECT * FROM #aTempTable1
--
--
--
-------------------------------------------------------------------
--
--
--if object_id ('tempdb..#aTempTable2') is not null drop table #aTempTable2
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,sbuDN.ou1,
--
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1 )  ,'') 
--,10,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1 ) ,''),10)-10   
--) 
--
--
--as ou2
--into #aTempTable2
--from sbuDN 
--INNER JOIN Student ON sbuDN.SamAccountName = Student.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1,ou2)
--SELECT * FROM #aTempTable2
--
---------------------------------------------------------------------
--
--if object_id ('tempdb..#aTempTable3') is not null drop table #aTempTable3
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,sbuDN.ou1,sbuDN.ou2,
--
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+ 1 + len(     /*c1*/      (sbuDN.ou2)     /*c1*/    ) + 1 )  ,'') 
--,13,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1+ len(     /*c1*/      (sbuDN.ou2)     /*c1*/    ) + 1 ) ,''),13)-13   
--) 
--
--as ou3
--into #aTempTable3
--from sbuDN 
--INNER JOIN Student ON sbuDN.SamAccountName = Student.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1,ou2,ou3)
--SELECT * FROM #aTempTable3
--
---------------------------------------------------------------------
--
--
--if object_id ('tempdb..#aTempTable4') is not null drop table #aTempTable4
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,sbuDN.ou1,sbuDN.ou2,sbuDN.ou3,
--
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+ 1 + len(     /*c1*/      (sbuDN.ou2)     /*c1*/    ) + 1+ len(     /*c1*/      (sbuDN.ou3)     /*c1*/    ) + 1 )  ,'') 
--,16,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1+ len(     /*c1*/      (sbuDN.ou2)     /*c1*/    ) + 1+ len(     /*c1*/      (sbuDN.ou3)     /*c1*/    ) + 1 ) ,''),16)-16   
--) 
--
--
--as ou4
--into #aTempTable4
--from sbuDN 
--INNER JOIN Student ON sbuDN.SamAccountName = Student.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1,ou2,ou3,ou4)
--SELECT * FROM #aTempTable4
--
---------------------------------------------------------------------
--
--
----SELECT * FROM sbuDN
--
--
--DELETE FROM AllData
--
--insert into AllData (SamAccountName,DistinguishedName,cn,ou1,ou2,ou3,ou4)
--select SamAccountName,dn1,cn,ou1,ou2,ou3,ou4
--from sbuDN
--
--
--------------------------------Student------------------------------
--
--
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn)
--select	SamAccountName, DistinguishedName,
--SUBSTRING(
--STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '')
--,4,
--len( STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '') ) 
--)
--from DB1.dbo.Staff
--
--
--
---------------------------------------------------------------------
--
--if object_id ('tempdb..#bTempTable1') is not null drop table #bTempTable1
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    )+1)  ,'') 
--,7,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(      /*c1*/  (sbuDN.cn)      /*c1*/     )+1) ,''),7)-7   
--) 
--
--as ou1
--into #bTempTable1
--from sbuDN 
--INNER JOIN Staff ON sbuDN.SamAccountName = Staff.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1)
--SELECT * FROM #bTempTable1
--
--
--
-------------------------------------------------------------------
--
--
--if object_id ('tempdb..#bTempTable2') is not null drop table #bTempTable2
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,sbuDN.ou1,
--
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1 )  ,'') 
--,10,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    ) + 1 + len(     /*c1*/      (sbuDN.ou1)     /*c1*/    )+1 ) ,''),10)-10   
--) 
--
--
--as ou2
--into #bTempTable2
--from sbuDN 
--INNER JOIN Staff ON sbuDN.SamAccountName = Staff.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1,ou2)
--SELECT * FROM #bTempTable2
--
---------------------------------------------------------------------
--
--
--
----SELECT * FROM sbuDN
--
--
----DELETE FROM AllData
--
--insert into AllData (SamAccountName,DistinguishedName,cn,ou1,ou2,ou3,ou4)
--select SamAccountName,dn1,cn,ou1,ou2,ou3,ou4
--from sbuDN
--
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn)
--select	SamAccountName, DistinguishedName,
--SUBSTRING(
--STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '')
--,4,
--len( STUFF(DistinguishedName, CHARINDEX(',',DistinguishedName), LEN(DistinguishedName), '') ) 
--)
--from DB1.dbo.Pmail
--
--
--
---------------------------------------------------------------------
--
--if object_id ('tempdb..#cTempTable1') is not null drop table #cTempTable1
--
--select sbuDN.SamAccountName, sbuDN.dn1, sbuDN.cn,
--SUBSTRING   (
--STUFF(sbuDN.dn1,1, (  len(     /*c1*/      (sbuDN.cn)     /*c1*/    )+1)  ,'') 
--,7,
--CHARINDEX(',',STUFF(sbuDN.dn1,1, (  len(      /*c1*/  (sbuDN.cn)      /*c1*/     )+1) ,''),7)-7   
--) 
--
--as ou1
--into #cTempTable1
--from sbuDN 
--INNER JOIN Pmail ON sbuDN.SamAccountName = Pmail.SamAccountName 
--
--DELETE FROM sbuDN
--
--insert into dbo.sbuDN (SamAccountName,dn1,cn,ou1)
--SELECT * FROM #cTempTable1
--
-------------------------------------------------------------------
--
----SELECT * FROM sbuDN
--
--
----DELETE FROM AllData
--
--insert into AllData (SamAccountName,DistinguishedName,cn,ou1,ou2,ou3,ou4)
--select SamAccountName,dn1,cn,ou1,ou2,ou3,ou4
--from sbuDN
--
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--
--
--
----------------------------------------------
----select *
----from AllData
----order by SamAccountName
--
--
--
--
---------------------------------------------------------
--
--SELECT AllData.SamAccountName,GroupNameDB.GroupName,AllData.DistinguishedName,AllData.cn,AllData.ou1,AllData.ou2,AllData.ou3,AllData.ou4
--
--FROM AllData
--INNER JOIN GroupNameDB ON AllData.SamAccountName = GroupNameDB.SamAccountName;
--
-------------------------
--
--
--select *
--from GroupNameDB
--order by SamAccountName
--
--select *
--from AllData
--order by ou1,ou2,ou3,ou4
--
--
--
--
--
--
--
--
--
--




------------------------last update-------------------------------------------------------------------

-------------------------------------------------------

---------------------------------------------------------




if object_id ('tempdb..#TempTableAllData') is not null drop table #TempTableAllData

SELECT SamAccountName,DistinguishedName,LastLogonDate,Enabled INTO #TempTableAllData 
	FROM Student
UNION ALL
SELECT SamAccountName,DistinguishedName,LastLogonDate,Enabled
	FROM Staff
UNION ALL
SELECT SamAccountName,DistinguishedName,LastLogonDate,Enabled
	FROM Pmail





if object_id ('tempdb..#TempTable1') is not null drop table #TempTable1
SELECT #TempTableAllData.SamAccountName,
	IIF(1=1, COALESCE(NULLIF(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(DistinguishedName, 'CN=', ''),'OU=',''),'DC=sbu',''),'DC=ac',''),'DC=ir',''), ''), '') + ',,,', '') as dn
	,LastLogonDate,Enabled
into #TempTable1
FROM #TempTableAllData;




if object_id ('tempdb..#TempTable2') is not null drop table #TempTable2
SELECT SamAccountName,dn,
SUBSTRING(dn,1,CHARINDEX(',',dn)-1) as CN
	,LastLogonDate,Enabled
into #TempTable2
FROM #TempTable1

if object_id ('tempdb..#TempTable3') is not null drop table #TempTable3
SELECT SamAccountName,dn,CN,
SUBSTRING(dn,len(CN)+2,   CHARINDEX(',',dn,len(CN)+2) - len(CN)-2   ) as ou1
	,LastLogonDate,Enabled
into #TempTable3
FROM #TempTable2

if object_id ('tempdb..#TempTable4') is not null drop table #TempTable4
SELECT SamAccountName,dn,CN,ou1,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1  )  -   len(CN)-2  -  len(ou1)-1  ) as ou2
	,LastLogonDate,Enabled
into #TempTable4
FROM #TempTable3

if object_id ('tempdb..#TempTable5') is not null drop table #TempTable5
SELECT SamAccountName,dn,CN,ou1,ou2,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 + len(ou2)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1 + len(ou2)+1 )  -   len(CN)-2  -  len(ou1)-1  -  len(ou2)-1 ) as ou3
	,LastLogonDate,Enabled
into #TempTable5
FROM #TempTable4

if object_id ('tempdb..#LastTempTable') is not null drop table #LastTempTable
SELECT SamAccountName,SUBSTRING(dn,1,len(dn)-6) as dn,CN,ou1,ou2,ou3,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 + len(ou2)+1 + len(ou3)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1 + len(ou2)+1 + len(ou3)+1 )  -   len(CN)-2  -  len(ou1)-1  -  len(ou2)-1  -  len(ou3)-1 ) as ou4
	,LastLogonDate,Enabled
into #LastTempTable
FROM #TempTable5



DELETE FROM AllData

insert into AllData (SamAccountName,DistinguishedName,cn,ou1,ou2,ou3,ou4,LastLogonDate,Enabled)
select SamAccountName,dn,cn,ou1,ou2,ou3,ou4,LastLogonDate,Enabled 
from #LastTempTable


select *
from AllData
order by SamAccountName 





select *
from AllData
WHERE LastLogonDate < '2021-09-09'


select *
from AllData
WHERE DATEDIFF(MM, LastLogonDate, GETDATE()) > 6
ORDER by LastLogonDate 


select *
from AllData
WHERE DATEDIFF(DD, LastLogonDate, GETDATE()) > 180
ORDER by LastLogonDate 


select *
from AllData
WHERE LastLogonDate IS NULL








-----------------------------------------------
select *
from GroupNameDB
order by SamAccountName


select *
from #LastTempTable 


SELECT * FROM #LastTempTable
order by ou1,ou2,ou3,ou4








------------------------------

-------------------------------------------------------

SELECT #LastTempTable.SamAccountName,GroupNameDB.GroupName,#LastTempTable.dn,#LastTempTable.cn,#LastTempTable.ou1,#LastTempTable.ou2,#LastTempTable.ou3,#LastTempTable.ou4

FROM #LastTempTable
inner JOIN GroupNameDB ON #LastTempTable.SamAccountName = GroupNameDB.SamAccountName;

-----------------------