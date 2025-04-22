#ejercicios de sql drive

/*ejercicion n1*/ 

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


/*ejercicio n2*/

SELECT f.rating ,c.name, l.name ,f.title 
FROM film f
INNER JOIN  inventory i on f.film_id = i.film_id
INNER JOIN language l  on f.language_id = l.language_id
INNER JOIN film_category fc  on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
WHERE f.length  BETWEEN 60 and 120

/*ejercicio n3*/

SELECT st.first_name ,st.last_name, co.country ,c.city 
FROM staff st
INNER JOIN  store s on st.store_id = s.store_id
INNER JOIN address a  on s.address_id = a.address_id
INNER JOIN city c  on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id


/*ejercicio N4*/

SELECT f.title ,max(return_date), min(return_date)
FROM film f
INNER JOIN  inventory i on f.film_id = i.film_id
INNER JOIN rental r  on  i.inventory_id = r.inventory_id

/*ejercicio n5*/ hecho con luana lopez ( las mejores;))



8/04/2025


/*ejercicio N6*/

SELECT COUNT (*) rating FROM film
GROUP BY rating

/*ejercicio  N7*/


SELECT COUNT(*) as cant_pelis ,ca.name FROM film f
INNER  JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category ca on ca.category_id = fc.category_id
GROUP BY ca.category_id


/*ejercicio N8*/

SELECT COUNT(*)as cant_actores, a.first_name , a.last_name  FROM film f
INNER  JOIN film_actor fa on f.film_id = fa.film_id
INNER JOIN actor a on a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY cant_actores DESC LIMIT 10;


/*ejercicio N9*/

SELECT COUNT(i.inventory_id) AS total_inventory,  a.address, c.city, co.country
FROM store s
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id
INNER JOIN inventory i ON s.store_id = i.store_id
GROUP BY s.store_id;

/*ejercicio N10*/

SELECT COUNT(*) AS total_inventory,  a.address, c.city, co.country
FROM film f

INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN store s on s.store_id = i.store_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id

GROUP BY s.store_id;

/*ejercicio N11*/

SELECT c.name AS categoria, AVG(f.rental_rate * f.rental_duration)
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY  c.name
ORDER BY f.rental_rate DESC;


/*ejercicio N12*/

SELECT (f.rental_duration * f.rental_rate), f.rental_rate, r.return_date
FROM film f
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
WHERE f.title = "ALABAMA DEVIL"





15/04/25



/*ejercicio N13*/


SELECT f.title AS nombre,f.length AS duracion,c.name AS categoria
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
ORDER BY f.length DESC;



/*ejercicio N14*/

SELECT f.title,count (a.actor_id)AS actores 
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a on fa.actor_id = a.actor_id
WHERE f.title LIKE 'W%'
GROUP BY f.film_id
HAVING COUNT(fa.actor_id) >= 5;

/*ejercicio N15*/
SELECT SUM(p.amount), c.first_name
FROM customer c
INNER JOIN payment p on c.customer_id = p.customer_id
group by p.customer_id


/*EJERCICIO N16*/


SELECT f.title, f.rental_duration, a.first_name, ca.name
FROM category ca
INNER JOIN film_category fc on ca.category_id = fc.category_id
INNER JOIN film f ON f.film_id = fc.film_id
INNER JOIN film_actor fa ON f.film_id = fa.film_id
inner join actor a on a.actor_id = fa.actor_id
ORDER BY rental_duration ASC;


/*ejercicio N17*/


SELECT c.last_name AS apellido,ci.city,co.country,a.address,r.rental_id,p.payment_id,p.amount
FROM customer c
INNER JOIN address a ON c.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
INNER JOIN  rental  R on  c.customer_id = R.customer_id
INNER JOIN  payment p on R.rental_id = p.rental_id
GROUP BY c.customer_id
ORDER BY p.amount DESC;



/*
iNSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("201", "KAREN", "DIAZ","2020-02-20 08:08:11")

UPDATE actor
SET first_name = "REBE", last_name = "DIAZ"
WHERE last_name = "DIAZ" AND first_name = "KAREN"

DELETE FROM actor
WHERE actor_id = 201
*/



/*EJERCICIO N18*/

iNSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("201", "KAREN", "DIAZ","2020-02-20 08:08:11")


/*EJERCICIO N19*/
iNSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("202", "LUANA", "LOPEZ","2020-02-20 08:08:11")


iNSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("203", "LUCHO", "ALCARAZ","2020-02-20 08:08:11")


/*ejercicio N20*/

UPDATE actor
SET first_name = 'EMMA', last_name = 'WATSON'
WHERE actor_id = 201;

UPDATE actor
SET first_name = 'MARTINA', last_name = 'STOESELL'
WHERE actor_id = 202;


UPDATE actor
SET first_name = 'MESSI', last_name = 'LEONEL'
WHERE actor_id = 203;


/*EJERCICO N21*/


DELETE FROM actor
WHERE actor_id = 201

DELETE FROM actor
WHERE actor_id = 202

DELETE FROM actor
WHERE actor_id = 203


























