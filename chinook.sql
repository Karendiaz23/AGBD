22/04/25


/*EJERCICIOS CHINOOK */


/*EJERCICIO N1*/


SELECT Firstname, LastName
FROM employees
ORDER BY LastName, FirstName;


/*ejercicio N2*/


SELECT t.Name AS tracksName, t.Milliseconds
FROM Tracks t
INNER JOIN Albums a ON t.AlbumId = a.AlbumId
WHERE a.Title = 'Big Ones'
ORDER BY t.Milliseconds DESC;


/*EJERCICIO N3*/



SELECT count(TrackId),g.name FROM genres g
INNER JOIN tracks t ON g.GenreId = t.GenreId
GROUP BY g.GenreId


/* EJERCICIO N4*/


SELECT a.title,COUNT(a.AlbumId) AS cant_album FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
HAVING cant_album > 5



/*ejercicio n5*/

SELECT a.Title, SUM (t.UnitPrice) AS PrecioTotal FROM albums a
INNER JOIN tracks t ON a.AlbumId = t.AlbumId
GROUP BY a.Title
ORDER BY PrecioTotal ASC
LIMIT 10;


/*ejercicio n6*/

SELECT t.Name AS tema, g.Name AS Genero, a.Title AS AlbumTitle
FROM Tracks t
INNER JOIN Genres g ON t.GenreId = g.GenreId
INNER JOIN Albums a ON t.AlbumId = a.AlbumId
WHERE t.UnitPrice = 0.99;

/*ejercicio n7*/


SELECT t.Name AS TrackName, t.Milliseconds,a.Title AS AlbumTitle, ar.Name AS ArtistName
FROM tracks t
INNER JOIN Albums a ON t.AlbumId = a.AlbumId
INNER JOIN artists ar ON a.ArtistId = ar.ArtistId
ORDER BY t.Milliseconds ASC
LIMIT 20;



/*ejercicio n8*/

SELECT e.LastName AS ApellidoEmpleado, e.Title AS puesto, m.LastName AS ApellidoJefe, COUNT (c.CustomerId) AS CantidadClientes
FROM employees e
INNER JOIN employees m ON e.ReportsTo = m.ReportsTo
INNER JOIN customers c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.LastName, e.Title, m.LastName
ORDER BY CantidadClientes DESC;


/*ejercicio n9*/

INSERT INTO Tracks (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES 
('Primer Aviso', 1, 1, 1, 'Maria becerra', 0, 0, 0.99),
('friends', 1, 1, 1, 'chase atlantic', 0, 0, 0.99),
('you', 1, 1, 1, 'Romeo santos', 0, 0, 0.99),
('imitadora', 1, 1, 1, 'Romeos Santos', 4, 0, 0.99);


/*ejercicio numero n10*/

SELECT * 
FROM Tracks
WHERE Name IN ('Primer Aviso', 'friends', 'you', 'imitadora');

/*ejercicio n11*/

UPDATE Tracks
SET Name = 'Let It Be', Composer = 'Paul McCartney'
WHERE Name = 'you';

UPDATE Tracks
SET Name = 'Back in Black', Composer = 'AC/DC'
WHERE Name = 'Imitadora';







/*ejercicio n12*/

SELECT * 
FROM Tracks
WHERE Name IN ('Let It Be', 'Back in Black');


/*ejercicio n13*/

DELETE FROM Tracks
WHERE TrackId >=3520 and TrackId <= 3523;









