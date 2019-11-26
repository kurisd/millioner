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
