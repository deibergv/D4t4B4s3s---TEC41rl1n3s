-- Script de Populacion de tablas
-- 08/04/19
-- Deiber / Anthony

CREATE DATABASE TECAirlines
USE TECAirlines

CREATE TABLE Cliente ( 
	Pasaporte VARCHAR(50) NOT NULL,
	NombreComp VARCHAR(50) NOT NULL,
	Telefono INTEGER NOT NULL,
	Correo VARCHAR(50) NOT NULL,
	Estudiante BIT NOT NULL,
	Pass VARCHAR(50) NOT NULL,
	NTarjeta VARCHAR(50) NOT NULL,
	PRIMARY KEY(Pasaporte)
);


CREATE TABLE Estudiante ( 
	Carne VARCHAR(50) NOT NULL,
	Pasaporte VARCHAR(50) NOT NULL,
	MillasE INTEGER NOT NULL,
	PRIMARY KEY(Carne)
);

CREATE TABLE Universidad ( 
  Carne VARCHAR(50) NOT NULL,
  NombreU VARCHAR(50) NOT NULL,
  PRIMARY KEY(Carne)
);

CREATE TABLE Aeropuerto ( 
  Nombre VARCHAR(50) NOT NULL,
  CodigoIA VARCHAR(50) NOT NULL,
  CodigoP VARCHAR(5) NOT NULL,
  Pais VARCHAR(50) NOT NULL,
  PRIMARY KEY(Nombre)
);

 CREATE TABLE Maleta (
  codigoM INTEGER IDENTITY(1,1) NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  PRIMARY KEY(codigoM)
);


CREATE TABLE PMaleta (
	codigoM  INTEGER NOT NULL,
	peso INTEGER NOT NULL,
	PRIMARY KEY(codigoM)
);

CREATE TABLE Tiquete ( 
	IDTiquete INTEGER IDENTITY(1,1) NOT NULL,
	IDReservacion INTEGER NOT NULL
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Avion (
	IDAvion INTEGER IDENTITY(1, 1) NOT NULL,
	AsientosDisponibles BIT NOT NULL,
	AsientosTotales INTEGER NOT NULL,
	PRIMARY KEY(IDAvion)
);

CREATE TABLE TAvion ( 
	IDAvion INTEGER NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	PrimClase INTEGER NOT NULL,
	EconClase INTEGER NOT NULL,
	PRIMARY KEY(IDAvion)
);

CREATE TABLE AsistenteVuelo (
  IDAsist INTEGER IDENTITY(1,1) NOT NULL,
  Correo VARCHAR(50) NOT NULL,
  PRIMARY KEY(IDAsist)
);

CREATE TABLE Asiento (
	IDTiquete INTEGER,
	Numero INTEGER NOT NULL,
	Categoria VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
);

CREATE TABLE Precio(
	IDVuelo INTEGER NOT NULL,
	IDTiquete INTEGER NOT NULL,
	CEconomico INTEGER NOT NULL,
	CPrim INTEGER NOT NULL,
	PRIMARY KEY(IDVuelo)
);

CREATE TABLE Escala (
	IDEscala INTEGER IDENTITY(1,1) NOT NULL,
	Millas INTEGER NOT NULL,
	AeSalida VARCHAR(50) NOT NULL,
	AeLlegada VARCHAR(50) NOT NULL,
	FechaSalida DATETIME NOT NULL,
	FechaLlegada DATETIME NOT NULL,
	Duración INTEGER NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE CEscala (
	IDEscala INTEGER NOT NULL,
	IDVuelo INTEGER NOT NULL,
	PRIMARY KEY(IDEscala)
);

CREATE TABLE Vuelo (
	IDVuelo INTEGER IDENTITY(1,1) NOT NULL, -- Debe tener aumento aumatico (o que se cree un ID único automatico)
	CPasajeros INTEGER NOT NULL,
	CantMaletas INTEGER NOT NULL,
	PRIMARY KEY(IDVuelo)
);

CREATE TABLE Reservacion (
  IDReservacion INTEGER IDENTITY(1,1) NOT NULL,
  IDPropietario VARCHAR(50) NOT NULL,
  Estado VARCHAR(50) NOT NULL,
  PRIMARY KEY(IDReservacion)
);

CREATE TABLE TReservacion (
	IDReservacion INTEGER NOT NULL,
	IDAvion INTEGER NOT NULL,
	IDVuelo INTEGER NOT NULL,
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
	IDRuta INTEGER IDENTITY(1,1) NOT NULL,
	IDVuelo INTEGER NOT NULL,
	AeInicial VARCHAR(50) NOT NULL,
	AeFinal VARCHAR(50) NOT NUll,
	PRIMARY KEY(IDRuta)
);

CREATE TABLE log_historial (
  Fecha DATETIME,
  Pasaporte VARCHAR(50),
  Nombre VARCHAR(50)
);

CREATE TABLE BackupMaleta (
	Fecha DATETIME,
	CodigoM INTEGER,
	PropietarioID VARCHAR(50)
);

--PROCEDIMIENTOS
--PROCEDIMIENTO PARA CREAR NUEVO CLIENTE
CREATE PROC CrearCliente
	@Pasaporte VARCHAR(50),
	@NombreComp VARCHAR(50),
	@Telefono INTEGER,
	@Correo VARCHAR(50),
	@Estudiante BIT,
	@Contraseña VARCHAR(50),
	@NTarjeta VARCHAR(50),
	@NombreU VARCHAR(50),
	@Carne VARCHAR(50),
	@Millas INTEGER

AS
	BEGIN TRY
		insert into Cliente values(@Pasaporte, @NombreComp, @Telefono, @Correo, @Estudiante, @Contraseña, @NTarjeta)
		IF
			@Estudiante = 1
			insert into Estudiante values ( @Pasaporte, @Carne, 0)
			insert into Universidad values(@Carne, @NombreU)
	 END TRY
		BEGIN CATCH
			SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		END CATCH


CREATE PROC NuevaReservacion
	@Pasaporte VARCHAR(50),
	@CantMaletas INTEGER

AS
	BEGIN
		BEGIN TRY
			
			insert into Reservacion values(@Pasaporte, 'Reservo')
			DECLARE @intFlag INT
			SET @intFlag = 1
			WHILE (@intFlag <= @CantMaletas)
			BEGIN
				insert into Maleta values(@Pasaporte)
				SET @intFlag = @intFlag + 1
			END
		END TRY
		BEGIN CATCH
			SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		END CATCH
	END


/*
CREATE PROC NuevoTiquete
	@IDReservacion INTEGER,
	@ClaseAsiento VARCHAR(50)

AS
	BEGIN
		DECLARE @CategoriaAsiento VARCHAR(50)
		SELECT @CategoriaAsiento = Categoria FROM Asiento WHERE */

CREATE PROC NuevaAsistVuelo
	@Correo VARCHAR(50)
AS
BEGIN
	BEGIN TRY
		insert into AsistenteVuelo values(@Correo)
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END


--AGREGAR PASAJEROS Y MALETAS A UN VUELO
CREATE PROC AgregarAlVuelo
	@IDVuelo INTEGER,
	@CantPasajeros INTEGER,
	@CantMaletas INTEGER
AS
BEGIN
	BEGIN TRY	
		BEGIN UPDATE Vuelo
			SET Vuelo.CantMaletas += @CantMaletas 
			WHERE @IDVuelo = Vuelo.IDVuelo
		END
		BEGIN UPDATE Vuelo
			SET Vuelo.CPasajeros += @CantPasajeros 
			WHERE @IDVuelo = Vuelo.IDVuelo
		END
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END

--AGREGAR DE UN ASIENTO EN UN ASIENTO
--AGREGAR ASIENTOS A UN AVION EN UN VUELO

CREATE PROC AgregarAsiento
	@IDTiquete INTEGER,
	@IDReservacion INTEGER,
	@Categoria VARCHAR(50),
	@NAsiento INTEGER

AS
BEGIN
	DECLARE @IDAvion INTEGER
	SELECT @IDAvion = IDAvion FROM TReservacion WHERE @IDReservacion = TReservacion.IDReservacion
	DECLARE @ADisponibles BIT
	SELECT @ADisponibles = AsientosDisponibles FROM Avion WHERE IDAvion = @IDAvion  
	BEGIN TRY
	INSERT INTO Asiento VALUES(@IDTiquete, @NAsiento, @Categoria)
		IF @ADisponibles = 1 --1 = TRUE
			BEGIN UPDATE Avion
				SET Avion.AsientosTotales = Avion.AsientosTotales + 1
				WHERE Avion.IDAvion = @IDAvion
			END
			IF @Categoria = 'P' --PRIMERA CLASE
				BEGIN UPDATE TAvion
					SET PrimClase += 1
					WHERE TAvion.IDAvion = @IDAvion
				END
			ELSE
				BEGIN UPDATE TAvion
					SET EconClase += 1
					WHERE TAvion.IDAvion = @IDAvion
				END
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END

CREATE PROC Promo
AS
	BEGIN
		SELECT DISTINCT Vuelo.IDVuelo, AeInicial, AeFinal, Promocion.Costo
		FROM Promocion, Ruta, Vuelo
		WHERE Promocion.IDVuelo = Vuelo.IDVuelo AND Vuelo.IDVuelo = Ruta.IDRuta
	END


CREATE PROC ActualizarMillas
	@Pasaporte VARCHAR(50)
AS
	DECLARE @Carne VARCHAR(50)
	SELECT @Carne = Carne FROM Estudiante WHERE Estudiante.Pasaporte = @Pasaporte
	BEGIN UPDATE Estudiante
		SET MillasE += 100
		WHERE @Carne = Estudiante.Carne
	END
		

--ENVIAR AVION
CREATE PROCEDURE EnviarAvion
AS
BEGIN
	SELECT DISTINCT * FROM Avion
	SELECT * FROM TAvion
END

--ENVIAR RUTA DE VUELO
CREATE PROCEDURE EnviarVuelo
AS
BEGIN
	SELECT IDRuta, Escala.IDEscala, AeSalida, AeLlegada 
	FROM Ruta, CEscala, Escala
	WHERE CEscala.IDEscala = Escala.IDEscala AND CEscala.IDVuelo = Ruta.IDVuelo
END


CREATE PROC EnviarAeropuerto
AS
BEGIN
	SELECT Nombre, CodigoIA ,CodigoP, Pais
	FROM Aeropuerto
END

DROP PROC EnviarAeropuerto

--TRIGGERS
-- TRIGGER QUE RESPALDA DATOS DE CLIENTES Y FECHAS DE REGISTRO
CREATE TRIGGER Historial
  ON Cliente FOR INSERT
  AS
  --SET NOCOUNT ON;
  DECLARE @Passport VARCHAR(50)
  SELECT @Passport = Pasaporte FROM inserted 
  DECLARE @Name VARCHAR(50)
  SELECT @Name = NombreComp FROM inserted
  INSERT INTO log_historial VALUES (getdate(), @Passport, @Name)


-- TIGGRER PARA CONECTAR MALETA CON CLIENTE AL HACERSE UNA RESERVACION
CREATE TRIGGER RespaldoMaletaCliente
  ON Maleta FOR INSERT
  AS
  SET NOCOUNT ON;
  DECLARE @Luggage VARCHAR(50)
  SELECT @Luggage = IDPropietario FROM inserted 
  DECLARE @CodMaleta INTEGER
  SELECT @CodMaleta = codigoM FROM inserted
  INSERT INTO BackupMaleta VALUES (getdate(), @CodMaleta, @Luggage)


  
