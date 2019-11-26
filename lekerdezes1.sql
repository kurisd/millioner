Select * from hallgatok;
Select * from jegyek;

Select * from hallgatok 
where telepules='Győr';

Select * from hallgatok where knev like '%Péter%'

Select vnev, knev, neptun from hallgatok;

Select vnev, knev, neptun from hallgatok order by vnev desc;
Select vnev, knev, neptun from hallgatok order by 2;

Select vnev AS 'Vezetéknév', knev AS 'Keresztnév', neptun AS 'Neptunkód' from hallgatok order by vnev;

Select vnev+''+knev AS 'név', neptun AS 'Neptunkód' from hallgatok order by vnev;
Select count(*) AS 'Darabszám' from hallgatok;
Select * from tantargyak;
Select  count(tkov) AS 'darabszam', tkov AS 'tantargyi követelmeny' from tantargyak grup by tkov;
Select count(uv) as 'uv hallgato' from jegyek where uv <>0

/*minineptun*/
Select Case kforma 
when 1 then 'BSC'
when 2 then 'MSC'
when 3 then 'PHD' 
else 'kodhiba' end as [kepzesi forma], count(*) as [hallgatoi letszam]
from hallgatok
group by kforma;


select h.neptun, vnev, knev, AVG(jegy) AS 'átlag' from hallgatok h inner join jegyek j on h.neptun=j.neptun group by h.neptun ,vnev ,knev; 
/* megjegyzes inner join left join right join */
select h.neptun, vnev, knev, AVG(CAST (jegy as float)) AS 'átlag' from hallgatok h inner join jegyek j on h.neptun=j.neptun group by h.neptun ,vnev ,knev; 
select h.neptun, vnev, knev, sum(cast(jegy as float)*kredit)/SUM(kredit) AS 'átlag' from hallgatok h inner join jegyek j on h.neptun=j.neptun group by h.neptun ,vnev ,knev; 
