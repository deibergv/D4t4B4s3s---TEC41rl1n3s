 ---CREATE DATABASE TECAirlines
 ---USE TECAirlines

/*
 CREATE TABLE Maleta (
  codigoM VARCHAR(50) NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  PRIMARY KEY(codigoM)
);

CREATE TABLE PMaleta (
	codigoM VARCHAR(50) NOT NULL,
	peso INTEGER NOT NULL,
	PRIMARY KEY(codigoM)
);

CREATE TABLE Tiquete ( 
	ID INTEGER NOT NULL,
	IDR INTEGER NOT NULL,
	IDMaleta VARCHAR(50) NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Universidad ( 
  Carn� INTEGER NOT NULL,
  NombreComp VARCHAR(50) NOT NULL,
  PRIMARY KEY(Carn�)
);

CREATE TABLE Estudiante ( 
  Pasaporte VARCHAR(50) NOT NULL,
  Carn� VARCHAR(50) NOT NULL,
  MillasE INTEGER NOT NULL,
  PRIMARY KEY(Carn�)
);

CREATE TABLE Avion ( 
  Tipo VARCHAR(50) NOT NULL,
  AsientosDisponibles BIT NOT NULL,
  PRIMARY KEY(Tipo)
);

CREATE TABLE TAvion ( 
	Tipo VARCHAR(50) NOT NULL,
	PrimClase INTEGER NOT NULL,
	EconClase INTEGER NOT NULL,
	PRIMARY KEY(Tipo)
);

CREATE TABLE AsistenteVuelo (
  ID VARCHAR(50) NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE NAsistenteVuelo(
	ID VARCHAR(50) NOR NULL,
	Nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Asiento (
	IDTiquete VARCHAR(50),
	Numero INTEGER NOT NULL,
	Categor�a VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Cliente ( 
	Pasaporte INTEGER NOT NULL,
	NombreComp VARCHAR(50) NOT NULL,
	Tel�fono INTEGER NOT NULL,
	Correo VARCHAR(50) NOT NULL,
	Estudiante BIT NOT NULL,
	Contrase�a VARCHAR(50) NOT NULL,
	NTarjeta INTEGER NOT NULL,
	PRIMARY KEY(Pasaporte)
);

CREATE TABLE Escala (
	IDEscala VARCHAR(50) NOT NULL,
	Numero INTEGER NOT NULL,
	Millas INTEGER NOT NULL,
	AeSalida VARCHAR(50) NOT NULL,
	AeLlegada VARCHAR(50) NOT NULL,
	FechaSalida VARCHAR(50) NOT NULL,
	FechaLlegada VARCHAR(50) NOT NULL,
	Duraci�n INTEGER NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE CEscala(
	IDVuelo VARCHAR(50) NOT NULL,
	IDEscala VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE Vuelo (
	IDVuelo VARCHAR(50) NOT NULL,
	Precio INTEGER NOT NULL,
	CPasajeros INTEGER NOT NULL,
	CantMaletas INTEGER NOT NULL,
	PRIMARY KEY(IDVuelo)
);

CREATE TABLE Aeropuerto ( 
  Nombre VARCHAR(50) NOT NULL,
  Pa�s VARCHAR(50) NOT NULL,
  CodigoP VARCHAR(5) NOT NULL,
  PRIMARY KEY(Nombre)
);

CREATE TABLE Reservacion (
  IDReservacion INTEGER NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Promocion (
	IDPromo VARCHAR(50) NOT NULL,
	Costo INTEGER NOT NULL,
	Fecha DATE NOT NULL,
	PRIMARY KEY(IDPromo)
);
*/

--CLIENTE

/*
insert into Cliente values(12312312, 'Juan Madrigal', 88493012, juancito@gmail.com, 1,junito91, 199283928)
insert into Cliente values(321323, 'Enrique Molina',84738193, enriqueM@gmail.com, 1, enriquitofeo, 191228393)
insert into Cliente values(1244534, 'Mario Bros', 83920496, bowserhp@gmail.com, 0, mariobrosesito, 472189293)
insert into Cliente values(53814223, 'Juanito Ramiro',74829271, jaime@gmail.com, 0,juanelpro, 923984291)
insert into Cliente values(17283920, 'Jimena Quiros',75829105, jimenita@gmail.com, 1, jimejime, 256482179)
insert into Cliente values(5902366, 'Jon Snow',748960381, Vheredero@gmail.com, 0, loboblanco, 348912012)
insert into Cliente values(1829317, 'Jaime Lanister',63849145, matareyes@gmail.com, 0, bronnesfeo, 328910804)
insert into Cliente values(23182756, 'Gensen Gold',85830174, suizo@gmail.com, 1, yonose, 981739821)
insert into Cliente values(4892837, 'Ishika Mata',88849371, ishikamandam@gmail.com, 1, aksd31, 8172319823)
insert into Cliente values(596895, 'Maria Ramos',76940174, lamasfea@gmail.com, 1, jmaira3, 18239182398)
*/

--AEROPUERTOS

/*
insert into Aeropuerto values('Anapa', 'Rusia', 'RU')
insert into Aeropuerto values('Al Ain', 'Emirates �rabes Unidos', 'AE')
insert into Aeropuerto values('Altay', 'China', 'CN')
insert into Aeropuerto values('Araxa', 'Brasil', 'BR')
insert into Aeropuerto values('Ambler', 'Estados Unidos', 'US')
insert into Aeropuerto values('Lanzarote', 'Espa�a', 'ES')
insert into Aeropuerto values('Alderney The Blaye', 'Reino Unido', 'GB')
insert into Aeropuerto values('Juan Santamar�a', 'Costa Rica', 'CR')
insert into Aeropuerto values('Bologna Guglielmo Marconi', 'Italia', 'IT')
insert into Aeropuerto values('Nashville International', 'Estados Unidos', 'US')
insert into Aeropuerto values('Ciudad Obregon', 'M�xico', 'MX')
insert into Aeropuerto values('Caen Carpique', 'Francia', 'FR')
insert into Aeropuerto values('Cobija E Beltram', 'Bolivia', 'BO')
insert into Aeropuerto values('Cajamarca', 'Peru', 'PE')
insert into Aeropuerto values('', 'Chile', 'CL')
insert into Aeropuerto values('Catamarca', 'Argentina', 'AR')
insert into Aeropuerto values('Sapporo Chitose', 'Jap�n', 'JP')
insert into Aeropuerto values('Vancouver Coal Harbour', 'Canada', 'CA')
insert into Aeropuerto values('David Enrique Malek', 'Panama', 'PA')
insert into Aeropuerto values('Eisenach', 'Alemania', 'DE')
insert into Aeropuerto values('Galapagos Is Baltra', 'Ecuador', 'EU')
insert into Aeropuerto values('Grimsey', 'Islandia', 'IS')
insert into Aeropuerto values('Guatemala City La Aurora', 'Guatemala', 'GT')
insert into Aeropuerto values('Gavle Sandviken', 'Suecia', 'SE')
insert into Aeropuerto values('Gwalior', 'India', 'IN')
*/

--ESTUDIANTES

/*
insert into Estudiante values(17283920, 201509974, 100)
insert into Estudiante values(23182756, 201509974, 100)
insert into Estudiante values(4892837, 201509974, 100)
insert into Estudiante values(596895, 201509974, 100)
insert into Estudiante values(12312312, 201509974, 100)
insert into Estudiante values(321323, 201509974, 100)
*/

--UNIVERSIDAD

/*
insert into Universidad values(17283920, Jimena Quiros)
insert into Universidad values(23182756, Gensen Gold)
insert into Universidad values(4892837, Ishika Mata)
insert into Universidad values(596895, Maria Ramos)
insert into Universidad values(12312312, Juan Madrigal)
insert into Universidad values(321323, Enrique Molina)
*/

--MALETAS

/*
insert into Maleta values('A12312' , 12312)
insert into Maleta values('B12312', 12312)
insert into Maleta values('A783', 12312)
insert into Maleta values('B271', 321323)
insert into Maleta values('C9831', 1244534)
insert into Maleta values('D1231', 1244534)
insert into Maleta values('A41231', 53814223)
insert into Maleta values('L12313', 17283920)
insert into Maleta values('P82182', 17283920)
insert into Maleta values('N128312', 17283920)
insert into Maleta values('J2183', 17283920)
insert into Maleta values('A19234', 5902366)
insert into Maleta values('A01923', 1829317)
insert into Maleta values('A61934', 1829317)
insert into Maleta values('J93714', 23182756)
insert into Maleta values('L71834', 23182756)
insert into Maleta values('S918293', 4892837)
insert into Maleta values('A813', 596895)
insert into Maleta values('H371', 596895)
insert into Maleta values('HK78172', 596895)
insert into Maleta values('G8293', 596895)
*/

--PESO DE MALETAS

/*
insert into Maleta values('A12312' , 100)
insert into Maleta values('B12312', 199)
insert into Maleta values('A783', 60)
insert into Maleta values('B271', 10)
insert into Maleta values('C9831', 40)
insert into Maleta values('D1231', 124)
insert into Maleta values('A41231', 53)
insert into Maleta values('L12313', 120)
insert into Maleta values('P82182', 10)
insert into Maleta values('N128312', 20)
insert into Maleta values('J2183', 83)
insert into Maleta values('A19234', 59)
insert into Maleta values('A01923', 317)
insert into Maleta values('A61934', 182)
insert into Maleta values('J93714', 231)
insert into Maleta values('L71834', 82)
insert into Maleta values('S918293', 48)
insert into Maleta values('A813', 56)
insert into Maleta values('H371', 85)
insert into Maleta values('HK78172', 95)
insert into Maleta values('G8293', 68)
*/

--TIQUETES POR AHORA SIN TIPO DE AVION

/*
insert into Tiquete values('T11', 1, 'A12312')
insert into Tiquete values('T21', 2, 'B12312')
insert into Tiquete values('T31', 1, 'A783')
insert into Tiquete values('T24', 3, 'B271')
insert into Tiquete values('T35', 2, 'C9831')
insert into Tiquete values('T36', 3, 'D1231')
insert into Tiquete values('T163', 2, 'A41231')
insert into Tiquete values('T41', 4, 'L12313')
insert into Tiquete values('T49', 5, 'P82182')
insert into Tiquete values('T25', 5, 'N128312')
insert into Tiquete values('T294', 5, 'J2183')
insert into Tiquete values('T42', 3, 'A19234')
insert into Tiquete values('T44', 6, 'A01923')
insert into Tiquete values('T22', 2, 'A61934')
insert into Tiquete values('T33', 7, 'J93714')
insert into Tiquete values('T29', 1, 'L71834')
insert into Tiquete values('T289', 6, 'S918293')
insert into Tiquete values('T382', 2, 'A813')
insert into Tiquete values('T412', 5, 'H371')
insert into Tiquete values('T312', 9, 'HK78172')
insert into Tiquete values('T212', 10, 'G8293')
*/

--TIPOS DE AVIONES POR AHORA

/*
insert into Avion values('X8213', 400)
insert into Avion values('Z120', 300)
insert into Avion values('Y40', 350)
insert into Avion values('X189', 200)

*/

--AVION CLASES

/*
insert into Avion values('X8213', 50, 350)
insert into Avion values('Z120 25, 275)
insert into Avion values('Y40', 30, 320)
insert into Avion values('X189', 10, 190)
*/

--ASISTENTE DE VUELO

/*
insert into AsistenteVuelo values('AV1', 'primerE@gmail.com')
insert into AsistenteVuelo values('AV2', 'segundE@gmail.com')
insert into AsistenteVuelo values('AV3', 'tercerE@gmail.com')
insert into AsistenteVuelo values('AV4', 'cuartoE@gmail.com')
insert into AsistenteVuelo values('AV5', 'quintoE@gmail.com')
insert into AsistenteVuelo values('AV6', 'sextoE@gmail.com')
insert into AsistenteVuelo values('AV7', 'setimoE@gmail.com')
insert into AsistenteVuelo values('AV8', 'octavoE@gmail.com')
insert into AsistenteVuelo values('AV9', 'novenoE@gmail.com')
insert into AsistenteVuelo values('AV10', 'decimoE@gmail.com')
*/

--NOMBRE DEL ASISTENTE DE VUELO

/*
insert into AsistenteVuelo values('AV1', Juan Ama�o)
insert into AsistenteVuelo values('AV2', 'Raquel Sanchez')
insert into AsistenteVuelo values('AV3', 'Mauricio Campos')
insert into AsistenteVuelo values('AV4', 'Arnoldo Montero')
insert into AsistenteVuelo values('AV5', 'Leonardo Delgado')
insert into AsistenteVuelo values('AV6', 'Aquiles Mando')
insert into AsistenteVuelo values('AV7', 'Oscar Arias')
insert into AsistenteVuelo values('AV8', 'Miguel Trujillo')
insert into AsistenteVuelo values('AV9', 'Alejandro Fernandez')
insert into AsistenteVuelo values('AV10', 'Eva Corrales')
*/

--ASIENTO DE AVION

/*
insert into Asiento values(T11, 100, 'E')
insert into Asiento values(T21, 49, 'P')
insert into Asiento values(T31, 20, 'P')
insert into Asiento values(T24, 10, 'P')
insert into Asiento values(T35, 390, 'E')
insert into Asiento values(T36, 200, 'E')
insert into Asiento values(T163, 3, 'P')
insert into Asiento values(T41, 129, 'E')
insert into Asiento values(T49, 104, 'E')
insert into Asiento values(T25, 102, 'E')
insert into Asiento values(T294, 150, 'E')
insert into Asiento values(T42, 160, 'E')
insert into Asiento values(T44, 123, 'E')
insert into Asiento values(T22, 93, 'E')
insert into Asiento values(T33, 59, 'E')
insert into Asiento values(T29, 42, 'P')
insert into Asiento values(T289, 152, 'E')
insert into Asiento values(T382, 40, 'P')
insert into Asiento values(T412, 294, 'E')
insert into Asiento values(T312, 185, 'E')
insert into Asiento values(T212, 285, 'E')
*/

--ESCALA

/*
insert into Escala values('E1', 3, 4359, 'Anapa', 'Lanzarote', 15/02, 15/02, 8)
insert into Escala values('E2', 3, 5605, 'Lanzarote', 'Ciudad Obregon', 16/02, 16/02, 10)
insert into Escala values('E3', 3, 2132, 'Ciudad Obregon', 'Juan Santamar�a', 17/02, 17/02, 4)
insert into Escala values('E4', 2, 3236, 'Calama El Loa', 'Juan Santamar�a', 10/12, 10/12, 6)
insert into Escala values('E5', 2, 2900.8 , 'Juan Santamar�a', 'Nashville International', 10/02, 11/02, 5)
*/

-- CANTIDAD DE ESCALAS

/*
insert into CEscala values('E1', 'V1')
insert into CEscala values('E2', 'V1')
insert into CEscala values('E3', 'V1')
insert into CEscala values('E4', 'V2')
insert into CEscala values('E5', 'V2')
*/

--VUELO

/*
insert into Vuelo values('V1', 500, 230, 400)
insert into Vuelo values('V2', 400, 300, 600)
*/

--RESERVACION REVISAR QUE EL TIPO DE AVION SE VA A REPETIR

/*
insert into Reservacion values('R1', 'X8213', '17283920')
insert into Reservacion values('R2', 'X8213', '1244534')
insert into Reservacion values('R3', 'X8213', '596895')
insert into Reservacion values('R4', 'Z120', '1829317')
insert into Reservacion values('R5', 'Z120', '596895')
*/

--PROMOCION

/*
insert into Promocion values('P1', 200, 16/02)
*/