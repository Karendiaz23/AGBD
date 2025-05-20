/*creacion de una base de datos*/
/*ejercicio galletitas*/


/*COMO CREAR UNA BASE DE DATOS*/

CREATE TABLE Clientes (
ClientesID INTEGER PRIMARY KEY AUTOINCREMENT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),/*se usa VARCHAR si es texto*/
Dni INT)  /* si es numero se usa INT*/

/*otro ejemplo*/
CREATE TABLE Pagos (
PagosID INT PRIMARY KEY,
Monto INT,
Metodo_Pagos VARCHAR(50)
);


CREATE TABLE pedidos (
pedidosID INT PRIMARY KEY,
fecha INT,
hora INT,
cantidad INT); 

/*otro ejemplo*/
CREATE TABLE galletitas (
galletitasID INT PRIMARY KEY,
categoria VARCHAR(50),
relleno VARCHAR(50),
precio INT
);



/*ASI SE CARGAN DATOS A UNA BASE*/
INSERT INTO Clientes(ClientesID,Nombre,Apellido,Dni)
VALUES
("1","luana","lopez","48112558");


INSERT INTO pedidos(pedidosID,fecha,hora ,cantidad)
VALUES
("3"," 23/5","12:00","1");


INSERT INTO galletitas(Categoria,relleno,precio)
VALUES
("chocolate","sin relleno ","$1500");



CREATE TABLE "pedidos" (
	"pedidosID"	INTEGER NOT NULL,
	"ClientesID"	INTEGER NOT NULL,
	"fecha"	CURRENT_TIMESTAMP,
	"hora"	INT,
	"cantidad"	INT NOT NULL,
	FOREIGN KEY("ClientesID") REFERENCES "Clientes"("ClientesID"),
	PRIMARY KEY("pedidosID" AUTOINCREMENT)
)




INSERT INTO pedidos (ClientesID,fecha,hora,cantidad)
VALUES (1,"2025-05-20","15:44:25","3");
