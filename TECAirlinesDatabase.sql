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
	ID VARCHAR(50) NOT NULL,
	IDR VARCHAR(50) NOT NULL,
	PRIMARY KEY(ID)
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

CREATE TABLE Asiento (
	IDTiquete VARCHAR(50),
	Numero INTEGER NOT NULL,
	Categoría VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Vuelo (
	IDVuelo VARCHAR(50) NOT NULL, -- Debe tener aumento aumatico (o que se cree un ID único automatico)
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

CREATE TABLE Reservacion (
  IDReservacion VARCHAR(50) NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  PRIMARY KEY(IDReservacion)
);

CREATE TABLE TReservacion (
	IDReservacion VARCHAR(50) NOT NULL,
	TipoA VARCHAR(50) NOT NULL
	PRIMARY KEY(IDReservacion)
);

CREATE TABLE Promocion (
	IDPromo VARCHAR(50) NOT NULL,
	IDVuelo VARCHAR(50) NOT NULL,
	Costo INTEGER NOT NULL,
	Fecha DATETIME NOT NULL,
	PRIMARY KEY(IDPromo)
);

CREATE TABLE Escala (
	IDEscala VARCHAR(50) NOT NULL,
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
	IDEscala VARCHAR(50) NOT NULL,
	IDVuelo VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE Ruta(
	IDVuelo VARCHAR(50) NOT NULL,
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
	insert into Cliente values(@Pasaporte, @NombreComp, @Telefono, @Correo, @Estudiante, @Contraseña, @NTarjeta)
	IF
		@Estudiante = 1
		insert into Estudiante values ( @Pasaporte, @Carne, 0)


EXEC CrearCliente 60431231, 'Carlos Araya', 84283249, 'charlie@gmail.com', 1, 'jasdo', 2512839, 'TEC', '2015099874', 0
EXEC CrearCliente 50431231, 'Carlos Angulo', 85283249, 'charlieE@gmail.com', 0, '', 0, '', '', 0


--PROCEDIMIENTO PARA CREAR UNA RESERVACION
CREATE PROC NuevaReservacion
	@Pasaporte INTEGER, -- le debe ser inyectado el pasaporte del cliente que hace la reservacion
	@TAvion VARCHAR(50), -- supongo que el tipo de avion
	@Vuelo VARCHAR(50), ----- uso????
	@PTotalM INTEGER, -- supongo que preguntar con "count" la cantidad total de maletas asociadas al cliente....?
	@NAsiento INTEGER, -- Número o numeros de asiento.... cómo se haría para pasarle mas de uno....?
	@Categoria VARCHAR(50) -- la categoría va conectada a el asiento no?, si es asiendo en primera clase o no

AS
	insert into Reservacion values(@Pasaporte, 'Reservo')
	-- @PTotalM = count maletas de cliente
	insert into Maleta values( @Pasaporte, @PTotalM)
	insert into Asiento values(@NAsiento, @Categoria)

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
	@FechaLlegada DATETIME

AS
	 insert into Vuelo values(@Precio, @CantPasajeros, @CantMaletas)
	 insert into Escala values(@NEscalas, @Millas, @AeSalida, @AeLlegada, @FechaSalida, @FechaLlegada)
	 insert into Ruta values(@AeSalida, @AeLlegada)

--PROCEDIMIENTO PARA CREAR UN NUEVO AVION
CREATE PROC NuevoAvion
	@Tipo VARCHAR(50),
	@AsientoDisponibles BIT,
	@PrimClase VARCHAR(50),
	@EClase VARCHAR(50)

AS
	insert into Avion values(@Tipo, @AsientoDisponibles)
	insert into TAvion values(@Tipo, @PrimClase, @EClase)