CREATE DATABASE BD_Naruto
GO
USE BD_Naruto
GO

CREATE TABLE Aldea (
    NombreAldea VARCHAR(40) NOT NULL,
    HabitantesAldea INT NOT NULL,
    TerritorioAldea VARCHAR(50) NOT NULL,
    PosicionAldea VARCHAR(50) DEFAULT NULL,
	CONSTRAINT PK_NombreAldea_Aldea PRIMARY KEY(NombreAldea)
);


CREATE TABLE Edificio (
    NombreEdificio VARCHAR(30) NOT NULL,
    CapacidadNinjas INT NOT NULL,
    TipoEstructura VARCHAR(50) NOT NULL,
    NombreAldea VARCHAR(40) NOT NULL,
	CONSTRAINT PK_NombreEdificio_Edificio PRIMARY KEY(NombreEdificio),
    CONSTRAINT FK_NombreAldea_Edificio FOREIGN KEY (NombreAldea) REFERENCES Aldea(NombreAldea)
);


CREATE TABLE Conflicto (
    NombreConflicto VARCHAR(100) NOT NULL,
    FechaConflicto DATE DEFAULT NULL,
    LugarConflicto VARCHAR(50) NOT NULL,
    BajasConflicto INT DEFAULT NULL,
	CONSTRAINT PK_NombreConflicto_Conflicto PRIMARY KEY (NombreConflicto)
);


CREATE TABLE AldeaConflicto (
    Id_Conflicto INT NOT NULL,
    NombreAldea VARCHAR(40) NOT NULL,
    NombreConflicto VARCHAR(100) NOT NULL,
	CONSTRAINT PK_AldeaConflicto PRIMARY KEY (Id_Conflicto),
	CONSTRAINT FK_NombreAldea_Aldea FOREIGN KEY (NombreAldea) REFERENCES Aldea(NombreAldea),
	CONSTRAINT FK_NombreConflicto FOREIGN KEY (NombreConflicto) REFERENCES Conflicto(NombreConflicto)
);


CREATE TABLE Clan (
    NombreClan VARCHAR(30) NOT NULL,
    AldeaOculta VARCHAR(40) NOT NULL,
    FundacionClan INT DEFAULT NULL,
    LemaClan VARCHAR(100) NOT NULL,
    DescripcionEmblema VARCHAR(100),
    ParticipacionConflicto VARCHAR(100),
	CONSTRAINT PK_NombreClan_Clan PRIMARY KEY (NombreClan),
	CONSTRAINT FK_AldeaOculta FOREIGN KEY (AldeaOculta) REFERENCES Aldea(NombreAldea)
);


CREATE TABLE Equipo (
    NombreEquipo VARCHAR(40) NOT NULL,
    FundacionEquipo INT DEFAULT NULL,
    IntegrantesEquipo INT NOT NULL,
    EstadoEquipo VARCHAR(15) CHECK (EstadoEquipo IN ('Activo', 'Inactivo', 'Disuelto')),
	CONSTRAINT PK_NombreEquipo_Equipo PRIMARY KEY (NombreEquipo)
);


CREATE TABLE TipoLinaje (
    TipoLinaje VARCHAR(30) CHECK (TipoLinaje IN ('Sangre Pura', 'Sangre Impura')),
	CONSTRAINT PK_TipoLinaje PRIMARY KEY (TipoLinaje)
);


CREATE TABLE Especie (
    NombreEspecie VARCHAR(30) NOT NULL,
    EstadoEspecie VARCHAR(20) CHECK (EstadoEspecie IN ('Vivo', 'Extinto')),
    HostilidadEspecie VARCHAR(20) DEFAULT NULL,
    HabilidadEspecie VARCHAR(100) NOT NULL,
	CONSTRAINT PK_NombreEspecie_Especie PRIMARY KEY (NombreEspecie)
);


CREATE TABLE Shinobi (
    NombreShinobi VARCHAR(40)NOT NULL,
    NacimientoShinobi DATE NOT NULL,
    EstatusShinobi VARCHAR(15) CHECK (EstatusShinobi IN ('Vivo', 'Retirado', 'Fallecido', 'Desconocido')),
    AldeaOculta VARCHAR(40) NOT NULL,
	TipoLinaje VARCHAR(30) NOT NULL,
    NombreClan VARCHAR(30) NOT NULL,
    NombreEquipo VARCHAR(40) NOT NULL,
    NombreEspecie VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Shinobi PRIMARY KEY (NombreShinobi, NacimientoShinobi),
	CONSTRAINT FK_AldeaOculta_Shinobi FOREIGN KEY (AldeaOculta) REFERENCES Aldea(NombreAldea),
    CONSTRAINT FK_NombreClan_Shinobi FOREIGN KEY (NombreClan) REFERENCES Clan(NombreClan),
	CONSTRAINT FK_NombreEquipo_Shinobi FOREIGN KEY (NombreEquipo) REFERENCES Equipo(NombreEquipo),
	CONSTRAINT FK_TipoLinaje_Shinobi FOREIGN KEY (TipoLinaje) REFERENCES TipoLinaje(TipoLinaje),
	CONSTRAINT FK_NombreEspecie_Shinobi FOREIGN KEY (NombreEspecie) REFERENCES Especie(NombreEspecie)
);


CREATE TABLE RelacionFamiliar (
    Id_Relacion INT NOT NULL,
    NombreShinobi1 VARCHAR(40) NOT NULL,
    NacimientoShinobi1 DATE NOT NULL,
    NombreShinobi2 VARCHAR(40) NOT NULL,
    NacimientoShinobi2 DATE NOT NULL,
    TipoRelacion VARCHAR(40) NOT NULL,
    CONSTRAINT PK_RelacionFamiliar_RelacionFamiliar PRIMARY KEY (Id_Relacion),
    CONSTRAINT FK_NombreShinobi1_RelacionFamiliar FOREIGN KEY (NombreShinobi1, NacimientoShinobi1) REFERENCES Shinobi(NombreShinobi, NacimientoShinobi),
    CONSTRAINT FK_NombreShinobi2_RelacionFamiliar FOREIGN KEY (NombreShinobi2, NacimientoShinobi2) REFERENCES Shinobi(NombreShinobi, NacimientoShinobi)
);


CREATE TABLE Habilidad (
    NombreHabilidad VARCHAR(100) NOT NULL,
    MaestroHabilidad VARCHAR(100) DEFAULT NULL,
    TipoHabilidad VARCHAR(50) NOT NULL,
	CONSTRAINT PK_NombreHabilidad_Habilidad PRIMARY KEY (NombreHabilidad)
);


CREATE TABLE ShinobiHabilidad (
    Id_Habilidad INT NOT NULL,
    NombreShinobi VARCHAR(40) NOT NULL,
    NacimientoShinobi DATE NOT NULL,
    NombreHabilidad VARCHAR(100) NOT NULL,
	CONSTRAINT PK_IdHabilidad_ShinobiHabilidad PRIMARY KEY (Id_Habilidad),
	CONSTRAINT FK_ShinobiHabilidad_Shinobi FOREIGN KEY (NombreShinobi, NacimientoShinobi) REFERENCES Shinobi(NombreShinobi, NacimientoShinobi),
    CONSTRAINT FK_ShinobiHabilidad_Habilidad FOREIGN KEY (NombreHabilidad) REFERENCES Habilidad(NombreHabilidad)
);