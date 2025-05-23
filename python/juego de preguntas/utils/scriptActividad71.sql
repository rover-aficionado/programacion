DROP DATABASE IF EXISTS juego;
CREATE DATABASE juego;
USE juego;

create table usuarios (
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	usuario VARCHAR(10),
	contraseña CHAR(64) NOT NULL,
	puntuacion INT
);

INSERT INTO usuarios (usuario, contraseña, puntuacion) VALUES
('SONIAG',sha2('1234', 256),1),
('SARA',sha2('1234', 256),10),
('GABRIEL',sha2('1234', 256),NULL),
('ROBER', sha2('1234', 256), 2);

-- SI DEVUELVE 1 OK
-- SELECT COUNT(*) FROM USUARIOS WHERE USUARIO='SONIAG' AND CONTRASEñA=SHA2('1234',256);

CREATE TABLE preguntas (
  codigo INT PRIMARY KEY,
  texto VARCHAR(2000) NOT NULL,
  respuesta VARCHAR(2000)
);

INSERT INTO PREGUNTAS VALUES (1,'CUAL ES LA CAPITAL DE FRANCIA','PARÍS');
INSERT INTO PREGUNTAS VALUES (2,'CUAL ES LA CAPITAL DE ALEMANIA','BERLÍN');
INSERT INTO PREGUNTAS VALUES (3,'CUAL ES LA CAPITAL DE AUSTRALIA','CANBERRA');
INSERT INTO PREGUNTAS VALUES (4,'CUAL ES LA CAPITAL DE CANADA','OTTAWA');
INSERT INTO PREGUNTAS VALUES (5,'CUAL ES LA CAPITAL DE EGIPTO','EL CAIRO');
INSERT INTO PREGUNTAS VALUES (6,'CUAL ES LA CAPITAL DE ITALIA','ROMA');
INSERT INTO PREGUNTAS VALUES (7,'CUAL ES LA CAPITAL DE JAPON','TOKIO');
INSERT INTO PREGUNTAS VALUES (8,'CUAL ES LA CAPITAL DE NIGERIA','ABUYA');
INSERT INTO PREGUNTAS VALUES (9,'CUAL ES LA CAPITAL DE SUECIA','ESTOCOLMO');
INSERT INTO PREGUNTAS VALUES (10,'CUAL ES LA CAPITAL DE TURQUIA','ANKARA');
INSERT INTO PREGUNTAS VALUES (11,'CUANTO ES CIEN ENTRE CINCO','20');
INSERT INTO PREGUNTAS VALUES (12,'CUANTO ES CINCO MAS SIETE','12');
INSERT INTO PREGUNTAS VALUES (13,'CUANTO ES EL CINCO AL CUBO','125');
INSERT INTO PREGUNTAS VALUES (14,'CUANTO ES EL NEPERIANO DE 1','0');
INSERT INTO PREGUNTAS VALUES (15,'CUANTO ES LA MEDIA DE CINCO, TRES Y CUATRO','4');
INSERT INTO PREGUNTAS VALUES (16,'CUANTO ES NUEVE POR NUEVE MENOS DOS','79');
INSERT INTO PREGUNTAS VALUES (17,'CUANTO ES QUINCE MENOS CINCO','10');
INSERT INTO PREGUNTAS VALUES (18,'CUANTO ES SIETE POR OCHO','56');
INSERT INTO PREGUNTAS VALUES (19,'CUANTO ES TREINTA MAS VEINTE ENTRE DOS','25');
INSERT INTO PREGUNTAS VALUES (20,'CUANTO ES VEINTICUATRO ENTRE TRES','8');
INSERT INTO PREGUNTAS VALUES (21,'RAIZ CUADRADA DE 9','3');
INSERT INTO PREGUNTAS VALUES (22,'NUMERO DE COMUNIDADES Y CIUDADES AUTONOMAS  DE ESPANA','19');
INSERT INTO PREGUNTAS VALUES (23,'NUMERO DE COMUNIDADES Y CIUDADES AUTONOMAS DE ESPANA SIN COSTA','7');
INSERT INTO PREGUNTAS VALUES (24,'ANIO EN EL QUE COLON LLEGO A AMERICA','1492');
INSERT INTO PREGUNTAS VALUES (25,'MONEDA DE JAPON','YEN');
INSERT INTO PREGUNTAS VALUES (26,'CUAL ES LA MONEDA OFICIAL DE BRASIL','REAL');
INSERT INTO PREGUNTAS VALUES (27,'CUAL ES LA MONEDA OFICIAL DE CANADA','DOLAR CANADIENSE');
INSERT INTO PREGUNTAS VALUES (28,'CUAL ES LA MONEDA OFICIAL DE CHINA','YUAN');
INSERT INTO PREGUNTAS VALUES (29,'CUAL ES LA MONEDA OFICIAL DE ESTADOS UNIDOS','DOLAR');
INSERT INTO PREGUNTAS VALUES (30,'CUAL ES LA MONEDA OFICIAL DE INDIA','RUPIA');
INSERT INTO PREGUNTAS VALUES (31,'CUAL ES LA MONEDA OFICIAL DE MEXICO','PESO');
INSERT INTO PREGUNTAS VALUES (32,'CUAL ES LA MONEDA OFICIAL DE REINO UNIDO','LIBRA');
INSERT INTO PREGUNTAS VALUES (33,'CUAL ES LA MONEDA OFICIAL DE RUSIA','RUBLO');
INSERT INTO PREGUNTAS VALUES (34,'CUAL ES LA MONEDA OFICIAL DE SUIZA','FRANCO SUIZO');
INSERT INTO PREGUNTAS VALUES (35,'CUANTOS PLANETAS HAY EN EL SISTEMA SOLAR','8');
INSERT INTO PREGUNTAS VALUES (36,'QUIEN FORMULO LA TEORIA DE LA RELATIVIDAD','ALBERT EINSTEIN');
INSERT INTO PREGUNTAS VALUES (37,'CUAL ES LA UNIDAD DE MEDIDA DE LA INTENSIDAD ELECTRICA','AMPERIO');
INSERT INTO PREGUNTAS VALUES (38,'COMO SE LLAMA EL PROCESO POR EL CUAL LAS PLANTAS FABRICAN SU ALIMENTO','FOTOSÍNTESIS');
INSERT INTO PREGUNTAS VALUES (39,'CUAL ES EL ELEMENTO QUIMICO CUYO SIMBOLO ES H','HIDRÓGENO');
INSERT INTO PREGUNTAS VALUES (40,'COMO SE LLAMA EL SATELITE NATURAL DE LA TIERRA','LUNA');
INSERT INTO PREGUNTAS VALUES (41,'QUE TIPO DE ANIMAL ES UNA ORCA','MAMÍFERO');
INSERT INTO PREGUNTAS VALUES (42,'CUAL ES EL GAS MAS ABUNDANTE EN LA ATMOSFERA TERRESTRE','NITRÓGENO');
INSERT INTO PREGUNTAS VALUES (43,'CUAL ES EL PLANETA CON MAS SATELITES NATURALES','SATURNO');
INSERT INTO PREGUNTAS VALUES (44,'COMO SE LLAMA LA CIENCIA QUE ESTUDIA LOS SERES VIVOS','BIOLOGÍA');
INSERT INTO PREGUNTAS VALUES (45,'PLANETA MAS GRANDE DEL SISTEMA SOLAR','JUPITER');
INSERT INTO PREGUNTAS VALUES (46,'ELEMENTO QUIMICO DE SIMBOLO O','OXÍGENO');
INSERT INTO PREGUNTAS VALUES (47,'APELLIDO DEL DESCUBRIDOR DE LA PENICILINA','ALEXANDER FLEMING');
INSERT INTO PREGUNTAS VALUES (48,'PINTOR DE LA MONA LISA','LEONARDO DA VINCI');
INSERT INTO PREGUNTAS VALUES (49,'CONTINENTE DE EGIPTO','ÁFRICA');
INSERT INTO PREGUNTAS VALUES (50,'OCEANO MAS GRANDE DEL MUNDO','PACÍFICO');
INSERT INTO PREGUNTAS VALUES (51,'INSTRUMENTO QUE MIDE LOS TERREMOTOS','SISMÓGRAFO');
INSERT INTO PREGUNTAS VALUES (52,'GAS QUE EXHALAN LOS HUMANOS','DIÓXIDO DE CARBONO');
INSERT INTO PREGUNTAS VALUES (53,'METAL CON SIMBOLO FE','HIERRO');
INSERT INTO PREGUNTAS VALUES (54,'MONTANA MAS ALTA DEL MUNDO','EVEREST');
INSERT INTO PREGUNTAS VALUES (55,'GANADOR DEL MUNDIAL DE FUTBOL EN 2022','ARGENTINA');
INSERT INTO PREGUNTAS VALUES (56,'FILOSOFO MAESTRO DE ALEJANDRO MAGNO','ARISTÓTELES');
INSERT INTO PREGUNTAS VALUES (57,'RIO MAS LARGO DEL MUNDO','NILO');
INSERT INTO PREGUNTAS VALUES (58,'COMO SE LLAMA EL ESCULTOR DE EL DAVID DE MIGUEL ANGEL','MICHEANGELO'); -- para fastidiar ;)
INSERT INTO PREGUNTAS VALUES (59,'CUAL ES EL ESTILO ARTISTICO DE SALVADOR DALI','SURREALISMO');
INSERT INTO PREGUNTAS VALUES (60,'QUIEN ESCRIBIO LA ILIADA','HOMERO');
INSERT INTO PREGUNTAS VALUES (61,'QUIEN PINTO LA NOCHE ESTRELLADA','VINCENT VAN GOGH');
INSERT INTO PREGUNTAS VALUES (62,'COMO SE LLAMA EL ESTILO ARTISTICO DE PICASSO','CUBISMO');
INSERT INTO PREGUNTAS VALUES (63,'COMO SE LLAMA LA OBRA MAS FAMOSA DE HOMERO','LA ODISEA');
INSERT INTO PREGUNTAS VALUES (64,'CUAL ES EL NOMBRE DEL MUSEO MAS FAMOSO DE PARIS','LOUVRE');
INSERT INTO PREGUNTAS VALUES (65,'CUAL ES LA OBRA MAS FAMOSA DE LEONARDO DA VINCI','LA MONA LISA');
INSERT INTO PREGUNTAS VALUES (66,'NOMBRE Y APELLIDO DEL ESCRITOR DE DON QUIJOTE DE LA MANCHA','MIGUEL DE CERVANTES');
INSERT INTO PREGUNTAS VALUES (67,'QUIEN ES EL AUTOR DE CIEN ANOS DE SOLEDAD','GABRIEL GARCíA MARQUEZ');
INSERT INTO PREGUNTAS VALUES (68,'QUIEN ES EL AUTOR DE LA DIVINA COMEDIA','DANTE');
INSERT INTO PREGUNTAS VALUES (69,'QUIEN ESCRIBIO HAMLET','SHAKESPEARE');
INSERT INTO PREGUNTAS VALUES (70,'QUIEN PINTO LA CAPILLA SIXTINA','MIGUEL ANGEL');
INSERT INTO PREGUNTAS VALUES (71,'QUIEN DESCUBRIO AMERICA','CRISTÓBAL COLÓN');
INSERT INTO PREGUNTAS VALUES (72,'QUIEN FUE EL PRIMER HOMBRE EN LLEGAR A LA LUNA','NEIL ARMSTRONG');
INSERT INTO PREGUNTAS VALUES (73,'CUANDO CAYÓ EL MURO DE BERLIN','1989');
INSERT INTO PREGUNTAS VALUES (74,'QUIEN FUE EL PRIMER PRESIDENTE DE ESTADOS UNIDOS','GEORGE WASHINGTON');
INSERT INTO PREGUNTAS VALUES (75,'EN QUE AÑO SE INDEPENDIZÓ ESPAÑA DE FRANCIA','1812');
INSERT INTO PREGUNTAS VALUES (76,'QUIEN INVENTÓ LA TELEVISIÓN','JOHN LOGIE BAIRD');
INSERT INTO PREGUNTAS VALUES (77,'QUIEN FUE EL PRIMER HOMBRE EN VOLAR','WILBUR WRIGHT');
INSERT INTO PREGUNTAS VALUES (78,'CUANTO ES UN KILÓMETRO EN METROS','1000');
INSERT INTO PREGUNTAS VALUES (79,'CUAL ES EL PRIMER ELEMENTO DE LA TABLA PERIODICA','HIDRÓGENO');
INSERT INTO PREGUNTAS VALUES (80,'CUANTOS CONTINENTES HAY EN LA TIERRA','7');
INSERT INTO PREGUNTAS VALUES (81,'CUANTOS HUESOS TIENE EL CUERPO HUMANO','206');
INSERT INTO PREGUNTAS VALUES (82,'EN QUE AÑO TERMINÓ LA SEGUNDA GUERRA MUNDIAL','1945');
INSERT INTO PREGUNTAS VALUES (83,'CUANTOS ESTADOS TIENE ESTADOS UNIDOS','50');
INSERT INTO PREGUNTAS VALUES (84,'CUALES SON LOS DOS PAISES QUE COMPARTEN LA FRONTERA MAS LARGA DEL MUNDO','CANADÁ Y ESTADOS UNIDOS');
INSERT INTO PREGUNTAS VALUES (85,'QUIEN FUE EL PRIMER EMPERADOR DE ROMA','AUGUSTO');
INSERT INTO PREGUNTAS VALUES (86,'CUAL ES EL LENGUAJE OFICIAL DE FINLANDIA','FINES');
INSERT INTO PREGUNTAS VALUES (87,'CUAL ES LA CAPITAL DE ETIOPIA','ADDIS ABEBA');
INSERT INTO PREGUNTAS VALUES (88,'QUIEN ES EL CREADOR DE FACEBOOK','MARK ZUCKERBERG');
INSERT INTO PREGUNTAS VALUES (89,'EN QUE AÑO SE FUNDÓ GOOGLE','1998');
INSERT INTO PREGUNTAS VALUES (90,'QUIEN FUE EL PINTOR DEL "GRITO"','EDVARD MUNCH');
INSERT INTO PREGUNTAS VALUES (91,'QUIEN FUE EL MAS FAMOSO FOTÓGRAFO DE LA GUERRA CIVIL ESPAÑOLA','ROBERT CAPA');
INSERT INTO PREGUNTAS VALUES (92,'QUIEN INVENTÓ EL TELÉFONO','ALEXANDER GRAHAM BELL');
INSERT INTO PREGUNTAS VALUES (93,'QUIEN ES EL FOTÓGRAFO CONOCIDO COMO "EL FOTÓGRAFO DE HONG KONG"','FAN HO');
INSERT INTO PREGUNTAS VALUES (94,'QUIEN FUE EL PRIMER SER HUMANO EN VIAJAR AL ESPACIO','YURI GAGARIN');
INSERT INTO PREGUNTAS VALUES (95,'QUIEN ES EL ESCRITOR DE DUNE','FRANK HERBERT');
INSERT INTO PREGUNTAS VALUES (96,'COMO SE LLAMA EL CAPITÁN DEL "ALCÓN MILENARIO"','HAN SOLO');
INSERT INTO PREGUNTAS VALUES (97,'CUAL ES IDIOMA OFICIAL DE SENEGAL','FRANCÉS');
INSERT INTO PREGUNTAS VALUES (98,'CUANTOS LADOS TIENE UN HEXÁGONO','6');
INSERT INTO PREGUNTAS VALUES (99,'CUANTOS SEGUNDOS TIENE UN HORA','3600');
INSERT INTO PREGUNTAS VALUES (100,'CUAL ES LA CAPITAL DE ESPAÑA','MADRID');

-- tabla de las partidas ganadas
CREATE TABLE partidas(
	id_partida INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	tiempo_empleado INT,
	fecha VARCHAR(50),
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

INSERT INTO partidas (id_usuario, tiempo_empleado, fecha) VALUES 
(4, 62, '2025-05-20'),
(2, 45, '2025-05-21');


COMMIT;