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

CREATE PROC TEST--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	@NombreComp VARCHAR(50)
	AS
	SELECT * FROM Cliente WHERE NombreComp = @NombreComp --Contenido del procedimiento

exec TEST 'Juan Madrigal' --Ejecucion pasando los valores


	--							@Pasaporte (auto creo), @NombreComp,    @Tel,		@Correo,			@Si es estudiante o no, @Contra,	 @#tarjeta
-- insert into Cliente values(12312312,				  'Juan Madrigal', 88493012, 'juancito@gmail.com',  1,						'junito91',	 199283928)











CREATE PROC CrearCliente
	@Pasaporte VARCHAR(50),
	@NombreComp VARCHAR(50),
	@Telefono INTEGER,
	@Correo VARCHAR(50),
	@Estudiante BIT,
	@Contraseña VARCHAR(50),
	@NTarjeta INTEGER

AS
	insert into Cliente values(@Pasaporte, @NombreComp, @Telefono, @Correo, @Estudiante, @Contraseña, @NTarjeta)
	IF @Estudiante = 1?
		insert into Estudiante values ( @Pasaporte, @Carné, 0)





		-----------------------------------------------------------------------------------

CREATE PROC NuevaReservacion
	@Pasaporte VARCHAR(50), -- le debe ser inyectado el pasaporte del cliente que hace la reservacion
	@TAvion VARCHAR(50), -- supongo que el tipo de avion
	@Vuelo VARCHAR(50), ----- uso????
	@PTotalM INTEGER, -- supongo que preguntar con "count" la cantidad total de maletas asociadas al cliente....?
	@NAsiento INTEGER, -- Número o numeros de asiento.... cómo se haría para pasarle mas de uno....?
	@Categoria VARCHAR(50) -- la categoría va conectada a el asiento no?, si es asiendo en primera clase o no

AS
	insert into Reservacion values(@Pasaporte, 'Reservo')
	-- @PTotalM = count maletas de cliente
	insert into Maleta values( @Pasaporte, @PTotalM)
	insert into Asiento (@NAsiento, @Categoria)

	-- agregar Try - catch y que devuelva error si no se pudo: 'Hubo un problema con la reservación'

exec NuevaReservacion PASAPORTE, TIPOAVION, xIDVUELOx,  --Ejecucion pasando los valores










CREATE PROC NuevaAsistVuelo
	@Correo
AS
	insert into AsistenteVuelo valeus(@Correo)


CREATE PROC NuevoVuelo
	@Precio
	@CantPasajeros
	@CantMaletas
	@NEscalas
	@Millas
	@AeSalida
	@AeLlegada
	@FechaSalida
	@FechaLlegada

AS
BEGIN
	into insert Vuelo values(@Precio,@CantiPasajeros, @CantMaletas)
	into insert Escala values(@NEscalas, @Millas, @AeSalida, @AeLlegada, @FechaSalida, @FechaLlegada)
	into insert Ruta values(@AeSalida, @AeLlegada)

END
GO


CREATE PROC NuevoAvion
	@Tipo
	@AsientoDisponibles
	@PrimClase
	@EClase

AS
BEGIN
	insert into Avion values(@Tipo, @AsientoDisponibles)
	insert into TAvion values(@Tipo, @PrimClase, @EClase)

END
GO
