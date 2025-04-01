#ejercicios de sql drive

ejercicion n1 

SELECT*FROM film; 
SELECT*FROM film WHERE title like "ALICE FANTASIA";
SELECT*FROM film f INNER JOIN inventory i
on f.film_id = i.film_id
WHERE  f.title ="ALICE FANTASIA"


SELECT*FROM film f

INNER JOIN  inventory i on f.film_id = i.film_id
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address  a on s.adress_id = a.adress_id
INNER JOIN city  c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id


ejercicio n2

SELECT f.rating ,c.name, l.name ,f.title 
FROM film f
INNER JOIN  inventory i on f.film_id = i.film_id
INNER JOIN language l  on f.language_id = l.language_id
INNER JOIN film_category fc  on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
WHERE f.length  BETWEEN 60 and 120

ejercicio n3

SELECT st.first_name ,st.last_name, co.country ,c.city 
FROM staff st
INNER JOIN  store s on st.store_id = s.store_id
INNER JOIN address a  on s.address_id = a.address_id
INNER JOIN city c  on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id


ejercicio N4

SELECT f.title ,max(return_date), min(return_date)
FROM film f
INNER JOIN  inventory i on f.film_id = i.film_id
INNER JOIN rental r  on  i.inventory_id = r.inventory_id

ejercicio n5 hecho con luana lopez ( las mejores;))





