WITH CTE AS(
   SELECT *,
       RN = ROW_NUMBER()OVER(PARTITION BY SamAccountName ORDER BY SamAccountName)
   FROM dbo.Student
)
DELETE FROM CTE WHERE RN > 1




select SamAccountName, count(SamAccountName)
from AllData
group by SamAccountName
having count(SamAccountName) > 1 



DELETE FROM GroupNameDB

insert into AllData (SamAccountName,DistinguishedName)
select SamAccountName,DistinguishedName
from Staff

select SamAccountName,DistinguishedName,ou1,ou2,ou3,ou4,ou5
from AllData







select COUNT(column_name) as Staffcolumn
from information_schema.columns 
where table_name='Staff' 

select COUNT(column_name) as Pmailcolumn
from information_schema.columns 
where table_name='Pmail' 

select COUNT(column_name) as Studentcolumn
from information_schema.columns 
where table_name='Student' 




select * into BAllData2 from AllData






UPDATE GroupNameDB
SET GroupName = 'G-PHD',SamAccountName = 'aaaaatest'
WHERE SamAccountName = '111';

UPDATE AllData
SET DistinguishedName = 'CN=aaaaatest,OU=Literature and Human Sciences,OU=Bachelor Degree,OU=1397,OU=Student,DC=sbu,DC=ac,DC=ir'
,cn='aaaaatest',ou1='Literature and Human Sciences',ou2='1397',ou3='Student',ou4=null
WHERE SamAccountName = 'aaaaatest';







-------------------------------------------------------


---------------------------------------------------------



if object_id ('tempdb..#TempTable1') is not null drop table #TempTable1
SELECT SamAccountName,
	IIF(1=1, COALESCE(NULLIF(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(DistinguishedName, 'CN=', ''),'OU=',''),'DC=sbu',''),'DC=ac',''),'DC=ir',''), ''), '') + ',,,', '') as dn
into #TempTable1
FROM Student;



if object_id ('tempdb..#TempTable2') is not null drop table #TempTable2
SELECT SamAccountName,dn,
SUBSTRING(dn,1,CHARINDEX(',',dn)-1) as CN
into #TempTable2
FROM #TempTable1

if object_id ('tempdb..#TempTable3') is not null drop table #TempTable3
SELECT SamAccountName,dn,CN,
SUBSTRING(dn,len(CN)+2,   CHARINDEX(',',dn,len(CN)+2) - len(CN)-2   ) as ou1
into #TempTable3
FROM #TempTable2

if object_id ('tempdb..#TempTable4') is not null drop table #TempTable4
SELECT SamAccountName,dn,CN,ou1,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1  )  -   len(CN)-2  -  len(ou1)-1  ) as ou2
into #TempTable4
FROM #TempTable3

if object_id ('tempdb..#TempTable5') is not null drop table #TempTable5
SELECT SamAccountName,dn,CN,ou1,ou2,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 + len(ou2)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1 + len(ou2)+1 )  -   len(CN)-2  -  len(ou1)-1  -  len(ou2)-1 ) as ou3
into #TempTable5
FROM #TempTable4

if object_id ('tempdb..#TempTable6') is not null drop table #TempTable6
SELECT SamAccountName,SUBSTRING(dn,1,len(dn)-6) as dn,CN,ou1,ou2,ou3,
SUBSTRING(dn, len(CN)+2 + len(ou1)+1 + len(ou2)+1 + len(ou3)+1 ,   CHARINDEX(',',dn,  len(CN)+2  + len(ou1)+1 + len(ou2)+1 + len(ou3)+1 )  -   len(CN)-2  -  len(ou1)-1  -  len(ou2)-1  -  len(ou3)-1 ) as ou4
into #TempTable6
FROM #TempTable5



SELECT * FROM #TempTable6
order by ou1,ou2,ou3,ou4

------------------------------












SELECT (
	CASE
		WHEN CHARINDEX('CN=',DistinguishedName) > 0 THEN REPLACE(DistinguishedName, 'CN=', '') 
	END) as DN
FROM Staff;










DELETE FROM sbuDN

insert into sbuDN (SamAccountName,dn1)
select	SamAccountName, 
	(CASE WHEN CHARINDEX('CN=',DistinguishedName) > 0 THEN REPLACE(DistinguishedName, 'CN=', '') END) as DistinguishedName
from Staff









select	* from sbuDN







SELECT * FROM #LastTempTable
where ou3 > 1397 
and ou3 <> 'Pardis' and ou3 <> 'Student' and ou3 <> 'Master Degree'
order by ou1,ou2,ou3,ou4



SELECT SamAccountName,DistinguishedName FROM Student
where 
	DistinguishedName LIKE '%1398%' or 
	DistinguishedName LIKE '%1399%' or 
	DistinguishedName LIKE '%1400%' 
order by SamAccountName



---------------------------------------------------




 















