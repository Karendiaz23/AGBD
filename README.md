# AGBD
Base de Datos

select * from inhabitant
select * from inhabitant where state = "friendly"

select * from inhabitant where state = "friendly"
 and job="weaponsmith"

select * from inhabitant where state = "friendly"
 and job like "%smith"

select * from item where OWNER IS NULL
UPDATE item SET owner = 20 where OWNER IS NULL


select * from inhabitant where state = 'friendly'
 and  job = 'dealer' or job = 'merchant '


UPDATE item SET owner = 15 where item = "teapot" or  item = "ring"

UPDATE inhabitant  SET name  = "karen" where name = "Stranger"

select * from  inhabitant where job = "baker" order by gold desc

select * from  inhabitant where job = "pilot" order by gold desc

SELECT i.name
FROM inhabitant i
INNER JOIN village v
on v.chief = i.personid
where v.name = "Onionville"


select count(*) from inhabitant i join village v ON i.villageid = v.villageid where gender ="f" and v.name = "Onionville"