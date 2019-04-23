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
	Asiento INTEGER NOT NULL,
	IDMaleta VARCHAR(50) NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Universidad (
  Carné INTEGER NOT NULL,
  NombreComp VARCHAR(50) NOT NULL,
  PRIMARY KEY(Carné)
);

CREATE TABLE Estudiante (
  Pasaporte VARCHAR(50) NOT NULL,
  Carné VARCHAR(50) NOT NULL,
  MillasE INTEGER NOT NULL,
  PRIMARY KEY(Carné)
);

CREATE TABLE Avión (
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
	Categoría VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Cliente (
	Pasaporte INTEGER NOT NULL,
	NombreComp VARCHAR(50) NOT NULL,
	Teléfono INTEGER NOT NULL,
	Correo VARCHAR(50) NOT NULL,
	Estudiante BIT NOT NULL,
	Contraseña VARCHAR(50) NOT NULL,
	NTarjeta INTEGER NOT NULL,
	PRIMARY KEY(Pasaporte)
);

CREATE TABLE Escala (
	IDVuelo VARCHAR(50) NOT NULL,
	Numero INTEGER NOT NULL,
	Millas INTEGER NOT NULL,
	AeSalida VARCHAR(50) NOT NULL,
	AeLlegada VARCHAR(50) NOT NULL,
	FechaSalida VARCHAR(50) NOT NULL,
	FechaLlegada VARCHAR(50) NOT NULL,
	Duración INTEGER NOT NULL,
	PRIMARY KEY(IDVuelo)
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
  País VARCHAR(50) NOT NULL,
  CodigoP VARCHAR(5) NOT NULL,
  PRIMARY KEY(Nombre)
);

CREATE TABLE Reservación (
  IDReservacion INTEGER NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Promoción (
	IDPromo VARCHAR(50) NOT NULL,
	Costo INTEGER NOT NULL,
	Fecha DATE NOT NULL,
	PRIMARY KEY(IDPromo)
);


*/

--PASAJEROS

/*
insert into Pasajero values(12312, 'Juan Madrigal','', 555, 1, 3, 199283928)
insert into Pasajero values(321323, 'Enrique Molina','', 12392, 0, 1, 191228393)
insert into Pasajero values(1244534, 'Mario Bros','', 4231, 1, 2, 472189293)
insert into Pasajero values(53814223, 'Juanito Ramiro','', 123, 1, 1, 923984291)
insert into Pasajero values(17283920, 'Jimena Quiros','', 12938, 1, 4, 256482179)
insert into Pasajero values(5902366, 'Jon Snow','', 34589, 1, 1, 348912012)
insert into Pasajero values(1829317, 'Jaime Matamoros','', 2849, 1, 2, 328910804)
insert into Pasajero values(23182756, 'Gensen Gold','', 8892, 0, 2, 239092091)
insert into Pasajero values(4892837, 'Ishika Mata','', 5860, 0, 1, 658302182)
insert into Pasajero values(596895, 'Maria Ramos','', 9758, 1, 4, 829103293)
*/

--AEROPUERTOS

/*
insert into Aeropuerto values('Anapa', 'Rusia', 'RU')
insert into Aeropuerto values('Al Ain', 'Emirates Árabes Unidos', 'AE')
insert into Aeropuerto values('Altay', 'China', 'CN')
insert into Aeropuerto values('Araxa', 'Brasil', 'BR')
insert into Aeropuerto values('Ambler', 'Estados Unidos', 'US')
insert into Aeropuerto values('Lanzarote', 'España', 'ES')
insert into Aeropuerto values('Alderney The Blaye', 'Reino Unido', 'GB')
insert into Aeropuerto values('Juan Santamaría', 'Costa Rica', 'CR')
insert into Aeropuerto values('Bologna Guglielmo Marconi', 'Italia', 'IT')
insert into Aeropuerto values('Nashville International', 'Estados Unidos', 'US')
insert into Aeropuerto values('Ciudad Obregon', 'México', 'MX')
insert into Aeropuerto values('Caen Carpique', 'Francia', 'FR')
insert into Aeropuerto values('Cobija E Beltram', 'Bolivia', 'BO')
insert into Aeropuerto values('Cajamarca', 'Peru', 'PE')
insert into Aeropuerto values('Calama El Loa', 'Chile', 'CL')
insert into Aeropuerto values('Catamarca', 'Argentina', 'AR')
insert into Aeropuerto values('Sapporo Chitose', 'Japón', 'JP')
insert into Aeropuerto values('Vancouver Coal Harbour', 'Canada', 'CA')
insert into Aeropuerto values('David Enrique Malek', 'Panama', 'PA')
insert into Aeropuerto values('Eisenach', 'Alemania', 'DE')
insert into Aeropuerto values('Galapagos Is Baltra', 'Ecuador', 'EU')
insert into Aeropuerto values('Grimsey', 'Islandia', 'IS')
insert into Aeropuerto values('Guatemala City La Aurora', 'Guatemala', 'GT')
insert into Aeropuerto values('Gavle Sandviken', 'Suecia', 'SE')
insert into Aeropuerto values('Gwalior', 'India', 'IN')
*/

--CLIENTES
/*
insert into Cliente values('Juan Madrigal', 88826374,'tasdk@gmail.com', 1, 'TEC', '20150838381',50)
insert into Cliente values('Enrique Molina', 894625183,'hfk2@gmail.com', 1, 'UCR', 'BC313', 100)
insert into Cliente values('Mario Bros', 829192421,'jks3@gmail.com', 0, '', '', 0)
insert into Cliente values('Juanito Ramiro', 20129321,'ramiro@gmail.com', 1, 'UNA', 'BAS212', 500)
insert into Cliente values('Jimena Quiros', 839207412,'jime@gmail.com', 1, 'TEC', '2010239302', 200)
insert into Cliente values('Jon Snow', 9402812,'guardiaN@gmail.com', 0, '', '', 0)
insert into Cliente values('Jaime Matamoros', 82936192,'hask@gmail.com', 0, '', '', 0)
insert into Cliente values('Gensen Gold', 61823921,'gen@gmail.com', 0, '', '', 0)
insert into Cliente values('Ishika Mata', 78218293,'ishi@gmail.com', 1, 'UCR', 'BC231', 50)
insert into Cliente values('Maria Ramos', 74939203,'mari@gmail.com', 1, 'TEC', '2014102802', 300)
*/

--MALETAS
/*
insert into Maleta values('A12312',29 , 12312)
insert into Maleta values('B12312', 43, 12312)
insert into Maleta values('A783', 10, 12312)
insert into Maleta values('B271', 20, 321323)
insert into Maleta values('C9831', 32, 1244534)
insert into Maleta values('D1231', 41, 1244534)
insert into Maleta values('A41231', 13, 53814223)
insert into Maleta values('L12313', 19, 17283920)
insert into Maleta values('P82182', 25, 17283920)
insert into Maleta values('N128312', 22, 17283920)
insert into Maleta values('J2183', 28, 17283920)
insert into Maleta values('A19234', 30, 5902366)
insert into Maleta values('A01923', 34, 1829317)
insert into Maleta values('A61934', 23, 1829317)
insert into Maleta values('J93714', 100, 23182756)
insert into Maleta values('L71834', 28, 23182756)
insert into Maleta values('S918293',64 , 4892837)
insert into Maleta values('A813',30 , 596895)
insert into Maleta values('H371', 21, 596895)
insert into Maleta values('HK78172',34 , 596895)
insert into Maleta values('G8293', 19, 596895)
*/