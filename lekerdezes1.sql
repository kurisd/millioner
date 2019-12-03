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

Select COUNT (Distinct neptun) from jegyek;
select j.neptun from hallgatok h inner join jegyek j on h.neptun=j.neptun;
select h.neptun from hallgatok h full join jegyek j on h.neptun=j.neptun;
select * From hallgatok where neptun not in (Select neptun from jegyek); 
select * from hallgatok where szdat like '%10'


select jegy, vnev +' '+ knev as 'nev' from hallgatok h inner join jegyek j on h.neptun=j.neptun
/*leggyakrabban kolcsonzott könyvek , legdragabb es legolcsobb termek szurese*/

select * from hallgatok h full join jegyek j on h.neptun=j.neptun group by h.neptun;

-------------------------------------------------------------------------

/*3. gyoriek*/
CREATE VIEW 'győriek' select * from ETORZS where ETELEP like 'Győr';
/*2. inform */
select * from ELOFIZ a inner join ETORZS b on a.FAZON = b.EKOD;

select * from ETORZS a inner join FTORZS b on a.EKOD =b.FAZON;
/*4. darab*/
select a.EFIZDB, b.FCIM from ELOFIZ a inner join FTORZS b on a.FAZON = b.FAZON group by a.EFIZDB , b.FCIM;
/*5. november*/
select * from ETORZS a inner join ELOFIZ b on a.EKOD =b.EKOD where b.EKDATUM like '%-11-%';
/*darabszam*/
select top 1 fcim , count (*) from elofiz were elofiz f azon group by fcim order by 2 desp

CREATE VIEW view_name AS

ftipus - tinyint 
[ftipus] like '[1-4]';
[fhdij] between 100 and 999999
(datediff(year,[ESZDAT],getdate())>=(18))
datediff or datediff or datediff [evdatum]
[efizdb] between 1 and 999

----------------------------------------------------------------------------

/*3. gyoriek*/
CREATE VIEW gyorielofizetok as select * from ETORZS where ETELEP like 'Győr';
/*2. inform */
CREATE VIEW informaciok as select c.ETELEP +' - '+c.ENEV as 'név és település', b.FCIM as 'magazin', b.FHDIJ as 'ár'  from ELOFIZ a inner join FTORZS b on a.FAZON=b.FAZON inner join ETORZS c on a.EKOD=c.EKOD;

--ugyan az csak futatva 
select c.ETELEP +' - '+c.ENEV as 'név és település', b.FCIM as 'magazin', b.FHDIJ as 'ár'  from ELOFIZ a inner join FTORZS b on a.FAZON=b.FAZON inner join ETORZS c on a.EKOD=c.EKOD  order by b.FHDIJ desc;

select * from ETORZS a inner join FTORZS b on a.EKOD =b.FAZON;
/*4. darab*/
select top 1 a.EFIZDB, b.FCIM from ELOFIZ a inner join FTORZS b on a.FAZON = b.FAZON group by a.EFIZDB , b.FCIM order by a.EFIZDB desc;
/*5. november*/
select * from ETORZS a inner join ELOFIZ b on a.EKOD =b.EKOD where b.EKDATUM like '%-11-%';
/*harom tabla ossze kapcsolasa*/
select * from ELOFIZ a inner join FTORZS b on a.FAZON=b.FAZON inner join ETORZS c on a.EKOD=c.EKOD;

/*darabszam
select top 1 fcim , count (*) from elofiz were elofiz f azon group by fcim order by 2 desc;
*/
CREATE VIEW view_name AS
/*6.
ftipus - tinyint 
[ftipus] like '[1-4]';
[fhdij] between 100 and 999999
(datediff(year,[ESZDAT],getdate())>=(18))
datediff or datediff or datediff [evdatum]
[efizdb] between 1 and 999
*/

