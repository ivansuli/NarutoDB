USE BD_Naruto
GO

-------Procedimientos Almacenados para Inserción, Actualización y Borrado de datos-------

--Tabla Aldea:
CREATE PROCEDURE InsertarDatosAldea
 @NombreAldea VARCHAR(40),
 @HabitantesAldea INT,
 @TerritorioAldea VARCHAR(50),
 @PosicionAldea VARCHAR(50)
AS
BEGIN
 INSERT INTO Aldea (NombreAldea, HabitantesAldea, TerritorioAldea,
PosicionAldea)
 VALUES (@NombreAldea, @HabitantesAldea, @TerritorioAldea, @PosicionAldea)
END

-----------

CREATE PROCEDURE ActualizarDatosAldea
(
 @NombreAldea VARCHAR(40),
 @HabitantesAldea INT,
 @TerritorioAldea VARCHAR(50),
 @PosicionAldea VARCHAR(50)
)
AS
BEGIN
 UPDATE Aldea
 SET
 HabitantesAldea = @HabitantesAldea,
 TerritorioAldea = @TerritorioAldea,
 PosicionAldea = @PosicionAldea
 WHERE
 NombreAldea = @NombreAldea
END

-----------

CREATE PROCEDURE BorrarDatosAldea
(
 @NombreAldea VARCHAR(40)
)
AS
BEGIN
 DELETE FROM Aldea
 WHERE
 NombreAldea = @NombreAldea
TRABAJO PRÁCTICO FINAL – INGENIERÍA DE DATOS I
Facultad de Ingeniería y Ciencias Exactas
Departamento de Tecnología Informática
END

-----------

Tabla Edificio
CREATE PROCEDURE InsertarDatosEdificio
 @NombreEdificio VARCHAR(30),
 @CapacidadNinjas INT,
 @TipoEstructura VARCHAR(50),
 @NombreAldea VARCHAR(40)
AS
BEGIN
 INSERT INTO Edificio (NombreEdificio, CapacidadNinjas, TipoEstructura,
NombreAldea)
 VALUES (@NombreEdificio, @CapacidadNinjas, @TipoEstructura, @NombreAldea)
END

-----------

CREATE PROCEDURE ActualizarDatosEdificio
(
 @NombreEdificio VARCHAR(30),
 @CapacidadNinjas INT,
 @TipoEstructura VARCHAR(50),
 @NombreAldea VARCHAR(40)
)
AS
BEGIN
 UPDATE Edificio
 SET
 CapacidadNinjas = @CapacidadNinjas,
 TipoEstructura = @TipoEstructura,
 NombreAldea = @NombreAldea
 WHERE
 NombreEdificio = @NombreEdificio
END

-----------

CREATE PROCEDURE BorrarDatosEdificio
(
 @NombreEdificio VARCHAR(30)
)
AS
BEGIN
 DELETE FROM Edificio
 WHERE
 NombreEdificio = @NombreEdificio
END


--Tabla Conflicto

CREATE PROCEDURE InsertarDatosConflicto
(
 @NombreConflicto VARCHAR(73),
 @FechaConflicto DATE,
 @LugarConflicto VARCHAR(50),
 @BajasConflicto VARCHAR(20)
)
AS
BEGIN
 INSERT INTO Conflicto (NombreConflicto, FechaConflicto, LugarConflicto,
BajasConflicto)
 VALUES (@NombreConflicto, @FechaConflicto, @LugarConflicto, @BajasConflicto)
END

----------

CREATE PROCEDURE ActualizarDatosConflicto
(
 @NombreConflicto VARCHAR(73),
 @FechaConflicto DATE,
 @LugarConflicto VARCHAR(50),
 @BajasConflicto VARCHAR(20)
)
AS
BEGIN
 UPDATE Conflicto
 SET
 FechaConflicto = @FechaConflicto,
 LugarConflicto = @LugarConflicto,
 BajasConflicto = @BajasConflicto
 WHERE
 NombreConflicto = @NombreConflicto
END

-----------

CREATE PROCEDURE BorrarDatosConflicto
(
 @NombreConflicto VARCHAR(73)
)
AS
BEGIN
 DELETE FROM Conflicto
 WHERE
 NombreConflicto = @NombreConflicto
END

--Tabla Habilidad

CREATE PROCEDURE InsertarHabilidad
(
 @NombreHabilidad VARCHAR(30),
 @MaestroHabilidad VARCHAR(40),
 @TipoHabilidad VARCHAR(20)
)
AS
BEGIN
 INSERT INTO Habilidad (NombreHabilidad, MaestroHabilidad, TipoHabilidad)
 VALUES (@NombreHabilidad, @MaestroHabilidad, @TipoHabilidad);
END

-------

CREATE PROCEDURE ActualizarDatosHabilidad
(
 @NombreHabilidad VARCHAR(30),
 @MaestroHabilidad VARCHAR(40),
 @TipoHabilidad VARCHAR(20)
)
AS
BEGIN
 UPDATE Habilidad
 SET
 MaestroHabilidad = @MaestroHabilidad,
 TipoHabilidad = @TipoHabilidad
 WHERE
 NombreHabilidad = @NombreHabilidad
END

--------

CREATE PROCEDURE BorrarDatosHabilidad
(
 @NombreHabilidad VARCHAR(30)
)
AS
BEGIN
 DELETE FROM Habilidad
 WHERE
 NombreHabilidad = @NombreHabilidad
END


--Tabla Clan

CREATE PROCEDURE InsertarDatosClan
(
 @NombreClan VARCHAR(30),
 @AldeaOculta VARCHAR(40),
 @FundacionClan INT,
 @LemaClan VARCHAR(80),
 @DescripcionEmblema VARCHAR(60),
 @Particularidad VARCHAR(50)
)
AS
BEGIN
 INSERT INTO Clan (NombreClan, AldeaOculta, FundacionClan, LemaClan,
DescripcionEmblema, Particularidad)
 VALUES (@NombreClan, @AldeaOculta, @FundacionClan, @LemaClan,
@DescripcionEmblema, @Particularidad)
END

-----

CREATE PROCEDURE ActualizarDatosClan
(
 @NombreClan VARCHAR(30),
 @AldeaOculta VARCHAR(40),
 @FundacionClan INT,
 @LemaClan VARCHAR(80),
 @DescripcionEmblema VARCHAR(60),
 @Particularidad VARCHAR(50)
)
AS
BEGIN
 UPDATE Clan
 SET
 AldeaOculta = @AldeaOculta,
 FundacionClan = @FundacionClan,
 LemaClan = @LemaClan,
 DescripcionEmblema = @DescripcionEmblema,
 Particularidad = @Particularidad
 WHERE
 NombreClan = @NombreClan
END



-----
CREATE PROCEDURE BorrarDatosClan
(
 @NombreClan VARCHAR(30)
)
AS
BEGIN
 DELETE FROM Clan
 WHERE
 NombreClan = @NombreClan
END


--Tabla Equipo

CREATE PROCEDURE InsertarDatosEquipo
(
 @NombreEquipo VARCHAR(40),
 @FundacionEquipo INT,
 @IntegrantesEquipo INT,
 @EstadoEquipo VARCHAR(15)
)
AS
BEGIN
 INSERT INTO Equipo (NombreEquipo, FundacionEquipo, IntegrantesEquipo,
EstadoEquipo)
 VALUES (@NombreEquipo, @FundacionEquipo, @IntegrantesEquipo, @EstadoEquipo)
END

------

CREATE PROCEDURE ActualizarDatosEquipo
(
 @NombreEquipo VARCHAR(40),
 @FundacionEquipo INT,
 @IntegrantesEquipo INT,
 @EstadoEquipo VARCHAR(15)
)
AS
BEGIN
 UPDATE Equipo
 SET
 FundacionEquipo = @FundacionEquipo,
 IntegrantesEquipo = @IntegrantesEquipo,
 EstadoEquipo = @EstadoEquipo
 WHERE
 NombreEquipo = @NombreEquipo
END

------

CREATE PROCEDURE BorrarDatosEquipo
(
 @NombreEquipo VARCHAR(40)
)
AS
BEGIN
 DELETE FROM Equipo
 WHERE
 NombreEquipo = @NombreEquipo
END

--Tabla Especie

CREATE PROCEDURE InsertarDatosEspecie
(
 @NombreEspecie VARCHAR(30),
 @EstadoEspecie VARCHAR(20),
 @HostilidadEspecie VARCHAR(20),
 @HabilidadEspecie VARCHAR(50)
)
AS
BEGIN
 INSERT INTO Especie (NombreEspecie, EstadoEspecie, HostilidadEspecie,
HabilidadEspecie)
 VALUES (@NombreEspecie, @EstadoEspecie, @HostilidadEspecie,
@HabilidadEspecie)
END

------

CREATE PROCEDURE ActualizarDatosEspecie
(
 @NombreEspecie VARCHAR(30),
 @EstadoEspecie VARCHAR(20),
 @HostilidadEspecie VARCHAR(20),
 @HabilidadEspecie VARCHAR(50)
)
AS
BEGIN
 UPDATE Especie
 SET
 EstadoEspecie = @EstadoEspecie,
 HostilidadEspecie = @HostilidadEspecie,
 HabilidadEspecie = @HabilidadEspecie
 WHERE
 NombreEspecie = @NombreEspecie
END

-------

CREATE PROCEDURE BorrarDatosEspecie
(
 @NombreEspecie VARCHAR(30)
)
AS
BEGIN
 DELETE FROM Especie
 WHERE
 NombreEspecie = @NombreEspecie
END


--Tabla Shinobi

CREATE PROCEDURE InsertarDatosShinobi
 (
 @NombreShinobi VARCHAR(40),
 @NacimientoShinobi DATE,
 @EstatusShinobi VARCHAR(15),
 @AldeaOculta VARCHAR(40),
 @NombreClan VARCHAR(30),
 @NombreEquipo VARCHAR(40),
 @NombreEspecie VARCHAR(30)
 )
AS
BEGIN
 INSERT INTO Shinobi(NombreShinobi, NacimientoShinobi, EstatusShinobi,
AldeaOculta, NombreClan, NombreEquipo, NombreEspecie)
 VALUES (@NombreShinobi, @NacimientoShinobi, @EstatusShinobi, @AldeaOculta,
@NombreClan, @NombreEquipo, @NombreEspecie);
END

------

CREATE PROCEDURE ActualizarDatosShinobi
(
 @NombreShinobi VARCHAR(40),
 @NacimientoShinobi DATE,
 @EstatusShinobi VARCHAR(15),
 @AldeaOculta VARCHAR(40),
 @NombreClan VARCHAR(30),
 @NombreEquipo VARCHAR(40),
 @NombreEspecie VARCHAR(30)
)
AS
BEGIN
 UPDATE Shinobi
 SET
 NacimientoShinobi = @NacimientoShinobi,
 EstatusShinobi = @EstatusShinobi,
 AldeaOculta = @AldeaOculta,
 NombreClan = @NombreClan,
 NombreEquipo = @NombreEquipo,
 NombreEspecie = @NombreEspecie
 WHERE
 NombreShinobi = @NombreShinobi AND NacimientoShinobi = @NacimientoShinobi
END

--------

CREATE PROCEDURE BorrarDatosShinobi
(
 @NombreShinobi VARCHAR(40),
 @NacimientoShinobi DATE
)
AS
BEGIN
 DELETE FROM Shinobi
 WHERE
 NombreShinobi = @NombreShinobi AND NacimientoShinobi = @NacimientoShinobi
END


--Tabla RelacionFamiliar

CREATE PROCEDURE InsertarDatosRelacionFamiliar
(
 @NombreShinobi1 VARCHAR(40),
 @NacimientoShinobi1 DATE,
 @NombreShinobi2 VARCHAR(40),
 @NacimientoShinobi2 DATE,
 @TipoRelacion VARCHAR(20)
)
AS
BEGIN
 INSERT INTO RelacionFamiliar ( NombreShinobi1, NacimientoShinobi1,
NombreShinobi2, NacimientoShinobi2, TipoRelacion)
 VALUES ( @NombreShinobi1, @NacimientoShinobi1, @NombreShinobi2,
@NacimientoShinobi2, @TipoRelacion)
END

--------

CREATE PROCEDURE ActualizarDatosRelacionFamiliar
(
 @Id_Relacion INT,
 @NombreShinobi1 VARCHAR(40),
 @NacimientoShinobi1 DATE,
 @NombreShinobi2 VARCHAR(40),
 @NacimientoShinobi2 DATE,
 @TipoRelacion VARCHAR(20)
)
AS
BEGIN
 UPDATE RelacionFamiliar
 SET
 TipoRelacion = @TipoRelacion
 WHERE
 Id_Relacion = @Id_Relacion AND
 NombreShinobi1 = @NombreShinobi1 AND
 NacimientoShinobi1 = @NacimientoShinobi1 AND
 NombreShinobi2 = @NombreShinobi2 AND
 NacimientoShinobi2 = @NacimientoShinobi2
END

-------

CREATE PROCEDURE BorrarDatosRelacionFamiliar
(
 @Id_Relacion INT,
 @NombreShinobi1 VARCHAR(40),
 @NacimientoShinobi1 DATE,
 @NombreShinobi2 VARCHAR(40),
 @NacimientoShinobi2 DATE
)
AS
BEGIN
 DELETE FROM RelacionFamiliar
 WHERE
 Id_Relacion = @Id_Relacion AND
 NombreShinobi1 = @NombreShinobi1 AND
 NacimientoShinobi1 = @NacimientoShinobi1 AND
 NombreShinobi2 = @NombreShinobi2 AND
 NacimientoShinobi2 = @NacimientoShinobi2
END

-----------------CONSULTAS-----------------

--devuelve una lista de estados de shinobi junto con el número total de shinobis asociados a cada estado.
SELECT EstatusShinobi, COUNT(*) AS TotalShinobis
FROM Shinobi
GROUP BY EstatusShinobi;--devuelve el nombre de las especies para las cuales no hay shinobis en la tabla Shinobi con esa especie.
SELECT E.NombreEspecie
FROM Especie E
WHERE NOT EXISTS (SELECT 1 FROM Shinobi S WHERE E.NombreEspecie =
S.NombreEspecie);--devuelve una lista de clanes con sus respectivos emblemas y el total de shinobis únicos asociados a cada clan, 
--ordenados de mayor a menor según el número de shinobis.
SELECT Clan.NombreClan, Clan.DescripcionEmblema, COUNT(DISTINCT
Shinobi.NombreShinobi) AS TotalShinobis
FROM Clan
LEFT JOIN Shinobi ON Clan.NombreClan = Shinobi.NombreClan
GROUP BY Clan.NombreClan, Clan.DescripcionEmblema
ORDER BY TotalShinobis DESC;--selecciona el nombre y la fecha de nacimiento de los shinobi cuya fecha de nacimiento es posterior al 1 de enero de 1990. 
SELECT NombreShinobi, NacimientoShinobi
FROM Shinobi
WHERE NacimientoShinobi > '1990-01-01';--cuenta el número total de especies distintas que están asociadas a algún shinobi en la base de datos.
SELECT COUNT(DISTINCT Especie.NombreEspecie) AS TotalEspecies
FROM Especie
JOIN Shinobi ON Especie.NombreEspecie = Shinobi.NombreEspecie;--selecciona el nombre y la cantidad de integrantes del equipo que tiene el minimo número de integrantes en la tabla Equipo.
SELECT NombreEquipo, IntegrantesEquipo
FROM Equipo
WHERE IntegrantesEquipo = (SELECT min(IntegrantesEquipo) FROM Equipo);--Shinobis nacidos en una fecha específica con detalles de su clan:
SELECT
 S.NombreShinobi,
 S.NacimientoShinobi,
 C.NombreClan,
 C.LemaClan
FROM
 Shinobi S
LEFT JOIN
 Clan C ON S.NombreClan = C.NombreClan
WHERE
 S.NacimientoShinobi = '10-10-1997'; --Creación de una Vista que muestra la información de Shinobis con sus Aldeas, Clanes y Equipos asociados:
CREATE VIEW VistaShinobiInfo AS
SELECT S.NombreShinobi, S.NacimientoShinobi, S.EstatusShinobi, A.NombreAldea,C.NombreClan, E.NombreEquipo
FROM Shinobi S
LEFT JOIN Aldea A ON S.AldeaOculta = A.NombreAldea
LEFT JOIN Clan C ON S.NombreClan = C.NombreClan
LEFT JOIN Equipo E ON S.NombreEquipo = E.NombreEquipo;
SELECT * FROM VistaShinobiInfo;--Consulta JOIN INNER para obtener información de Shinobis y sus Clanes asociados:
SELECT S.NombreShinobi, S.NacimientoShinobi, S.EstatusShinobi, C.NombreClan
FROM Shinobi S
INNER JOIN Clan C ON S.NombreClan = C.NombreClan;--Obtiene el nombre del shinobi, la fecha de nacimiento, la aldea oculta y la especie para los shinobis de la aldea 'Konoha' y de especie 'Humana'
SELECT NombreShinobi,NacimientoShinobi, AldeaOculta,NombreEspecie
FROM Shinobi
WHERE AldeaOculta = 'Konoha' AND NombreEspecie = 'Humano';
