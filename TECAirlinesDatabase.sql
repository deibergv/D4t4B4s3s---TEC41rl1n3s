-- Script de Populacion de tablas
-- 08/04/19
-- Deiber / Anthony

CREATE DATABASE TECAirlines
USE TECAirlines

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


CREATE TABLE Estudiante ( 
	Carné VARCHAR(50) NOT NULL,
	Pasaporte INTEGER NOT NULL,
	MillasE INTEGER NOT NULL,
	PRIMARY KEY(Carné)
);

CREATE TABLE Universidad ( 
  Carné INTEGER NOT NULL,
  NombreU VARCHAR(50) NOT NULL,
  PRIMARY KEY(Carné)
);

CREATE TABLE Aeropuerto ( 
  Nombre VARCHAR(50) NOT NULL,
  País VARCHAR(50) NOT NULL,
  CodigoP VARCHAR(5) NOT NULL,
  PRIMARY KEY(Nombre)
);

 CREATE TABLE Maleta (
  codigoM INTEGER IDENTITY(1,1) NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  PRIMARY KEY(codigoM)
);

CREATE TABLE PMaleta (
	codigoM  INTEGER IDENTITY(1,1) NOT NULL,
	peso INTEGER NOT NULL,
	PRIMARY KEY(codigoM)
);

CREATE TABLE Tiquete ( 
	ID INTEGER IDENTITY(1,1) NOT NULL,
	IDR INTEGER NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE Avion ( 
	Tipo VARCHAR(50) NOT NULL,
	AsientosDisponibles BIT NOT NULL,
	AsientosTotales INTEGER NOT NULL,
	PRIMARY KEY(Tipo)
);

CREATE TABLE TAvion ( 
	Tipo VARCHAR(50) NOT NULL,
	PrimClase INTEGER NOT NULL,
	EconClase INTEGER NOT NULL,
	PRIMARY KEY(Tipo)
);

CREATE TABLE AsistenteVuelo (
  ID INTEGER IDENTITY(1,1) NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE Asiento (
	IDTiquete INTEGER,
	Numero INTEGER NOT NULL,
	Categoría VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Escala (
	IDEscala INTEGER IDENTITY(1,1) NOT NULL,
	Numero INTEGER NOT NULL,
	Millas INTEGER NOT NULL,
	AeSalida VARCHAR(50) NOT NULL,
	AeLlegada VARCHAR(50) NOT NULL,
	FechaSalida DATETIME NOT NULL,
	FechaLlegada DATETIME NOT NULL,
	Duración INTEGER NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE CEscala(
	IDEscala INTEGER NOT NULL,
	IDVuelo INTEGER NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE Vuelo (
	IDVuelo INTEGER IDENTITY(1,1) NOT NULL, -- Debe tener aumento aumatico (o que se cree un ID único automatico)
	Precio INTEGER NOT NULL,
	CPasajeros INTEGER NOT NULL,
	CantMaletas INTEGER NOT NULL,
	PRIMARY KEY(IDVuelo)
);

CREATE TABLE Reservacion (
  IDReservacion INTEGER IDENTITY(1,1) NOT NULL,
  IDPropietario INTEGER NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  PRIMARY KEY(IDReservacion)
);

CREATE TABLE TReservacion (
	IDReservacion INTEGER NOT NULL,
	TipoA VARCHAR(50) NOT NULL
	PRIMARY KEY(IDReservacion)
);

CREATE TABLE Promocion (
	IDPromo INTEGER IDENTITY(1,1) NOT NULL,
	IDVuelo INTEGER NOT NULL,
	Costo INTEGER NOT NULL,
	Fecha DATETIME NOT NULL,
	PRIMARY KEY(IDPromo)
);

CREATE TABLE Ruta(
	IDVuelo INTEGER NOT NULL,
	AeInicial VARCHAR(50) NOT NULL,
	AeFinal VARCHAR(50) NOT NUll,
	PRIMARY KEY(IDVuelo)
);


--PROCEDIMIENTOS
--PROCEDIMIENTO PARA CREAR NUEVO CLIENTE
CREATE PROC CrearCliente
	@Pasaporte INTEGER,
	@NombreComp VARCHAR(50),
	@Telefono INTEGER,
	@Correo VARCHAR(50),
	@Estudiante BIT,
	@Contraseña VARCHAR(50),
	@NTarjeta INTEGER,
	@NombreU VARCHAR(50),
	@Carne VARCHAR(50),
	@Millas INTEGER

AS
	BEGIN
		insert into Cliente values(@Pasaporte, @NombreComp, @Telefono, @Correo, @Estudiante, @Contraseña, @NTarjeta)
		IF
			@Estudiante = 1
			insert into Estudiante values ( @Pasaporte, @Carne, 0)
		--ELSE
			--SELECT 'No es estudiante'
	END


EXEC CrearCliente 60431231, 'Carlos Araya', 84283249, 'charlie@gmail.com', 1, 'jasdo', 2512839, 'TEC', '2015099874', 0
EXEC CrearCliente 50431231, 'Carlos Angulo', 85283249, 'charlieE@gmail.com', 0, '', 0, '', '', 0

END

CREATE PROC NuevaReservacion
	@Pasaporte INTEGER, 
	@TAvion VARCHAR(50), 
	@Vuelo INTEGER,
	@PTotalM INTEGER, 
	@NAsiento INTEGER, 
	@Categoria VARCHAR(50)

AS
	BEGIN
		insert into Reservacion values(@Pasaporte, 'Reservo')
		insert into Maleta values(@Pasaporte)
		insert into Asiento values(@NAsiento, @Categoria)
	END

	-- agregar Try - catch y que devuelva error si no se pudo: 'Hubo un problema con la reservación'

--PROCEDIMIENTO PARA AGREGAR UN NUEVO ASISTENTE DE VUELo
CREATE PROC NuevaAsistVuelo
	@Correo VARCHAR(50)
AS
	insert into AsistenteVuelo values(@Correo)

--PROCEDIMIENTO PARA CREAR UN NUEVO VUELO
CREATE PROC NuevoVuelo
	@Precio INTEGER,
	@CantPasajeros INTEGER,
	@CantMaletas INTEGER,
	@NEscalas INTEGER,
	@Millas INTEGER,
	@AeSalida VARCHAR(50),
	@AeLlegada VARCHAR(50),
	@FechaSalida DATETIME,
	@FechaLlegada DATETIME,
	@Duracion INTEGER

AS
	BEGIN
		insert into Vuelo values(@Precio, @CantPasajeros, @CantMaletas)
		insert into Escala values(@NEscalas, @Millas, @AeSalida, @AeLlegada, @FechaSalida, @FechaLlegada, @Duracion)
		insert into Ruta values(@AeSalida, @AeLlegada)
	END




EXEC NuevoVuelo 500, 20, 20, 2, 100, 'Juan Santamaría', 'Ambler', '12/04/2018', '12/04/2014'
--PROCEDIMIENTO PARA CREAR UN NUEVO AVION
CREATE PROC NuevoAvion
	@Tipo VARCHAR(50),
	@AsientoDisponibles BIT,
	@PrimClase VARCHAR(50),
	@EClase VARCHAR(50)

AS
	BEGIN
		insert into Avion values(@Tipo, @AsientoDisponibles)
		insert into TAvion values(@Tipo, @PrimClase, @EClase)
	END

