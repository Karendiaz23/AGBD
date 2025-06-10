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




INSERT INTO Clientes (Nombre, Apellido, DNI)
VALUES ("Luana", "Lopez", "48112558"),
 ("Karen", "Diaz", "48110978"),
 ("Celeste", "Gonzalez", "47692550"),
 ("Ezequiel", "Mollano", "42658371"),
 ("Sebastian", "Troche", "48836925"),
 ("Alex", "Loiacono", "36918397"),
 ("Gonzalo", "Fernandez", "47274402"),
 ("Bianca", "Lopez", "46598207"),
 ("Adriana", "Mollano", "28392271"),
 ("Agustin", "Perez", "31427809");
------------------------------
INSERT INTO Galletitas (Categoria, Relleno, Precio)
VALUES ("Vainilla", "Nutella", "$2.000"),
 ("Vainilla", "Bon o Bon", "$2.000"),
 ("Vainilla", "Sin relleno", "$1.500"),
 ("Chocolate", "Nutella", "$2.000"),
 ("Chocolate", "Bon o Bon", "$2.000"),
 ("Chocolate", "Sin relleno", "$1.500"),
 ("Avena", "Sin relleno", "$1.500"),
 ("Oreo", "Sin relleno", "$1.500"),
 ("Oreo", "Crema Oreo", "$2.000"),
 ("Fruta", "Mermelada", "$1.500");
------------------------------
INSERT INTO Pedidos (Hora, Fecha, Cantidad)
VALUES ("17:59", "19/05/2025", "3"),
 ("20:03", "19/05/2025", "1"),
 ("09:20", "20/05/2025", "4"),
 ("09:29", "20/05/2025", "2"),
 ("13:33", "20/05/2025", "5"),
 ("19:57", "20/05/2025", "2"),
 ("23:16", "20/05/2025", "1"),
 ("06:08", "21/05/2025", "6"),
 ("11:27", "21/05/2025", "3"),
 ("13:10", "21/05/2025", "2");
------------------------------
CREATE TABLE "" (
	"PagosID"	INTEGER NOT NULL,
	"Monto"	INTEGER NOT NULL,
	"Metodo_pagos"	TEXT NOT NULL,
	"GalletitasID"	INTEGER, NOT NULL
	FOREIGN KEY("GalletitasID") REFERENCES "Galletitas"("GalletitasID"),
	PRIMARY KEY("PagoId" AUTOINCREMENT)
);

/*Para que sirve y a quien le venderia mi base de datos
Esta base de datos sirve para un emprendimiento de galletitas que no tienen un local
ayuda a controlar la cantidad de galletitas que pide cada cliente, muestra los precios de todas
la galetitas que venden, la informacion de lo clientes.

Se la venderia a un emprediminto que recien arranca y no sabe como organizar
los pedidos y precios.
*/


10/06

CREATE TABLE Categorias(
CategoriasID INTEGER ,
Gustos VARCHAR(50)NOT NULL,
PRIMARY KEY("CategoriasID" AUTOINCREMENT));


INSERT INTO Categorias(CategoriasID,Gustos)
VALUES ("1","vainilla"),
("2","chocolate"),
("3","oreo"),
("4","avena"),
("5","fruta");
 

 CREATE TABLE "Sabores" (
"SaboresID"	INTEGER,
"CategoriasID" INTEGER NOT NULL,
"GalletitasID" INTEGER NOT NULL,
FOREIGN KEY("CategoriasID") REFERENCES Categorias("CategoriasID"),
FOREIGN KEY("GalletitasID") REFERENCES Galletitas("GalletitasID"),
PRIMARY KEY("SaboresID" AUTOINCREMENT));



CREATE TABLE "Galletitas" (
   "GalletitasID"  INTEGER,
   "Relleno"   VARCHAR(50) NOT NULL,
   "Precio"    INT NOT NULL,
   PRIMARY KEY("GalletitasID" AUTOINCREMENT)
);


INSERT INTO Galletitas (Relleno, Precio)
VALUES("Nutella", "$2.000"),
("Bon o Bon", "$2.000"),
("Sin relleno", "$1.500"),
("Crema Oreo", "$2.000"),
("Mermelada", "$1.500");

INSERT INTO Sabores(CategoriasID,GalletitasID)
VALUES(1,1), (1,2), (1,3), (1,4), (1,5),
(2,1), (2,2), (2,3), (2,4), (2,5),
(3,1), (3,3),
(4,1), (4,2), (4,3), (4,4),
(5,3), (5,5)


CREATE TABLE "Pedidos" (
   "PedidosID" INTEGER,
   "Fecha" INT NOT NULL,
   "Hora" INT NOT NULL,
   "Cantidad" INT NOT NULL,
   "ClientesID" INTEGER NOT NULL,
   "PagosID" INTEGER NOT NULL,
   "GalletitasID" INTEGER NOT NULL,
   FOREIGN KEY("ClientesID") REFERENCES Clientes("ClientesID"),
   FOREIGN KEY("PagosID") REFERENCES Pagos("PagosID"),
   FOREIGN KEY("GalletitasID") REFERENCES Galletitas("GalletitasID"),
   PRIMARY KEY("PedidosID" AUTOINCREMENT)
);