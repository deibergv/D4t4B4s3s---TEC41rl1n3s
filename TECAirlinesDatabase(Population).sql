-- Script de Populacion de tablas
-- 11/04/19
-- Anthony / Deiber

USE TECAirlines

--CLIENTE
insert into Cliente values(12312312, 'Juan Madrigal', 88493012, 'juancito@gmail.com', 1, 'junito91', 199283928)
insert into Cliente values(321323, 'Enrique Molina',84738193, 'enriqueM@gmail.com', 1, 'enriquitofeo', 191228393)
insert into Cliente values(1244534, 'Mario Bros', 83920496, 'bowserhp@gmail.com', 0, 'mariobrosesito', 472189293)
insert into Cliente values(53814223, 'Juanito Ramiro',74829271, 'jaime@gmail.com', 0, 'juanelpro', 923984291)
insert into Cliente values(17283920, 'Jimena Quiros',75829105, 'jimenita@gmail.com', 1, 'jimejime', 256482179)
insert into Cliente values(5902366, 'Jon Snow',748960381, 'Vheredero@gmail.com', 0, 'loboblanco', 348912012)
insert into Cliente values(1829317, 'Jaime Lanister',63849145, 'matareyes@gmail.com', 0, 'bronnesfeo', 328910804)
insert into Cliente values(4892837, 'Ishika Mata', 88849371, 'ishikamandam@gmail.com', 1, 'aksd31', 81723198)
insert into Cliente values(23618723, 'Maduro Radon', 81293812, 'madurito@gmail.com', 1, 'madurito123', 12371823)
insert into Cliente values(23182756, 'Gensen Gold', 85830174, 'suizo@gmail.com', 1, 'yonose', 981739821)
insert into Cliente values(596895, 'Maria Ramos',76940174, 'lamasfea@gmail.com', 1, 'jmaira3', 18239182)

--ESTUDIANTES

insert into Estudiante values('17283920', 17283920, 100)
insert into Estudiante values('23182756', 23182756, 100)
insert into Estudiante values('4892837', 4892837, 100)
insert into Estudiante values('596895', 596895, 100)
insert into Estudiante values('12312312', 12312312, 100)
insert into Estudiante values('321323', 321323, 100)

--UNIVERSIDAD

insert into Universidad values('17283920', 'TEC')
insert into Universidad values('23182756', 'UCR')
insert into Universidad values('4892837', 'TEC')
insert into Universidad values('596895', 'UNA')
insert into Universidad values('12312312', 'UCR')
insert into Universidad values('321323', 'TEC')

--AEROPUERTOS

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
insert into Aeropuerto values('Comodoro Arturo Merino Benítez ', 'Chile', 'CL')
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

--MALETAS

insert into Maleta values(12312)
insert into Maleta values(12312)
insert into Maleta values(12312)
insert into Maleta values(321323)
insert into Maleta values(1244534)
insert into Maleta values(1244534)
insert into Maleta values(53814223)
insert into Maleta values(17283920)
insert into Maleta values(17283920)
insert into Maleta values(17283920)
insert into Maleta values(17283920)
insert into Maleta values(5902366)
insert into Maleta values(1829317)
insert into Maleta values(1829317)
insert into Maleta values(23182756)
insert into Maleta values(23182756)
insert into Maleta values(4892837)
insert into Maleta values(596895)
insert into Maleta values(596895)
insert into Maleta values(596895)
insert into Maleta values(596895)

--PESO DE MALETAS

insert into PMaleta values(100)
insert into PMaleta values(199)
insert into PMaleta values(60)
insert into PMaleta values(10)
insert into PMaleta values(40)
insert into PMaleta values(124)
insert into PMaleta values(53)
insert into PMaleta values(120)
insert into PMaleta values(10)
insert into PMaleta values(20)
insert into PMaleta values(83)
insert into PMaleta values(59)
insert into PMaleta values(317)
insert into PMaleta values(182)
insert into PMaleta values(231)
insert into PMaleta values(82)
insert into PMaleta values(48)
insert into PMaleta values(56)
insert into PMaleta values(85)
insert into PMaleta values(95)
insert into PMaleta values(68)

--TIQUETES POR AHORA SIN TIPO DE AVION

insert into Tiquete values(1)
insert into Tiquete values(2)
insert into Tiquete values(1)
insert into Tiquete values(3)
insert into Tiquete values(4)
insert into Tiquete values(5)
insert into Tiquete values(2)
insert into Tiquete values(1)
insert into Tiquete values(3)
insert into Tiquete values(5)
insert into Tiquete values(4)
insert into Tiquete values(2)
insert into Tiquete values(2)
insert into Tiquete values(1)
insert into Tiquete values(1)
insert into Tiquete values(1)
insert into Tiquete values(3)
insert into Tiquete values(3)
insert into Tiquete values(3)
insert into Tiquete values(3)
insert into Tiquete values(3)

--TIPOS DE AVIONES POR AHORA

insert into Avion values(1, 0) --400
insert into Avion values(1, 0) -- 300
insert into Avion values(1, 0) --350
insert into Avion values(0, 0) --200

--AVION CLASES

insert into TAvion values(1, 'X8213', 0, 0) -- 50, 350
insert into TAvion values(2, 'Z120', 25, 275) --25, 275
insert into TAvion values(3, 'Y40', 30, 320) --30, 320
insert into TAvion values(4, 'X189', 10, 190) --10, 190

--ASISTENTE DE VUELO

insert into AsistenteVuelo values('primerE@gmail.com')
insert into AsistenteVuelo values('segundE@gmail.com')
insert into AsistenteVuelo values('tercerE@gmail.com')
insert into AsistenteVuelo values('cuartoE@gmail.com')
insert into AsistenteVuelo values('quintoE@gmail.com')
insert into AsistenteVuelo values('sextoE@gmail.com')
insert into AsistenteVuelo values('setimoE@gmail.com')
insert into AsistenteVuelo values('octavoE@gmail.com')
insert into AsistenteVuelo values('novenoE@gmail.com')
insert into AsistenteVuelo values('decimoE@gmail.com')

--ASIENTO DE AVION

insert into Asiento values(1, 100, 'E')
insert into Asiento values(2, 49, 'P')
insert into Asiento values(3, 20, 'P')
insert into Asiento values(4, 10, 'P')
insert into Asiento values(5, 390, 'E')
insert into Asiento values(6, 200, 'E')
insert into Asiento values(7, 3, 'P')
insert into Asiento values(8, 129, 'E')
insert into Asiento values(9, 104, 'E')
insert into Asiento values(10, 102, 'E')
insert into Asiento values(11, 150, 'E')
insert into Asiento values(12, 160, 'E')
insert into Asiento values(13, 123, 'E')
insert into Asiento values(14, 93, 'E')
insert into Asiento values(15, 59, 'E')
insert into Asiento values(16, 42, 'P')
insert into Asiento values(17, 152, 'E')
insert into Asiento values(18, 40, 'P')
insert into Asiento values(19, 294, 'E')
insert into Asiento values(20, 185, 'E')
insert into Asiento values(21, 285, 'E')

--ESCALA REVISAR DATE

insert into Escala values(4359, 'Anapa', 'Lanzarote', '02/15/2018', '02/15/2018', 8)
insert into Escala values(5605, 'Lanzarote', 'Ciudad Obregon', '02/16/2018', '02/16/2018', 10)
insert into Escala values(2132, 'Ciudad Obregon', 'Juan Santamaría', '02/17/2018', '02/17/2018', 4)
insert into Escala values(3236, 'Comodoro Arturo Merino Benítez', 'Juan Santamaría', '12/10/2018','12/10/2018', 6)
insert into Escala values(2900 , 'Juan Santamaría', 'Nashville International', '12/10/2018', '12/11/2018', 5)

-- CANTIDAD DE ESCALAS

insert into CEscala values(1, 1)
insert into CEscala values(2, 1)
insert into CEscala values(3, 1)
insert into CEscala values(4, 2)
insert into CEscala values(5, 2)

--VUELO

insert into Vuelo values(500, 230, 400)
insert into Vuelo values(400, 300, 600)

--RESERVACION REVISAR QUE EL TIPO DE AVION SE VA A REPETIR

insert into Reservacion values(17283920, 'Reservo')
insert into Reservacion values(1244534, 'Reservo')
insert into Reservacion values(596895, 'Reservo')
insert into Reservacion values(1829317, 'Reservo')
insert into Reservacion values(596895, 'Reservo')

--RESERVACION CON TIPO DE AVION

insert into TReservacion values(1, 1)
insert into TReservacion values(2, 1)
insert into TReservacion values(3, 1)
insert into TReservacion values(4, 2)
insert into TReservacion values(5, 2)

--PROMOCION

insert into Promocion values(1, 200, '02/16/2018')
insert into Promocion values(2, 200, '02/16/2018')


--RUTAS

insert into Ruta values(1, 'Anapa', 'Juan Santamaría')
insert into Ruta values(2, 'Comodoro Arturo Merino Benítez', 'Nashville International')