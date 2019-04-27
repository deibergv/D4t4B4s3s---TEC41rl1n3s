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
	NTarjeta INTEGER NOT NULL,
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
  Pais VARCHAR(50) NOT NULL,
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
	IDTiquete INTEGER IDENTITY(1,1) NOT NULL,
	IDReservacion INTEGER NOT NULL,
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
  PRIMARY KEY(ID)
);

CREATE TABLE Asiento (
	IDTiquete INTEGER,
	Numero INTEGER NOT NULL,
	Categoria VARCHAR(50) NOT NULL,
	PRIMARY KEY(IDTiquete)
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
	Precio INTEGER NOT NULL,
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
			insert into Universidad values(@Carne, @NombreU)
		--ELSE
			--SELECT 'No es estudiante'
	END


CREATE PROC NuevaReservacion
	@Pasaporte INTEGER, 
	@TAvion VARCHAR(50), 
	@Vuelo INTEGER,
	@PTotalM INTEGER, 
	@NAsiento INTEGER, 
	@Categoria VARCHAR(50),
	@IDTiquete INTEGER


AS
	BEGIN
		BEGIN TRY
			insert into Reservacion values(@Pasaporte, 'Reservo')
			insert into Maleta values(@Pasaporte)
			insert into Asiento values(@IDTiquete, @NAsiento, @Categoria)
		END TRY
		BEGIN CATCH
			SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		END CATCH
	END




--PROCEDIMIENTO PARA AGREGAR UN NUEVO ASISTENTE DE VUELo
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

/* NO SIRVE PARA NADA CREO
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
	BEGIN TRY
		insert into Vuelo values(@Precio, @CantPasajeros, @CantMaletas)
		insert into Escala values(@NEscalas, @Millas, @AeSalida, @AeLlegada, @FechaSalida, @FechaLlegada, @Duracion)
		insert into Ruta values(1, @AeSalida, @AeLlegada)
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH

*/
--AGREGAR PASAJEROS Y MALETAS A UN VUELO
CREATE PROC AgregarAlVuelo
	@IDVuelo INTEGER,
	@CantPasajeros INTEGER,
	@CantMaletas INTEGER
AS
BEGIN
	BEGIN TRY	
		BEGIN UPDATE Vuelo
			SET @CantMaletas += CantMaletas
			WHERE @IDVuelo = Vuelo.IDVuelo
		END
		BEGIN UPDATE Vuelo
			SET @CantPasajeros += CPasajeros
			WHERE @IDVuelo = Vuelo.IDVuelo
		END
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END

--FALTA VALIDAR TOP
--AGREGAR DE UN ASIENTO EN UN ASIENTO
--AGREGAR ASIENTOS A UN AVION EN UN VUELO

CREATE PROC AgregarAsiento
	@IDTiquete INTEGER,
	@IDReservacion INTEGER,
	@Categoria VARCHAR(50)

AS
BEGIN
	DECLARE @ADisponibles BIT
	SELECT @ADisponibles = AsientosDisponibles FROM Avion
	DECLARE @ReservacionID INTEGER
	SELECT @ReservacionID = IDReservacion FROM TReservacion
	DECLARE @RIDAvion INTEGER
	SELECT @RIDAvion = IDAvion FROM TReservacion
	DECLARE @AvionID INTEGER
	SELECT @AvionID = IDAvion FROM TAvion
	DECLARE @TiqueteID INTEGER
	SELECT @TiqueteID = IDTiquete FROM Tiquete
	DECLARE @TiqueteRID INTEGER
	SELECT @TiqueteRID = IDReservacion FROM Tiquete
	DECLARE @TiqueteAID INTEGER
	SELECT @TiqueteAID = IDTiquete FROM Asiento
	BEGIN TRY
		IF @ADisponibles = 1 --1 = TRUE
			BEGIN UPDATE Avion
				SET Avion.AsientosTotales += 1
				WHERE @IDReservacion =  @ReservacionID AND @RIDAvion = @AvionID
			END
			IF @Categoria = 'P' --PRIMERA CLASE
				BEGIN UPDATE TAvion
					SET PrimClase += 1
					WHERE @AvionID = @RIDAvion AND @ReservacionID = @TiqueteRID AND @TiqueteID = @TiqueteAID
				END
			ELSE
				BEGIN UPDATE TAvion
					SET EconClase += 1
					WHERE @AvionID = @RIDAvion AND @ReservacionID = @TiqueteRID AND @TiqueteID = @TiqueteAID
				END
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END
				

/*
CREATE PROC AgregarAsiento
	@IDTiquete INTEGER,
	@IDReservacion INTEGER,
	@Categoria VARCHAR(50)

AS
BEGIN
	DECLARE @ADisponibles BIT
	SELECT @ADisponibles = AsientosDisponibles FROM Avion
	DECLARE @ReservacionID INTEGER
	SELECT @ReservacionID = IDReservacion FROM TReservacion
	DECLARE @RIDAvion INTEGER
	SELECT @RIDAvion = IDAvion FROM TReservacion
	DECLARE @AvionID INTEGER
	SELECT @AvionID = IDAvion FROM TAvion
	DECLARE @TiqueteID INTEGER
	SELECT @TiqueteID = IDTiquete FROM Tiquete
	DECLARE @TiqueteRID INTEGER
	SELECT @TiqueteRID = IDReservacion FROM Tiquete
	DECLARE @TiqueteAID INTEGER
	SELECT @TiqueteAID = IDTiquete FROM Asiento
	BEGIN TRY
		IF @ADisponibles = 1 --1 = TRUE
			BEGIN UPDATE Avion
				SET Avion.AsientosTotales += 1
				WHERE @IDReservacion =  @ReservacionID AND @RIDAvion = @AvionID
			END
			IF @Categoria = 'P' --PRIMERA CLASE
				BEGIN UPDATE TAvion
					SET PrimClase += 1
					WHERE @AvionID = @RIDAvion AND @ReservacionID = @TiqueteRID AND @TiqueteID = @TiqueteAID
				END
			ELSE
				BEGIN UPDATE TAvion
					SET EconClase += 1
					WHERE @AvionID = @RIDAvion AND @ReservacionID = @TiqueteRID AND @TiqueteID = @TiqueteAID
				END
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
END
		
*/

CREATE PROC Promocion
AS
	BEGIN
		SELECT DISTINCT Vuelo.IDVuelo, AeInicial, AeFinal, Promocion.Costo
		FROM Promocion, Ruta, Vuelo
		WHERE Promocion.IDVuelo = Vuelo.IDVuelo AND Vuelo.IDVuelo = Ruta.IDVuelo

			
		
		


/*
 NO SIRVE PARA NADA CREO
--PROCEDIMIENTO PARA CREAR UN NUEVO AVION
CREATE PROC NuevoAvion
	@Tipo VARCHAR(50),
	@AsientoDisponibles BIT,
	@PrimClase INTEGER,
	@EClase INTEGER,
	@AsientosTotales INTEGER

AS
	BEGIN TRY
		insert into Avion values(@Tipo, @AsientoDisponibles, @AsientoDisponibles)
		insert into TAvion values(@Tipo, @PrimClase, @EClase)
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
	END CATCH
*/

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

--PROMOCION

--TRIGGERS

CREATE TRIGGER Historial
  ON Cliente FOR INSERT
  AS
  --SET NOCOUNT ON;
  DECLARE @Passport VARCHAR(50)
  SELECT @Passport = Pasaporte FROM inserted 
  DECLARE @Name VARCHAR(50)
  SELECT @Name = NombreComp FROM inserted
  INSERT INTO log_historial VALUES (getdate(), @Passport, @Name)

  DROP TRIGGER Historial

