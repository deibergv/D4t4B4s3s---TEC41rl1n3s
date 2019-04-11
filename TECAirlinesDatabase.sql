USE TECAirlines

CREATE TABLE Tiquete (
	ID INTEGER NOT NULL,
	Asiento INTEGER NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Escala (
  Millas INTEGER NOT NULL,
  Duración INTEGER NOT NULL,
  Fecha INTEGER NOT NULL
);

CREATE TABLE Pasajero (
  Pasaporte INTEGER NOT NULL,
  Nombre VARCHAR NOT NULL,
  Estado VARCHAR NOT NULL,
  Reservacion INTEGER NOT NULL,
  Tiquete BIT NOT NULL,
  CantidadMaletas INTEGER NOT NULL,
  NTarjeta INTEGER NOT NULL,
  PRIMARY KEY(Pasaporte)
);

CREATE TABLE Aeropuerto (
  Nombre VARCHAR(15) NOT NULL
);

CREATE TABLE Vuelo (
  Pasajeros VARCHAR NOT NULL,
  CantMaletas INTEGER NOT NULL,
  Ruta INTEGER NOT NULL,
  Fecha INTEGER NOT NULL,
  Destino VARCHAR NOT NULL,
  PesoTotal INTEGER NOT NULL
);

CREATE TABLE Cliente (
  NombreComp VARCHAR NOT NULL,
  Teléfono INTEGER NOT NULL,
  Correo VARCHAR NOT NULL,
  Estudiante BIT NOT NULL,
  InfoU VARCHAR NOT NULL,
  Carné INTEGER NOT NULL,
  millasEstudiante INTEGER NOT NULL,
  PRIMARY KEY(Correo)
);

CREATE TABLE Asiento (
  Numero INTEGER NOT NULL,
  Categoría VARCHAR NOT NULL
);

CREATE TABLE Promoción (
  Costo INTEGER NOT NULL,
  Ruta VARCHAR NOT NULL,
  Fecha VARCHAR NOT NULL
);

CREATE TABLE Universidad (
  NombreComp VARCHAR NOT NULL,
  MIllaEstudiante INTEGER NOT NULL,
  Carné INTEGER NOT NULL
);

CREATE TABLE AsistenteVuelo (
  ID VARCHAR NOT NULL,
  Nombre VARCHAR NOT NULL,
  Correo VARCHAR NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Maleta (
  codigoM VARCHAR NOT NULL,
  peso INTEGER NOT NULL,
  IDPropetario INTEGER NOT NULL,
  InfoU VARCHAR NOT NULL,
  PRIMARY KEY(codigoM)
);

CREATE TABLE Avión (
  Tipo VARCHAR NOT NULL,
  ID VARCHAR NOT NULL,
  AsientosDisponibles BIT NOT NULL,
  PrimClase INTEGER NOT NULL,
  EconClase INTEGER NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Reservación (
  ID INTEGER NOT NULL,
  CantidadTiquetes INTEGER NOT NULL,
  IDPropietario VARCHAR NOT NULL,
  PRIMARY KEY(ID)
);
