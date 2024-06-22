USE BD_Naruto
GO

-- Datos--


INSERT INTO Aldea (NombreAldea, HabitantesAldea, TerritorioAldea, PosicionAldea)
VALUES
    ('Amegakure', 4000, 'Muy peque�o', 'Pais de la Lluvia'),
    ('Getsugakure', 10000, 'Mediano', 'Pais de la Luna'),
    ('Hoshigakure', 8000, 'Peque�o', 'Pais de los Osos'),
    ('Ishigakure', 5000, 'Peque�o', 'Pais de las Aves'),
    ('Iwagakure', 80000, 'Grande', 'Pais de la Tierra'),
    ('Joumae', 500, 'Muy peque�o', 'Pais de las Llaves'),
    ('Kemurigakure', 2000, 'Desconocido', 'Pais Desconocido'),
    ('Kirigakure', 20000, 'Peque�o', 'Pais del Agua'),
    ('Konoha', 100000, 'Muy grande', 'Pais del Fuego'),
    ('Kumogakure', 60000, 'Mediano', 'Pais del Rayo'),
    ('Kusagakure', 20000, 'Mediano', 'Pais de la Hierba'),
    ('Otogakure', 10000, 'Mediano', 'Pais del Sonido'),
    ('Shimogakure', 2000, 'Muy peque�o', 'Pais Helado'),
    ('Sunagakure', 30000, 'Peque�o', 'Pais del Viento'),
    ('Takigakure', 10000, 'Peque�o', 'Pais de la Cascada'),
    ('Takumi', 15000, 'Mediano', 'Pais de los Rios'),
    ('Tanigakure', 5000, 'Mediano', 'Pais de los Rios'),
    ('Tonbogakure', 8000, 'Peque�o', 'Pais de las Monta�as'),
    ('Uzushiogakure', 1000, 'Muy peque�o', 'Pais del Remolino'),
    ('Yugakure', 5000, 'Muy peque�o', 'Pais de las Aguas Termales');


INSERT INTO Edificio (NombreEdificio, CapacidadNinjas, TipoEstructura, NombreAldea)
VALUES
    ('Casa de Naruto', 10, 'Hogar', 'Konoha'),
    ('Casa de Sasuke', 10, 'Hogar', 'Konoha'),
    ('Ichiraku Ramen', 8, 'Comercial', 'Konoha'),
    ('Residencia del Hokage', 100, 'Administrativo', 'Konoha'),
    ('Residencia del Kazekage', 80, 'Administrativo', 'Sunagakure'),
    ('Residencia del Mizukage', 90, 'Administrativo', 'Kirigakure'),
    ('Residencia del Raikage', 85, 'Administrativo', 'Kumogakure'),
    ('Residencia del Tsuchikage', 70, 'Administrativo', 'Iwagakure'),
    ('Torre de la Cascada', 80, 'Estrat�gico', 'Takigakure'),
    ('Torre de la Hierba', 130, 'Estrat�gico', 'Kusagakure'),
    ('Torre de la Llave', 70, 'Estrat�gico', 'Yugakure'),
    ('Torre de la Lluvia', 100, 'Estrat�gico', 'Amegakure'),
    ('Torre de la Luna', 50, 'Estrat�gico', 'Getsugakure'),
    ('Torre de las Aves', 105, 'Estrat�gico', 'Ishigakure'),
    ('Torre de las Estrellas', 60, 'Estrat�gico', 'Hoshigakure'),
    ('Torre de las Olas', 95, 'Estrat�gico', 'Takumi'),
    ('Torre de las Rocas', 100, 'Estrat�gico', 'Ishigakure'),
    ('Torre de los R�os', 110, 'Estrat�gico', 'Tanigakure'),
    ('Torre del Sonido', 120, 'Estrat�gico', 'Otogakure'),
    ('Torre del Valle', 90, 'Estrat�gico', 'Tanigakure');


INSERT INTO Conflicto (NombreConflicto, FechaConflicto, LugarConflicto, BajasConflicto)
VALUES
    ('Batalla contra Zabuza y Haku', '2010-12-07', 'Puente Kannabi', 20),
    ('Batalla en el Monte Myoboku', '1935-10-23', 'Monte Myoboku', 120),
    ('Batalla en el Pa�s de la Cascada', '1980-09-12', 'Pa�s de la Cascada', 800),
    ('Conflicto con el Clan Uchiha', '1990-03-05', 'Bosque de Konoha', 700),
    ('Conflicto con los Ninjas del Pa�s de la Nieve', '1975-06-09', 'Pa�s de la Nieve', 1000),
    ('Conflicto en el Pais de la Luna', '2025-01-16', 'Pa�s de la Luna', 200),
    ('Conflicto en el Pa�s de los Campos de Arroz', '1965-04-11', 'Pais de los Campos de Arroz', 500),
    ('Conflicto en la Arena', '1980-07-25', 'Desierto de Suna', 1200),
    ('Gran Guerra Ninja', '1120-05-10', 'Valle del Fin', 50000),
    ('Guerra contra Akatsuki', '2014-02-15', 'Varios lugares', 3000),
    ('Guerra contra los Bandidos de la Cascada', '1955-09-05', 'Pa�s de la Cascada', 350),
    ('Guerra contra los Bandidos del Pa�s de la Lluvia', '1990-12-08', 'Pa�s de la Lluvia', 1500),
    ('Guerra de los Cinco Kages', '2015-06-20', 'Varias aldeas', 10),
    ('Guerra en el Pa�s de las Olas', '1940-08-02', 'Pa�s de las Olas', 600),
    ('Incidente del Puente Kannabi', '1960-01-18', 'Puente Kannabi', 300),
    ('Invasi�n a Konoha', '1100-11-03', 'Konoha', 2500),
    ('Invasi�n a la Aldea Oculta de la Arena', '1980-04-29', 'Suna', 1800),
    ('Invasi�n a la Aldea Oculta de la Hierba', '1215-08-26', 'Kusa', 900),
    ('Invasi�n a la Aldea Oculta de la Lluvia', '1985-03-30', 'Amegakure', 2200),
    ('Rebeli�n de los Bandidos del Bosque', '1950-07-14', 'Bosque de Konoha', 400);


INSERT INTO AldeaConflicto (Id_Conflicto, NombreAldea, NombreConflicto)
VALUES
	(1, 'Amegakure', 'Batalla contra Zabuza y Haku'),
	(2, 'Getsugakure', 'Batalla en el Monte Myoboku'),
	(3, 'Hoshigakure', 'Batalla en el Pa�s de la Cascada'),
	(4, 'Ishigakure', 'Conflicto con el Clan Uchiha'),
	(5, 'Iwagakure', 'Conflicto con los Ninjas del Pa�s de la Nieve'),
	(6, 'Joumae', 'Conflicto en el Pais de la Luna'),
	(7, 'Kemurigakure', 'Conflicto en el Pa�s de los Campos de Arroz'),
	(8, 'Kirigakure', 'Conflicto en la Arena'),
	(9, 'Konoha', 'Gran Guerra Ninja'),
	(10, 'Kumogakure', 'Guerra contra Akatsuki'),
	(11, 'Kusagakure', 'Guerra contra los Bandidos de la Cascada'),
	(12, 'Otogakure', 'Guerra contra los Bandidos del Pa�s de la Lluvia'),
	(13, 'Shimogakure', 'Guerra de los Cinco Kages'),
	(14, 'Sunagakure', 'Guerra en el Pa�s de las Olas'),
	(15, 'Takigakure', 'Incidente del Puente Kannabi'),
	(16, 'Takumi', 'Invasi�n a Konoha'),
	(17, 'Tanigakure', 'Invasi�n a la Aldea Oculta de la Arena'),
	(18, 'Tonbogakure', 'Invasi�n a la Aldea Oculta de la Hierba'),
	(19, 'Uzushiogakure', 'Invasi�n a la Aldea Oculta de la Lluvia'),
	(20, 'Yugakure', 'Rebeli�n de los Bandidos del Bosque');


INSERT INTO Clan (NombreClan, AldeaOculta, FundacionClan, LemaClan, DescripcionEmblema, ParticipacionConflicto)
VALUES
    ('Aburame', 'Konoha', 1225, 'Unidos con los insectos', 'El emblema es un escarabajo', 'Especializados en t�cnicas con insectos'),
    ('Akimichi', 'Konoha', 1280, 'El poder de la expansi�n', 'El emblema es una mariposa', 'Famoso por sus t�cnicas de aumento de tama�o'),
    ('Darui', 'Kumogakure', 1270, 'El usuario del Elemento Rayo', 'El emblema es una nube oscura', 'Poseen habilidades �nicas con el Elemento Rayo'),
    ('Gaara', 'Sunagakure', 1235, 'El controlador de la arena', 'El emblema es una calabaza', 'Controla la arena con habilidades �nicas'),
    ('Hatake', 'Konoha', 1228, 'La sombra del Hokage', 'El emblema es un perro con un hoja', 'Famosos por el Sharingan de Kakashi'),
    ('Hozuki', 'Kirigakure', 1150, 'La liquidez es nuestra alma', 'El emblema es una gota de agua', 'Conocidos por sus t�cnicas para convertir sus cuerpos en agua'),
    ('Hyuga', 'Konoha', 1200, 'La visi�n penetrante', 'El emblema representa a un ojo blanco y otro negro', 'Actu� como guardian en varias guerras'),
    ('Inuzuka', 'Konoha', 1210, 'El mejor amigo del perro', 'El emblema muestra un perro', 'Conocidos por sus compa�eros caninos'),
    ('Kaguya', 'Kirigakure', 1100, 'El clan de los huesos', 'El emblema es una espina de hueso', 'Famosos por sus habilidades con los huesos'),
    ('Kankuro', 'Sunagakure', 1222, 'El titiritero', 'El emblema es una marioneta', 'Maestros en el uso de marionetas en el combate'),
    ('Kurama', 'Konoha', 1290, 'La voluntad del Zorro de Nueve Colas', 'El emblema representa a un zorro', 'Tiene una conexi�n especial con los Bjus'),
    ('Nara', 'Konoha', 1300, 'Las sombras son nuestra fuerza', 'El emblema muestra una hoja y un ciervo', 'Particip� en misiones t�cticas cruciales'),
    ('Sarutobi', 'Konoha', 1260, 'La llama de la vida', 'El emblema es un mono', 'Varios miembros han sido Hokages'),
    ('Senju', 'Konoha', 1305, 'La fuerza de los bosques', 'El emblema es un conjunto de hojas', 'Fundadores de Konoha junto con la Uchiha'),
    ('Shirogane', 'Sunagakure', 1150, 'Los marionetistas', 'El emblema es una marca de maldici�n amarilla', 'Conocidos por sus marionetas'),
    ('Temari', 'Sunagakure', 1220, 'La fuerza de los vientos', 'El emblema es un abanico de viento', 'Expertos en t�cticas de viento'),
    ('Uchiha', 'Konoha', 1250, 'El fuego nunca se apaga', 'El emblema representa a un abanico con un ojo rojo', 'Particip� en la Gran Guerra Ninja'),
    ('Uzumaki', 'Uzushiogakure', 1105, 'La espiral infinita', 'El emblema es una espiral', 'Conocidos por su longevidad'),
    ('Yamanaka', 'Konoha', 1275, 'Intrusi�n mental total', 'El emblema muestra una flor', 'Especializados en t�cticas de posesi�n mental'),
    ('Yotsuki', 'Kumogakure', 1215, 'El clan del Rayo Negro', 'El emblema es un rayo', 'Conocidos por sus t�cticas con el Elemento Rayo');


INSERT INTO Equipo (NombreEquipo, FundacionEquipo, IntegrantesEquipo, EstadoEquipo)
VALUES 
	('Equipo 10',2010,3, 'Activo'),
	('Equipo 2',1995,5, 'Inactivo'),
	('Equipo 8', 1988, 6, 'Disuelto'),
	('Equipo de Apoyo',2006,5, 'Inactivo'),
	('Equipo de Asalto',2007,6, 'Inactivo'),
	('Equipo de Asesinos',1992,3, 'Inactivo'),
	('Equipo de Caza',2018,3, 'Activo'),
	('Equipo de Combate',2004,4, 'Activo'),
	('Equipo de Contrainteligencia',2009,6, 'Activo'),
	('Equipo de Entrenamiento',2012,3, 'Activo'),
	('Equipo de Espionaje',2011,5, 'Inactivo'),
	('Equipo de Exploracion',2008,5, 'Activo'),
	('Equipo de Guardia',2005,6, 'Activo'),
	('Equipo de Inteligencia',2001,4, 'Activo'),
	('Equipo de Reconocimiento',1999,5, 'Activo'),
	('Equipo de Rescate',2003,6, 'Activo'),
	('Equipo de Reserva',2019,4, 'Activo'),
	('Equipo de Vigilancia',1990,4, 'Activo'),
	('Equipo Kakashi',2010,5, 'Disuelto'),
	('Equipo Medic',1998,4, 'Activo'),
	('Equipo Tactico',2015,4, 'Activo'),
	('Equipo Desconocido', 2002, 14, 'Activo'),
	('Equipo Senju', 1999, 7, 'Activo'),
	('Anbu', 1989, 6, 'Inactivo');


INSERT INTO	TipoLinaje(TipoLinaje)
VALUES
	('Sangre Pura'),
	('Sangre Impura');


INSERT INTO Especie (NombreEspecie, EstadoEspecie, HostilidadEspecie, HabilidadEspecie)
VALUES 
	('Akatsuki', 'Extinto', 'Hostil', 'Jutsus Oscuros'),
	('Ara�a', 'Vivo', 'Hostil', 'Tejido de Sedas y Trampas'),
	('Ciervo', 'Vivo', 'Pac�fico', 'Asistencia en combate'),
	('Gato', 'Vivo', 'Pac�fico', 'Jutsus M�sticos'),
	('Gorila Gigante', 'Vivo', 'Pac�fico', 'Fuerza Descomunal'),
	('Humano', 'Vivo', 'Neutral', 'Sharingan'),
	('Humano Hyuga', 'Vivo', 'Pac�fico', 'Byakugan'),
	('Humano Uchiha', 'Extinto', 'Neutral', 'Sharingan'),
	('Insecto Kikaichu', 'Vivo', 'Neutral', 'Control Insectoide'),
	('Jinchuriki', 'Vivo', 'Neutral', 'Chakra Masivo'),
	('Le�n', 'Vivo', 'Pac�fico', 'Fuerza y Valor'),
	('Mariposa Gigante', 'Vivo', 'Neutral', 'Control de Polillas'),
	('Murci�lago', 'Vivo', 'Neutral', 'Ecolocalizaci�n'),
	('P�jaro Mensajero', 'Vivo', 'Pac�fico', 'Comunicaci�n a Distancia'),
	('Perro Ninja', 'Vivo', 'Pac�fico', 'Segimiento y Rastreo'),
	('Rana', 'Vivo', 'Pac�fico', 'Invocaci�n de Jiraiya'),
	('Sarpienta Blanca', 'Vivo', 'Hostil', 'Control de Sarpientes'),
	('Sarpiente Gigante', 'Vivo', 'Hostil', 'Constricci�n Poderosa'),
	('Slug', 'Vivo', 'Neutral', 'Curaci�n Poderosa'),
	('Tigre', 'Vivo', 'Neutral', 'Fuerza y Agilidad');


INSERT INTO Shinobi (NombreShinobi, NacimientoShinobi, EstatusShinobi, AldeaOculta, TipoLinaje, NombreClan, NombreEquipo, NombreEspecie)
VALUES
    ('Choji Akimichi', '1997-05-01', 'Vivo', 'Konoha', 'Sangre Pura', 'Akimichi', 'Equipo 10', 'Humano'),
    ('Darui', '1996-02-02', 'Vivo', 'Kumogakure', 'Sangre Pura', 'Darui', 'Equipo de Combate', 'Humano'),
    ('Gaara', '1995-01-19', 'Vivo', 'Sunagakure', 'Sangre Pura', 'Gaara', 'Equipo de Exploracion', 'Jinchuriki'),
    ('Gamabunta', '1999-01-03', 'Vivo', 'Konoha', 'Sangre Impura', 'Darui', 'Equipo Desconocido', 'Rana'),
    ('Hashirama Senju', '1813-02-23', 'Fallecido', 'Konoha', 'Sangre Pura', 'Senju', 'Equipo Senju', 'Humano'),
    ('Hinata Hyuga', '1999-12-27', 'Vivo', 'Konoha', 'Sangre Impura', 'Hyuga', 'Equipo 8', 'Humano Hyuga'),
    ('Hiruzen Sarutobi', '1939-02-10', 'Fallecido', 'Konoha', 'Sangre Pura', 'Sarutobi', 'Anbu', 'Humano'),
    ('Ino Yamanaka', '1997-09-23', 'Vivo', 'Konoha', 'Sangre Pura', 'Yamanaka', 'Equipo 10', 'Humano'),
    ('Itachi Uchiha', '1984-06-09', 'Fallecido', 'Konoha', 'Sangre Impura', 'Uchiha', 'Anbu', 'Humano Uchiha'),
    ('Jiraiya', '1958-11-03', 'Fallecido', 'Konoha', 'Sangre Impura', 'Kaguya', 'Equipo Tactico', 'Humano'),
    ('Kaguya Otsutsuki', '1250-03-10', 'Desconocido', 'Tonbogakure', 'Sangre Pura', 'Kaguya', 'Equipo Desconocido', 'Murci�lago'),
    ('Kakashi Hatake', '1970-09-15', 'Retirado', 'Konoha', 'Sangre Pura', 'Hatake', 'Equipo Kakashi', 'Humano'),
    ('Kankuro', '1996-05-15', 'Vivo', 'Sunagakure', 'Sangre Pura', 'Kankuro', 'Equipo de Exploracion', 'Humano'),
    ('Kiba Inuzuka', '1999-07-07', 'Vivo', 'Konoha', 'Sangre Pura', 'Inuzuka', 'Equipo 8', 'Humano'),
    ('Kurama', '1997-10-10', 'Vivo', 'Takumi', 'Sangre Pura', 'Kurama', 'Equipo Medic', 'Tigre'),
    ('Madara Uchiha', '1848-12-24', 'Fallecido', 'Konoha', 'Sangre Pura', 'Uchiha', 'Equipo Desconocido', 'Humano Uchiha'),
    ('Naruto Uzumaki', '1997-10-10', 'Vivo', 'Konoha', 'Sangre Impura', 'Uzumaki', 'Equipo Kakashi', 'Jinchuriki'),
    ('Orochimaru Senji', '1975-10-01', 'Retirado', 'Otogakure', 'Sangre Impura', 'Darui', 'Equipo Medic', 'Humano'),
    ('Sasuke Uchiha', '1997-07-23', 'Vivo', 'Konoha', 'Sangre Impura', 'Uchiha', 'Equipo Kakashi', 'Humano Uchiha'),
    ('Shikamaru Nara', '1998-09-22', 'Vivo', 'Konoha', 'Sangre Impura', 'Nara', 'Equipo 10', 'Humano'),
    ('Shino Aburame', '1999-01-23', 'Vivo', 'Konoha', 'Sangre Impura', 'Aburame', 'Equipo 8', 'Humano'),
    ('Shirogane', '1995-06-22', 'Desconocido', 'Getsugakure', 'Sangre Pura', 'Shirogane', 'Equipo Desconocido', 'Humano'),
    ('Suigetsu Hozuki', '1996-02-18', 'Vivo', 'Kirigakure', 'Sangre Pura', 'Nara', 'Equipo de Combate', 'Humano'),
    ('Temari', '1994-08-23', 'Vivo', 'Sunagakure', 'Sangre Impura', 'Temari', 'Equipo de Exploracion', 'Humano'),
    ('Tobirama Senju', '1818-01-01', 'Fallecido', 'Konoha', 'Sangre Pura', 'Senju', 'Equipo Senju', 'Humano'),
    ('Yurui Yotsuki', '2002-11-15', 'Vivo', 'Kumogakure', 'Sangre Pura', 'Yotsuki', 'Equipo 10', 'Humano');
	

INSERT INTO RelacionFamiliar (Id_Relacion, NombreShinobi1, NacimientoShinobi1, NombreShinobi2, NacimientoShinobi2, TipoRelacion)
VALUES
    (1, 'Naruto Uzumaki', '1997-10-10', 'Hinata Hyuga', '1999-12-27', 'Esposo'),
    (2, 'Madara Uchiha', '1848-12-24', 'Sasuke Uchiha', '1997-07-23', 'Tatarabuelo'),
    (3, 'Itachi Uchiha', '1984-06-09', 'Sasuke Uchiha', '1997-07-23', 'Hermano'),
    (4, 'Temari', '1994-08-23', 'Shikamaru Nara', '1998-09-22', 'Esposa'),
    (5, 'Sasuke Uchiha', '1997-07-23', 'Suigetsu Hozuki', '1996-02-18', 'Esposo');


INSERT INTO Habilidad (NombreHabilidad, MaestroHabilidad, TipoHabilidad)
VALUES
    ('Chidori', 'Kakashi Hatake', 'Ninjutsu'),
    ('Cofre de Arena', 'Gaara', 'Ninjutsu'),
    ('Kamui', 'Kakashi Hatake', 'Mangekyo Sharingan'),
    ('Liberaci�n de Acero: Armadura', 'Shirogane', 'Kekkei Genkai'),
    ('Liberaci�n de Hielo: Tormenta', 'Suigetsu Hozuki', 'Kekkei Genkai'),
    ('Liberaci�n de Lava: T�cnica de Envoltura', 'Kurotsuchi', 'Kekkei Genkai'),
    ('Liberaci�n de Tormenta: Circo', 'Darui', 'Kekkei Genkai'),
    ('Lobo de Tres Cabezas', 'Kiba Inuzuka', 'Ninjutsu'),
    ('Modo Sabio de la Serpiente', 'Orochimaru', 'Senjutsu'),
    ('Rasengan', 'Minato Namikaze', 'Ninjutsu'),
    ('Susanoo del Mangekyo Sharingan', 'Sasuke Uchiha', 'Kekkei Genkai'),
    ('T�cnica de Clonaci�n de Insectos', 'Shino Aburame', 'Ninjutsu'),
    ('T�cnica de Clonaci�n de Shuriken', 'Hiruzen Sarutobi', 'Ninjutsu'),
    ('T�cnica de Clonaci�n de Sombra', 'Naruto Uzumaki', 'Ninjutsu'),
    ('T�cnica de la Guada�a de Viento', 'Temari', 'Ninjutsu'),
    ('T�cnica de la Prisi�n de Agua: Encierro', 'Yurui Yotsuki', 'Ninjutsu'),
    ('T�cnica de Marionetas', 'Kankuro', 'Ninjutsu'),
    ('T�cnica de Posesi�n de Sombras', 'Shikamaru Nara', 'Ninjutsu'),
    ('T�cnica de Teletransportaci�n', 'Minato Namikaze', 'Ninjutsu'),
    ('T�cnica de Transferencia de Mente', 'Ino Yamanaka', 'Ninjutsu');


INSERT INTO ShinobiHabilidad (Id_Habilidad, NombreShinobi, NacimientoShinobi, NombreHabilidad)
VALUES
	(1, 'Choji Akimichi', '1997-05-01', 'T�cnica de Transferencia de Mente'),
	(2, 'Darui', '1996-02-02', 'T�cnica de Teletransportaci�n'),
	(3, 'Gaara', '1995-01-19', 'T�cnica de Posesi�n de Sombras'),
	(4, 'Gamabunta', '1999-01-03', 'T�cnica de Marionetas'),
	(5, 'Hashirama Senju', '1813-02-23', 'T�cnica de la Prisi�n de Agua: Encierro'),
	(6, 'Hinata Hyuga', '1999-12-27', 'T�cnica de la Guada�a de Viento'),
	(7, 'Hiruzen Sarutobi', '1939-02-10', 'T�cnica de Clonaci�n de Sombra'),
	(8, 'Ino Yamanaka', '1997-09-23', 'T�cnica de Clonaci�n de Shuriken'),
	(9, 'Itachi Uchiha', '1984-06-09', 'T�cnica de Clonaci�n de Insectos'),
	(10, 'Jiraiya', '1958-11-03', 'Susanoo del Mangekyo Sharingan'),
	(11, 'Kaguya Otsutsuki', '1250-03-10', 'Rasengan'),
	(12, 'Kakashi Hatake', '1970-09-15', 'Modo Sabio de la Serpiente'),
	(13, 'Kankuro', '1996-05-15', 'Lobo de Tres Cabezas'),
	(14, 'Kiba Inuzuka', '1999-07-07', 'Liberaci�n de Tormenta: Circo'),
	(15, 'Kurama', '1997-10-10', 'Liberaci�n de Lava: T�cnica de Envoltura'),
	(16, 'Madara Uchiha', '1848-12-24', 'Liberaci�n de Hielo: Tormenta'),
	(17, 'Naruto Uzumaki', '1997-10-10', 'Liberaci�n de Acero: Armadura'),
	(18, 'Orochimaru Senji', '1975-10-01', 'Kamui'),
	(19, 'Sasuke Uchiha', '1997-07-23', 'Cofre de Arena'),
	(20, 'Shikamaru Nara', '1998-09-22', 'Chidori'),
	(21, 'Shino Aburame', '1999-01-23', 'Rasengan'),
	(22, 'Shirogane', '1995-06-22', 'T�cnica de Posesi�n de Sombras'),
	(23, 'Suigetsu Hozuki', '1996-02-18', 'T�cnica de Clonaci�n de Shuriken'),
	(24, 'Temari', '1994-08-23', 'Susanoo del Mangekyo Sharingan'),
	(25, 'Tobirama Senju', '1818-01-01', 'Kamui'),
	(26, 'Yurui Yotsuki', '2002-11-15', 'Chidori');










