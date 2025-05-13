/*creacion de una base de datos*/
/*ejercicio galletitas*/


/*COMO CREAR UNA BASE DE DATOS*/

CREATE TABLE Clientes (
ClientesID INT PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),/*se usa VARCHAR si es texto*/
Dni INT)  /* si es numero se usa INT*/

/*otro ejemplo*/
CREATE TABLE Pagos (
PagosID INT PRIMARY KEY,
Monto INT,
Metodo_Pagos VARCHAR(50)
)

/*ASI SE CARGAN DATOS A UNA BASE*/
INSERT INTO Clientes(Nombre,Apellido,Dni)
VALUES
("luana","lopez","48112558")
