-- ============================================================
-- CaféTrace - Script DML Completo (~1000 registros reales)
-- Schema: cafetrace
-- Autores: Luisa Fernanda Ovallos Carrascal 
-- Versión: 2.0 PostgreSQL
-- ============================================================

-- Limpiar datos previos (orden inverso por FK)
TRUNCATE cafetrace.invoice_detail CASCADE;
TRUNCATE cafetrace.invoice CASCADE;
TRUNCATE cafetrace.qr_code CASCADE;
TRUNCATE cafetrace.certification CASCADE;
TRUNCATE cafetrace.photo CASCADE;
TRUNCATE cafetrace.productive_process CASCADE;
TRUNCATE cafetrace.batch CASCADE;
TRUNCATE cafetrace.farm CASCADE;
TRUNCATE cafetrace.admin CASCADE;
TRUNCATE cafetrace.buyer CASCADE;
TRUNCATE cafetrace.farmer CASCADE;
TRUNCATE cafetrace.person CASCADE;
TRUNCATE cafetrace.municipality CASCADE;
TRUNCATE cafetrace.department CASCADE;

-- ============================================================
-- 1. DEPARTMENT
-- ============================================================
INSERT INTO cafetrace.department VALUES ('DEP01','Norte de Santander');
INSERT INTO cafetrace.department VALUES ('DEP02','Antioquia');
INSERT INTO cafetrace.department VALUES ('DEP03','Huila');
INSERT INTO cafetrace.department VALUES ('DEP04','Nariño');
INSERT INTO cafetrace.department VALUES ('DEP05','Cauca');
INSERT INTO cafetrace.department VALUES ('DEP06','Caldas');
INSERT INTO cafetrace.department VALUES ('DEP07','Risaralda');
INSERT INTO cafetrace.department VALUES ('DEP08','Quindío');
INSERT INTO cafetrace.department VALUES ('DEP09','Tolima');

-- ============================================================
-- 2. MUNICIPALITY
-- ============================================================
INSERT INTO cafetrace.municipality VALUES ('MUN01','Ocaña','DEP01');
INSERT INTO cafetrace.municipality VALUES ('MUN02','Salazar','DEP01');
INSERT INTO cafetrace.municipality VALUES ('MUN03','Teorama','DEP01');
INSERT INTO cafetrace.municipality VALUES ('MUN04','El Carmen','DEP01');
INSERT INTO cafetrace.municipality VALUES ('MUN05','Hacarí','DEP01');
INSERT INTO cafetrace.municipality VALUES ('MUN06','Jardín','DEP02');
INSERT INTO cafetrace.municipality VALUES ('MUN07','Jericó','DEP02');
INSERT INTO cafetrace.municipality VALUES ('MUN08','Andes','DEP02');
INSERT INTO cafetrace.municipality VALUES ('MUN09','Támesis','DEP02');
INSERT INTO cafetrace.municipality VALUES ('MUN10','Caicedo','DEP02');
INSERT INTO cafetrace.municipality VALUES ('MUN11','Pitalito','DEP03');
INSERT INTO cafetrace.municipality VALUES ('MUN12','San Agustín','DEP03');
INSERT INTO cafetrace.municipality VALUES ('MUN13','Acevedo','DEP03');
INSERT INTO cafetrace.municipality VALUES ('MUN14','Isnos','DEP03');
INSERT INTO cafetrace.municipality VALUES ('MUN15','Palestina','DEP03');
INSERT INTO cafetrace.municipality VALUES ('MUN16','La Unión','DEP04');
INSERT INTO cafetrace.municipality VALUES ('MUN17','El Tablón','DEP04');
INSERT INTO cafetrace.municipality VALUES ('MUN18','Buesaco','DEP04');
INSERT INTO cafetrace.municipality VALUES ('MUN19','Colón','DEP04');
INSERT INTO cafetrace.municipality VALUES ('MUN20','San Lorenzo','DEP04');
INSERT INTO cafetrace.municipality VALUES ('MUN21','Inzá','DEP05');
INSERT INTO cafetrace.municipality VALUES ('MUN22','Páez','DEP05');
INSERT INTO cafetrace.municipality VALUES ('MUN23','Totoró','DEP05');
INSERT INTO cafetrace.municipality VALUES ('MUN24','Silvia','DEP05');
INSERT INTO cafetrace.municipality VALUES ('MUN25','Cajibío','DEP05');
INSERT INTO cafetrace.municipality VALUES ('MUN26','Chinchiná','DEP06');
INSERT INTO cafetrace.municipality VALUES ('MUN27','Palestina','DEP06');
INSERT INTO cafetrace.municipality VALUES ('MUN28','Manizales','DEP06');
INSERT INTO cafetrace.municipality VALUES ('MUN29','Villamaría','DEP06');
INSERT INTO cafetrace.municipality VALUES ('MUN30','Neira','DEP06');
INSERT INTO cafetrace.municipality VALUES ('MUN31','Pereira','DEP07');
INSERT INTO cafetrace.municipality VALUES ('MUN32','Santa Rosa de Cabal','DEP07');
INSERT INTO cafetrace.municipality VALUES ('MUN33','Marsella','DEP07');
INSERT INTO cafetrace.municipality VALUES ('MUN34','Belén de Umbría','DEP07');
INSERT INTO cafetrace.municipality VALUES ('MUN35','Quinchía','DEP07');
INSERT INTO cafetrace.municipality VALUES ('MUN36','Armenia','DEP08');
INSERT INTO cafetrace.municipality VALUES ('MUN37','Montenegro','DEP08');
INSERT INTO cafetrace.municipality VALUES ('MUN38','Quimbaya','DEP08');
INSERT INTO cafetrace.municipality VALUES ('MUN39','Filandia','DEP08');
INSERT INTO cafetrace.municipality VALUES ('MUN40','Salento','DEP08');
INSERT INTO cafetrace.municipality VALUES ('MUN41','Ibagué','DEP09');
INSERT INTO cafetrace.municipality VALUES ('MUN42','Planadas','DEP09');
INSERT INTO cafetrace.municipality VALUES ('MUN43','Chaparral','DEP09');
INSERT INTO cafetrace.municipality VALUES ('MUN44','Roncesvalles','DEP09');
INSERT INTO cafetrace.municipality VALUES ('MUN45','Ataco','DEP09');

-- ============================================================
-- 3. PERSON (205 personas: 150 farmers + 50 buyers + 5 admins)
-- ============================================================
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (1,'Carlos Alberto','Ramírez','Gómez','carlos.ramirez1@cafetrace.co','3101234501','2024-01-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (2,'Pedro Antonio','Gómez','Ruiz','pedro.gomez2@cafetrace.co','3101234502','2024-01-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (3,'Luis Ernesto','Martínez','López','luis.martinez3@cafetrace.co','3101234503','2024-01-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (4,'Jorge Hernán','López','Pérez','jorge.lopez4@cafetrace.co','3101234504','2024-01-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (5,'Andrés Felipe','Pérez','Torres','andres.perez5@cafetrace.co','3101234505','2024-01-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (6,'Miguel Ángel','Torres','Vargas','miguel.torres6@cafetrace.co','3101234506','2024-01-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (7,'Humberto José','Vargas','Castro','humberto.vargas7@cafetrace.co','3101234507','2024-01-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (8,'Jaime Eduardo','Castro','Herrera','jaime.castro8@cafetrace.co','3101234508','2024-01-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (9,'Álvaro Enrique','Herrera','Díaz','alvaro.herrera9@cafetrace.co','3101234509','2024-01-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (10,'Ricardo Augusto','Díaz','Morales','ricardo.diaz10@cafetrace.co','3101234510','2024-01-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (11,'Fabio Arturo','Morales','Ortiz','fabio.morales11@cafetrace.co','3101234511','2024-01-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (12,'Nelson Giovanny','Ortiz','Reyes','nelson.ortiz12@cafetrace.co','3101234512','2024-01-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (13,'Gustavo Adolfo','Reyes','Molina','gustavo.reyes13@cafetrace.co','3101234513','2024-01-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (14,'Hernando Moisés','Molina','Rojas','hernando.molina14@cafetrace.co','3101234514','2024-01-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (15,'Bernardo Elías','Rojas','Mendoza','bernardo.rojas15@cafetrace.co','3101234515','2024-01-29','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (16,'Camilo Augusto','Mendoza','Ríos','camilo.mendoza16@cafetrace.co','3101234516','2024-01-30','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (17,'Rubén Darío','Ríos','Sánchez','ruben.rios17@cafetrace.co','3101234517','2024-01-31','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (18,'Iván Camilo','Sánchez','Aguilar','ivan.sanchez18@cafetrace.co','3101234518','2024-02-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (19,'Oswaldo Fermín','Aguilar','Vega','oswaldo.aguilar19@cafetrace.co','3101234519','2024-02-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (20,'Héctor Manuel','Vega','Medina','hector.vega20@cafetrace.co','3101234520','2024-02-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (21,'Ana Lucía','Medina','Castillo','ana.medina21@cafetrace.co','3201234521','2024-02-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (22,'María Fernanda','Castillo','Guerrero','maria.castillo22@cafetrace.co','3201234522','2024-02-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (23,'Gloria Patricia','Guerrero','Suárez','gloria.guerrero23@cafetrace.co','3201234523','2024-02-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (24,'Sandra Milena','Suárez','Pineda','sandra.suarez24@cafetrace.co','3201234524','2024-02-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (25,'Luisa Fernanda','Pineda','Ospina','luisa.pineda25@cafetrace.co','3201234525','2024-02-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (26,'Claudia Marcela','Ospina','Londoño','claudia.ospina26@cafetrace.co','3201234526','2024-02-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (27,'Paola Andrea','Londoño','Giraldo','paola.londono27@cafetrace.co','3201234527','2024-02-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (28,'Diana Carolina','Giraldo','Cano','diana.giraldo28@cafetrace.co','3201234528','2024-02-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (29,'Natalia Alejandra','Cano','Bedoya','natalia.cano29@cafetrace.co','3201234529','2024-02-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (30,'Valentina Isabel','Bedoya','Salazar','valentina.bedoya30@cafetrace.co','3201234530','2024-02-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (31,'Olga Cecilia','Salazar','Henao','olga.salazar31@cafetrace.co','3201234531','2024-02-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (32,'Beatriz Elena','Henao','Zapata','beatriz.henao32@cafetrace.co','3201234532','2024-02-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (33,'Rosa Alba','Zapata','Muñoz','rosa.zapata33@cafetrace.co','3201234533','2024-02-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (34,'Esperanza Luz','Muñoz','Patiño','esperanza.munoz34@cafetrace.co','3201234534','2024-02-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (35,'Consuelo María','Patiño','Arango','consuelo.patino35@cafetrace.co','3201234535','2024-02-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (36,'Amparo Inés','Arango','Escobar','amparo.arango36@cafetrace.co','3201234536','2024-02-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (37,'Nohora Stella','Escobar','Cárdenas','nohora.escobar37@cafetrace.co','3201234537','2024-02-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (38,'Yolanda Mercedes','Cárdenas','Flórez','yolanda.cardenas38@cafetrace.co','3201234538','2024-02-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (39,'Martha Cecilia','Flórez','Acosta','martha.florez39@cafetrace.co','3201234539','2024-02-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (40,'Ligia Emperatriz','Acosta','Mora','ligia.acosta40@cafetrace.co','3201234540','2024-02-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (41,'Fermín Alonso','Mora','Quintero','fermin.mora41@cafetrace.co','3101234541','2024-02-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (42,'Efraín Segundo','Quintero','Bermúdez','efrain.quintero42@cafetrace.co','3101234542','2024-02-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (43,'Jesús Antonio','Bermúdez','Arias','jesus.bermudez43@cafetrace.co','3101234543','2024-02-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (44,'Domingo Rafael','Arias','Montoya','domingo.arias44@cafetrace.co','3101234544','2024-02-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (45,'Silvio Germán','Montoya','Cardona','silvio.montoya45@cafetrace.co','3101234545','2024-02-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (46,'Ovidio Nemesio','Cardona','Velásquez','ovidio.cardona46@cafetrace.co','3101234546','2024-03-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (47,'Evelio Próspero','Velásquez','Tobón','evelio.velasquez47@cafetrace.co','3101234547','2024-03-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (48,'Gilberto Noel','Tobón','Correa','gilberto.tobon48@cafetrace.co','3101234548','2024-03-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (49,'Ciro Alfonso','Correa','Álvarez','ciro.correa49@cafetrace.co','3101234549','2024-03-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (50,'Teodoro Lisandro','Álvarez','Zuluaga','teodoro.alvarez50@cafetrace.co','3101234550','2024-03-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (51,'Benigno Aurelio','Zuluaga','Echeverri','benigno.zuluaga51@cafetrace.co','3101234551','2024-03-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (52,'Arcesio Benedicto','Echeverri','Palacio','arcesio.echeverri52@cafetrace.co','3101234552','2024-03-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (53,'Pompilio Serafín','Palacio','Sierra','pompilio.palacio53@cafetrace.co','3101234553','2024-03-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (54,'Hermógenes Fabián','Sierra','Gallego','hermogenes.sierra54@cafetrace.co','3101234554','2024-03-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (55,'Eladio Porfirio','Gallego','Osorio','eladio.gallego55@cafetrace.co','3101234555','2024-03-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (56,'Libardo Custodio','Osorio','Grisales','libardo.osorio56@cafetrace.co','3101234556','2024-03-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (57,'Onésimo Patricio','Grisales','Toro','onesimo.grisales57@cafetrace.co','3101234557','2024-03-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (58,'Adalberto Cipriano','Toro','Sepúlveda','adalberto.toro58@cafetrace.co','3101234558','2024-03-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (59,'Teófilo Crisanto','Sepúlveda','Obando','teofilo.sepulveda59@cafetrace.co','3101234559','2024-03-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (60,'Salomón Ezequiel','Obando','Castaño','salomon.obando60@cafetrace.co','3101234560','2024-03-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (61,'Yesid Enrique','Castaño','Hoyos','yesid.castano61@cafetrace.co','3151234561','2024-03-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (62,'Jhon Fredy','Hoyos','Parra','jhon.hoyos62@cafetrace.co','3151234562','2024-03-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (63,'Ferney Alexánder','Parra','Valencia','ferney.parra63@cafetrace.co','3151234563','2024-03-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (64,'Wilmar Augusto','Valencia','Orozco','wilmar.valencia64@cafetrace.co','3151234564','2024-03-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (65,'Elkin Mauricio','Orozco','Marín','elkin.orozco65@cafetrace.co','3151234565','2024-03-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (66,'Stiven Giovani','Marín','Ríos','stiven.marin66@cafetrace.co','3151234566','2024-03-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (67,'Dairo Hernán','Ríos','Aguirre','dairo.rios67@cafetrace.co','3151234567','2024-03-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (68,'Néstor Fabián','Aguirre','Calle','nestor.aguirre68@cafetrace.co','3151234568','2024-03-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (69,'Eduar Alexis','Calle','Rengifo','eduar.calle69@cafetrace.co','3151234569','2024-03-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (70,'Arley Danilo','Rengifo','Muñoz','arley.rengifo70@cafetrace.co','3151234570','2024-03-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (71,'Leidy Johana','Muñoz','Cifuentes','leidy.munoz71@cafetrace.co','3151234571','2024-03-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (72,'Yuri Alejandra','Cifuentes','Gómez','yuri.cifuentes72@cafetrace.co','3151234572','2024-03-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (73,'Lina Marcela','Gómez','Restrepo','lina.gomez73@cafetrace.co','3151234573','2024-03-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (74,'Juliana Paola','Restrepo','Ocampo','juliana.restrepo74@cafetrace.co','3151234574','2024-03-29','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (75,'Sonia Esperanza','Ocampo','Taborda','sonia.ocampo75@cafetrace.co','3151234575','2024-03-30','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (76,'Adriana María','Taborda','Soto','adriana.taborda76@cafetrace.co','3151234576','2024-03-31','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (77,'Carolina Andrea','Soto','Jaramillo','carolina.soto77@cafetrace.co','3151234577','2024-04-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (78,'Viviana Rocío','Jaramillo','Cárdenas','viviana.jaramillo78@cafetrace.co','3151234578','2024-04-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (79,'Maribel Constanza','Cárdenas','Largo','maribel.cardenas79@cafetrace.co','3151234579','2024-04-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (80,'Zulma Nathaly','Largo','Betancur','zulma.largo80@cafetrace.co','3151234580','2024-04-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (81,'Enrique Darío','Betancur','Naranjo','enrique.betancur81@cafetrace.co','3161234581','2024-04-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (82,'Wilson Hernando','Naranjo','Ossa','wilson.naranjo82@cafetrace.co','3161234582','2024-04-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (83,'Orlando Hernán','Ossa','Franco','orlando.ossa83@cafetrace.co','3161234583','2024-04-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (84,'Ramiro Alonso','Franco','Álvarez','ramiro.franco84@cafetrace.co','3161234584','2024-04-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (85,'Didier Alexánder','Álvarez','Duque','didier.alvarez85@cafetrace.co','3161234585','2024-04-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (86,'Geovanny Esneider','Duque','Mesa','geovanny.duque86@cafetrace.co','3161234586','2024-04-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (87,'Cristian Camilo','Mesa','Aristizábal','cristian.mesa87@cafetrace.co','3161234587','2024-04-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (88,'Sebastián Andrés','Aristizábal','Posada','sebastian.aristizabal88@cafetrace.co','3161234588','2024-04-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (89,'Nicolás Esteban','Posada','Rendón','nicolas.posada89@cafetrace.co','3161234589','2024-04-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (90,'Alejandro José','Rendón','López','alejandro.rendon90@cafetrace.co','3161234590','2024-04-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (91,'Tatiana Liseth','López','Agudelo','tatiana.lopez91@cafetrace.co','3161234591','2024-04-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (92,'Manuela Isabel','Agudelo','Peláez','manuela.agudelo92@cafetrace.co','3161234592','2024-04-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (93,'Isabella Sofía','Peláez','Mejía','isabella.pelaez93@cafetrace.co','3161234593','2024-04-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (94,'Valentina Andrea','Mejía','Gutiérrez','valentina.mejia94@cafetrace.co','3161234594','2024-04-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (95,'Daniela Camila','Gutiérrez','Monsalve','daniela.gutierrez95@cafetrace.co','3161234595','2024-04-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (96,'Sara Luciana','Monsalve','Isaza','sara.monsalve96@cafetrace.co','3161234596','2024-04-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (97,'Salomé Cristina','Isaza','Vélez','salome.isaza97@cafetrace.co','3161234597','2024-04-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (98,'Samantha Natalia','Vélez','Uribe','samantha.velez98@cafetrace.co','3161234598','2024-04-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (99,'Melissa Paola','Uribe','Ceballos','melissa.uribe99@cafetrace.co','3161234599','2024-04-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (100,'Estefanía Lorena','Ceballos','Giraldo','estefania.ceballos100@cafetrace.co','3161234600','2024-04-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (101,'Joaquín Ignacio','Giraldo','Palacios','joaquin.giraldo101@cafetrace.co','3171234601','2024-04-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (102,'Maximiliano José','Palacios','Henao','maximiliano.palacios102@cafetrace.co','3171234602','2024-04-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (103,'Francisco Javier','Henao','Arboleda','francisco.henao103@cafetrace.co','3171234603','2024-04-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (104,'Santiago Alejandro','Arboleda','Marulanda','santiago.arboleda104@cafetrace.co','3171234604','2024-04-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (105,'Tomás Eduardo','Marulanda','Gaviria','tomas.marulanda105@cafetrace.co','3171234605','2024-04-29','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (106,'Matías Ignacio','Gaviria','Botero','matias.gaviria106@cafetrace.co','3171234606','2024-04-30','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (107,'Samuel Andrés','Botero','Piedrahíta','samuel.botero107@cafetrace.co','3171234607','2024-05-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (108,'Emilio Rafael','Piedrahíta','Villegas','emilio.piedrahita108@cafetrace.co','3171234608','2024-05-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (109,'Julián Alonso','Villegas','Arbeláez','julian.villegas109@cafetrace.co','3171234609','2024-05-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (110,'Agustín Darío','Arbeláez','Escobar','agustin.arbelaez110@cafetrace.co','3171234610','2024-05-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (111,'Zoila Amparo','Escobar','Tamayo','zoila.escobar111@cafetrace.co','3171234611','2024-05-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (112,'Aura María','Tamayo','Calderón','aura.tamayo112@cafetrace.co','3171234612','2024-05-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (113,'Nubia Cecilia','Calderón','Ospina','nubia.calderon113@cafetrace.co','3171234613','2024-05-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (114,'Elva Rocío','Ospina','Aguilar','elva.ospina114@cafetrace.co','3171234614','2024-05-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (115,'Dora Inés','Aguilar','Salinas','dora.aguilar115@cafetrace.co','3171234615','2024-05-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (116,'Flor Ángela','Salinas','Jiménez','flor.salinas116@cafetrace.co','3171234616','2024-05-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (117,'Carmen Alicia','Jiménez','Muñetón','carmen.jimenez117@cafetrace.co','3171234617','2024-05-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (118,'Dolores Amparo','Muñetón','Acevedo','dolores.muneton118@cafetrace.co','3171234618','2024-05-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (119,'Fátima Leonor','Acevedo','Cuervo','fatima.acevedo119@cafetrace.co','3171234619','2024-05-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (120,'Gilma Patricia','Cuervo','Ramírez','gilma.cuervo120@cafetrace.co','3171234620','2024-05-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (121,'Héctor Fabio','Ramírez','Alzate','hector.ramirez121@cafetrace.co','3181234621','2024-05-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (122,'Inocencio Dario','Alzate','Castaño','inocencio.alzate122@cafetrace.co','3181234622','2024-05-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (123,'Jacinto Albeiro','Castaño','Peña','jacinto.castano123@cafetrace.co','3181234623','2024-05-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (124,'Kenedy Stiven','Peña','Ríos','kenedy.pena124@cafetrace.co','3181234624','2024-05-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (125,'Lesmes Orlando','Ríos','Cano','lesmes.rios125@cafetrace.co','3181234625','2024-05-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (126,'Misael Rodrigo','Cano','Flórez','misael.cano126@cafetrace.co','3181234626','2024-05-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (127,'Noé Alirio','Flórez','Zapata','noe.florez127@cafetrace.co','3181234627','2024-05-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (128,'Omar Augusto','Zapata','Correa','omar.zapata128@cafetrace.co','3181234628','2024-05-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (129,'Primitivo Albán','Correa','Serna','primitivo.correa129@cafetrace.co','3181234629','2024-05-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (130,'Quirino Lisimaco','Serna','Montoya','quirino.serna130@cafetrace.co','3181234630','2024-05-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (131,'Reinel Augusto','Montoya','Vargas','reinel.montoya131@cafetrace.co','3181234631','2024-05-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (132,'Sigifredo Arnulfo','Vargas','Toro','sigifredo.vargas132@cafetrace.co','3181234632','2024-05-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (133,'Tulio Ernesto','Toro','Gallego','tulio.toro133@cafetrace.co','3181234633','2024-05-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (134,'Ubaldo Ciro','Gallego','Cardona','ubaldo.gallego134@cafetrace.co','3181234634','2024-05-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (135,'Vladimiro Serio','Cardona','Gómez','vladimiro.cardona135@cafetrace.co','3181234635','2024-05-29','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (136,'Wílmar Azael','Gómez','Castro','wilmar.gomez136@cafetrace.co','3181234636','2024-05-30','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (137,'Ximena Lucelly','Castro','Morales','ximena.castro137@cafetrace.co','3181234637','2024-05-31','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (138,'Yenny Marcela','Morales','Torres','yenny.morales138@cafetrace.co','3181234638','2024-06-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (139,'Zenaida Consuelo','Torres','Herrera','zenaida.torres139@cafetrace.co','3181234639','2024-06-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (140,'Adelaida Victoria','Herrera','Díaz','adelaida.herrera140@cafetrace.co','3181234640','2024-06-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (141,'Bárbara Estela','Díaz','Ortiz','barbara.diaz141@cafetrace.co','3191234641','2024-06-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (142,'Celestina Rosalba','Ortiz','Reyes','celestina.ortiz142@cafetrace.co','3191234642','2024-06-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (143,'Domitila Ernestina','Reyes','Molina','domitila.reyes143@cafetrace.co','3191234643','2024-06-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (144,'Edilma Rosmary','Molina','Rojas','edilma.molina144@cafetrace.co','3191234644','2024-06-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (145,'Felisa Bertilda','Rojas','Mendoza','felisa.rojas145@cafetrace.co','3191234645','2024-06-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (146,'Graciela Amparo','Mendoza','Ríos','graciela.mendoza146@cafetrace.co','3191234646','2024-06-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (147,'Hortensia Nelly','Ríos','Sánchez','hortensia.rios147@cafetrace.co','3191234647','2024-06-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (148,'Ignacia Teresita','Sánchez','Aguilar','ignacia.sanchez148@cafetrace.co','3191234648','2024-06-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (149,'Josefina Perpetua','Aguilar','Vega','josefina.aguilar149@cafetrace.co','3191234649','2024-06-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (150,'Karina Esperanza','Vega','Medina','karina.vega150@cafetrace.co','3191234650','2024-06-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (151,'Roberto Carlos','Suárez','Ríos','roberto.suarez151@cafetrace.co','3001234651','2024-01-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (152,'Mauricio Hernán','Restrepo','Cano','mauricio.restrepo152@cafetrace.co','3001234652','2024-01-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (153,'Alejandro Luis','Ospina','Zapata','alejandro.ospina153@cafetrace.co','3001234653','2024-01-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (154,'Felipe Andrés','Cardona','Flórez','felipe.cardona154@cafetrace.co','3001234654','2024-01-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (155,'Jhonatan David','Arango','Correa','jhonatan.arango155@cafetrace.co','3001234655','2024-01-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (156,'Sebastián Felipe','Giraldo','Serna','sebastian.giraldo156@cafetrace.co','3001234656','2024-01-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (157,'Santiago Mauricio','Montoya','Vargas','santiago.montoya157@cafetrace.co','3001234657','2024-01-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (158,'Camilo Alberto','Toro','Castro','camilo.toro158@cafetrace.co','3001234658','2024-01-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (159,'Daniel Esteban','Gallego','Herrera','daniel.gallego159@cafetrace.co','3001234659','2024-01-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (160,'Diego Alejandro','Gómez','Martínez','diego.gomez160@cafetrace.co','3001234660','2024-01-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (161,'Catalina María','Ramírez','López','catalina.ramirez161@cafetrace.co','3001234661','2024-01-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (162,'Mónica Liliana','González','Pérez','monica.gonzalez162@cafetrace.co','3001234662','2024-01-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (163,'Patricia Elena','Jiménez','Torres','patricia.jimenez163@cafetrace.co','3001234663','2024-01-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (164,'Angela Rocío','Morales','Vargas','angela.morales164@cafetrace.co','3001234664','2024-01-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (165,'Marcela Inés','Ríos','Gutiérrez','marcela.rios165@cafetrace.co','3001234665','2024-01-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (166,'Johana Paola','Castro','Ramos','johana.castro166@cafetrace.co','3001234666','2024-01-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (167,'Andrea Milena','Herrera','Soto','andrea.herrera167@cafetrace.co','3001234667','2024-01-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (168,'Lorena Viviana','Díaz','Peña','lorena.diaz168@cafetrace.co','3001234668','2024-01-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (169,'Verónica Sofía','Ortiz','Mora','veronica.ortiz169@cafetrace.co','3001234669','2024-01-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (170,'Bibiana Estela','Reyes','Cárdenas','bibiana.reyes170@cafetrace.co','3001234670','2024-01-29','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (171,'Juan Pablo','Molina','Salamanca','juan.molina171@cafetrace.co','3001234671','2024-01-30','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (172,'Carlos Mario','Rojas','Aristizábal','carlos.rojas172@cafetrace.co','3001234672','2024-01-31','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (173,'Luis Miguel','Mendoza','Villegas','luis.mendoza173@cafetrace.co','3001234673','2024-02-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (174,'Víctor Hugo','Sánchez','Arbeláez','victor.sanchez174@cafetrace.co','3001234674','2024-02-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (175,'Ernesto Rafael','Aguilar','Piedrahíta','ernesto.aguilar175@cafetrace.co','3001234675','2024-02-03','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (176,'Gustavo Enrique','Vega','Botero','gustavo.vega176@cafetrace.co','3001234676','2024-02-04','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (177,'Ricardo Emilio','Medina','Gaviria','ricardo.medina177@cafetrace.co','3001234677','2024-02-05','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (178,'Álvaro Camilo','Castillo','Marulanda','alvaro.castillo178@cafetrace.co','3001234678','2024-02-06','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (179,'Hernán Darío','Guerrero','Arboleda','hernan.guerrero179@cafetrace.co','3001234679','2024-02-07','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (180,'Jairo Augusto','Suárez','Henao','jairo.suarez180@cafetrace.co','3001234680','2024-02-08','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (181,'Lida Consuelo','Pineda','Palacios','lida.pineda181@cafetrace.co','3001234681','2024-02-09','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (182,'Yolanda Patricia','Ospina','Giraldo','yolanda.ospina182@cafetrace.co','3001234682','2024-02-10','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (183,'Flor Marina','Londoño','Cano','flor.londono183@cafetrace.co','3001234683','2024-02-11','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (184,'Nora Elena','Giraldo','Zapata','nora.giraldo184@cafetrace.co','3001234684','2024-02-12','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (185,'Clara Inés','Cano','Correa','clara.cano185@cafetrace.co','3001234685','2024-02-13','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (186,'Rosa Emilia','Bedoya','Serna','rosa.bedoya186@cafetrace.co','3001234686','2024-02-14','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (187,'Stella Marina','Salazar','Vargas','stella.salazar187@cafetrace.co','3001234687','2024-02-15','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (188,'Alba Lucia','Henao','Toro','alba.henao188@cafetrace.co','3001234688','2024-02-16','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (189,'Edith Amparo','Zapata','Gallego','edith.zapata189@cafetrace.co','3001234689','2024-02-17','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (190,'Dora Cecilia','Muñoz','Cardona','dora.munoz190@cafetrace.co','3001234690','2024-02-18','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (191,'Hans Dieter','Müller','Schmidt','hans.muller191@cafetrace.co','3001234691','2024-02-19','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (192,'Pierre Louis','Dupont','Martin','pierre.dupont192@cafetrace.co','3001234692','2024-02-20','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (193,'James William','Smith','Johnson','james.smith193@cafetrace.co','3001234693','2024-02-21','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (194,'Yoshiro','Tanaka','Nakamura','yoshiro.tanaka194@cafetrace.co','3001234694','2024-02-22','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (195,'Luca','Ferrari','Rossi','luca.ferrari195@cafetrace.co','3001234695','2024-02-23','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (196,'Emma Louise','Van der Berg','Hooft','emma.van196@cafetrace.co','3001234696','2024-02-24','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (197,'George','Williams','Brown','george.williams197@cafetrace.co','3001234697','2024-02-25','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (198,'Ana Paula','Oliveira','Santos','ana.oliveira198@cafetrace.co','3001234698','2024-02-26','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (199,'Kwame','Mensah','Asante','kwame.mensah199@cafetrace.co','3001234699','2024-02-27','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (200,'Cheng','Wang','Li','cheng.wang200@cafetrace.co','3001234700','2024-02-28','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (201,'Laura Valentina','Ovallos','Carrascal','laura.ovallos201@cafetrace.co','3001234701','2024-01-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (202,'Oscar Iván','Becerra','Ovallos','oscar.becerra202@cafetrace.co','3001234702','2024-01-01','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (203,'Alejandra Sofía','Torres','Mendoza','alejandra.torres203@cafetrace.co','3001234703','2024-01-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (204,'Hernán David','Ruiz','Castañeda','hernan.ruiz204@cafetrace.co','3001234704','2024-01-02','approved');
INSERT INTO cafetrace.person (id,first_name,last_name_1,last_name_2,email,phone,register_date,status) OVERRIDING SYSTEM VALUE VALUES (205,'Carmen Elisa','Vásquez','Pedraza','carmen.vasquez205@cafetrace.co','3001234705','2024-01-03','approved');

SELECT setval(pg_get_serial_sequence('cafetrace.person','id'), 205);

-- ============================================================
-- 4. FARMER
-- ============================================================
INSERT INTO cafetrace.farmer VALUES (1,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (2,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (3,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (4,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (5,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (6,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (7,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (8,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (9,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (10,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (11,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (12,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (13,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (14,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (15,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (16,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (17,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (18,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (19,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (20,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (21,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (22,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (23,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (24,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (25,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (26,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (27,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (28,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (29,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (30,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (31,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (32,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (33,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (34,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (35,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (36,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (37,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (38,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (39,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (40,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (41,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (42,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (43,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (44,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (45,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (46,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (47,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (48,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (49,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (50,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (51,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (52,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (53,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (54,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (55,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (56,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (57,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (58,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (59,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (60,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (61,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (62,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (63,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (64,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (65,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (66,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (67,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (68,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (69,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (70,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (71,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (72,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (73,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (74,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (75,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (76,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (77,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (78,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (79,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (80,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (81,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (82,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (83,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (84,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (85,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (86,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (87,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (88,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (89,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (90,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (91,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (92,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (93,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (94,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (95,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (96,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (97,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (98,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (99,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (100,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (101,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (102,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (103,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (104,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (105,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (106,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (107,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (108,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (109,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (110,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (111,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (112,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (113,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (114,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (115,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (116,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (117,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (118,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (119,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (120,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (121,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (122,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (123,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (124,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (125,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (126,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (127,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (128,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (129,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (130,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (131,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (132,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (133,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (134,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (135,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (136,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (137,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (138,'12','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (139,'15','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (140,'18','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (141,'20','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (142,'25','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (143,'30','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (144,'35','farmers/foto_06.jpg');
INSERT INTO cafetrace.farmer VALUES (145,'3','farmers/foto_01.jpg');
INSERT INTO cafetrace.farmer VALUES (146,'5','farmers/foto_02.jpg');
INSERT INTO cafetrace.farmer VALUES (147,'7','farmers/foto_03.jpg');
INSERT INTO cafetrace.farmer VALUES (148,'8','farmers/foto_04.jpg');
INSERT INTO cafetrace.farmer VALUES (149,'10','farmers/foto_05.jpg');
INSERT INTO cafetrace.farmer VALUES (150,'12','farmers/foto_06.jpg');

-- ============================================================
-- 5. BUYER
-- ============================================================
INSERT INTO cafetrace.buyer VALUES (151,'Café del Origen SAS','roaster');
INSERT INTO cafetrace.buyer VALUES (152,'Tostadores del Huila Ltda','roaster');
INSERT INTO cafetrace.buyer VALUES (153,'Exportcafé Colombia SA','exporter');
INSERT INTO cafetrace.buyer VALUES (154,'Sabor Andino Tostadores','roaster');
INSERT INTO cafetrace.buyer VALUES (155,'Green Bean Importers LLC','exporter');
INSERT INTO cafetrace.buyer VALUES (156,'Specialty Coffee Roasters','roaster');
INSERT INTO cafetrace.buyer VALUES (157,'Distribuidora Café Premium','distributor');
INSERT INTO cafetrace.buyer VALUES (158,'Café Artesanal del Eje','cafe');
INSERT INTO cafetrace.buyer VALUES (159,'Pacific Rim Coffee Co','exporter');
INSERT INTO cafetrace.buyer VALUES (160,'Nordic Roasters AS','roaster');
INSERT INTO cafetrace.buyer VALUES (161,'Café y Tradición Ltda','cafe');
INSERT INTO cafetrace.buyer VALUES (162,'Montaña Verde Exportaciones','exporter');
INSERT INTO cafetrace.buyer VALUES (163,'Café Único Colombia','cafe');
INSERT INTO cafetrace.buyer VALUES (164,'Highland Coffee Traders','exporter');
INSERT INTO cafetrace.buyer VALUES (165,'El Portal del Café SAS','distributor');
INSERT INTO cafetrace.buyer VALUES (166,'Roasted Origins GmbH','roaster');
INSERT INTO cafetrace.buyer VALUES (167,'Colombiana de Cafés SA','distributor');
INSERT INTO cafetrace.buyer VALUES (168,'Single Origin Lab','roaster');
INSERT INTO cafetrace.buyer VALUES (169,'Aroma Intenso Ltda','cafe');
INSERT INTO cafetrace.buyer VALUES (170,'Arábica World Imports','exporter');
INSERT INTO cafetrace.buyer VALUES (171,'Cafés Especiales Andinos','roaster');
INSERT INTO cafetrace.buyer VALUES (172,'Bourbon Coffee SAS','roaster');
INSERT INTO cafetrace.buyer VALUES (173,'Volcano Coffee Works','roaster');
INSERT INTO cafetrace.buyer VALUES (174,'Altura Coffee Co','exporter');
INSERT INTO cafetrace.buyer VALUES (175,'Finca Direct Trade','exporter');
INSERT INTO cafetrace.buyer VALUES (176,'Micro Roasters Unite','roaster');
INSERT INTO cafetrace.buyer VALUES (177,'Café de Altura Premium','cafe');
INSERT INTO cafetrace.buyer VALUES (178,'Sunrise Coffee Trading','exporter');
INSERT INTO cafetrace.buyer VALUES (179,'La Taza Perfecta SAS','cafe');
INSERT INTO cafetrace.buyer VALUES (180,'Andean Brew Distributors','distributor');
INSERT INTO cafetrace.buyer VALUES (181,'Cafés del Pacífico Ltda','exporter');
INSERT INTO cafetrace.buyer VALUES (182,'Terra Café Colombia','distributor');
INSERT INTO cafetrace.buyer VALUES (183,'Golden Bean Roasters','roaster');
INSERT INTO cafetrace.buyer VALUES (184,'Cumbre Coffee Imports','exporter');
INSERT INTO cafetrace.buyer VALUES (185,'Bravo Specialty Coffee','roaster');
INSERT INTO cafetrace.buyer VALUES (186,'Cafeteros Unidos SAS','distributor');
INSERT INTO cafetrace.buyer VALUES (187,'Horizonte Verde Café','exporter');
INSERT INTO cafetrace.buyer VALUES (188,'El Catador Colombiano','cafe');
INSERT INTO cafetrace.buyer VALUES (189,'Café Nativo SAS','cafe');
INSERT INTO cafetrace.buyer VALUES (190,'Espresso International','exporter');
INSERT INTO cafetrace.buyer VALUES (191,'Röstkaffee Kolumbien GmbH','roaster');
INSERT INTO cafetrace.buyer VALUES (192,'Café Lumière SARL','roaster');
INSERT INTO cafetrace.buyer VALUES (193,'Tokyo Coffee Imports KK','exporter');
INSERT INTO cafetrace.buyer VALUES (194,'Milano Espresso SRL','cafe');
INSERT INTO cafetrace.buyer VALUES (195,'Dutch Coffee Collective','distributor');
INSERT INTO cafetrace.buyer VALUES (196,'London Specialty Roasters','roaster');
INSERT INTO cafetrace.buyer VALUES (197,'Santos Coffee Brasil','other');
INSERT INTO cafetrace.buyer VALUES (198,'Kumasi Coffee Africa','other');
INSERT INTO cafetrace.buyer VALUES (199,'Shanghai Coffee Trading','exporter');
INSERT INTO cafetrace.buyer VALUES (200,'Wien Kaffee Import AG','other');

-- ============================================================
-- 6. ADMIN
-- ============================================================
INSERT INTO cafetrace.admin VALUES (201,'superadmin','2025-01-15');
INSERT INTO cafetrace.admin VALUES (202,'moderador','2025-01-15');
INSERT INTO cafetrace.admin VALUES (203,'soporte','2025-01-15');
INSERT INTO cafetrace.admin VALUES (204,'auditor','2025-01-15');
INSERT INTO cafetrace.admin VALUES (205,'gestor_contenido','2025-01-15');

-- ============================================================
-- 7. FARM (120 fincas)
-- ============================================================
INSERT INTO cafetrace.farm VALUES ('F0001','La Esperanza',1.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN01','DEP01',1);
INSERT INTO cafetrace.farm VALUES ('F0002','El Paraíso',2.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN02','DEP01',2);
INSERT INTO cafetrace.farm VALUES ('F0003','Villa del Sol',2.5,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN03','DEP01',3);
INSERT INTO cafetrace.farm VALUES ('F0004','La Palma',3.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN04','DEP01',4);
INSERT INTO cafetrace.farm VALUES ('F0005','El Rincón Verde',3.5,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN05','DEP01',5);
INSERT INTO cafetrace.farm VALUES ('F0006','La Cabaña',4.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN06','DEP02',6);
INSERT INTO cafetrace.farm VALUES ('F0007','El Mirador',4.5,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN07','DEP02',7);
INSERT INTO cafetrace.farm VALUES ('F0008','La Primavera',5.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN08','DEP02',8);
INSERT INTO cafetrace.farm VALUES ('F0009','El Refugio',6.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN09','DEP02',9);
INSERT INTO cafetrace.farm VALUES ('F0010','La Montaña',7.5,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN10','DEP02',10);
INSERT INTO cafetrace.farm VALUES ('F0011','El Porvenir',8.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN11','DEP03',11);
INSERT INTO cafetrace.farm VALUES ('F0012','La Cascada',10.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN12','DEP03',12);
INSERT INTO cafetrace.farm VALUES ('F0013','Villa Café',12.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN13','DEP03',13);
INSERT INTO cafetrace.farm VALUES ('F0014','El Edén',15.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN14','DEP03',14);
INSERT INTO cafetrace.farm VALUES ('F0015','La Cumbre',20.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN15','DEP03',15);
INSERT INTO cafetrace.farm VALUES ('F0016','El Nogal',1.5,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN16','DEP04',16);
INSERT INTO cafetrace.farm VALUES ('F0017','La Colina',2.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN17','DEP04',17);
INSERT INTO cafetrace.farm VALUES ('F0018','Villa Hermosa',2.5,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN18','DEP04',18);
INSERT INTO cafetrace.farm VALUES ('F0019','El Sendero',3.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN19','DEP04',19);
INSERT INTO cafetrace.farm VALUES ('F0020','La Aurora',3.5,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN20','DEP04',20);
INSERT INTO cafetrace.farm VALUES ('F0021','El Pinar',4.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN21','DEP05',21);
INSERT INTO cafetrace.farm VALUES ('F0022','La Reserva',4.5,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN22','DEP05',22);
INSERT INTO cafetrace.farm VALUES ('F0023','Villa Café Fino',5.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN23','DEP05',23);
INSERT INTO cafetrace.farm VALUES ('F0024','El Bosque',6.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN24','DEP05',24);
INSERT INTO cafetrace.farm VALUES ('F0025','La Fuente',7.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN25','DEP05',25);
INSERT INTO cafetrace.farm VALUES ('F0026','El Cerezal',8.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN26','DEP06',26);
INSERT INTO cafetrace.farm VALUES ('F0027','La Pradera',10.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN27','DEP06',27);
INSERT INTO cafetrace.farm VALUES ('F0028','Villa del Viento',12.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN28','DEP06',28);
INSERT INTO cafetrace.farm VALUES ('F0029','El Cedral',15.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN29','DEP06',29);
INSERT INTO cafetrace.farm VALUES ('F0030','La Vereda',20.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN30','DEP06',30);
INSERT INTO cafetrace.farm VALUES ('F0031','La Esperanza',1.5,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN31','DEP07',31);
INSERT INTO cafetrace.farm VALUES ('F0032','El Paraíso 2',2.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN32','DEP07',31);
INSERT INTO cafetrace.farm VALUES ('F0033','Villa del Sol',2.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN33','DEP07',32);
INSERT INTO cafetrace.farm VALUES ('F0034','La Palma 2',3.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN34','DEP07',32);
INSERT INTO cafetrace.farm VALUES ('F0035','El Rincón Verde',3.5,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN35','DEP07',33);
INSERT INTO cafetrace.farm VALUES ('F0036','La Cabaña 2',4.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN36','DEP08',33);
INSERT INTO cafetrace.farm VALUES ('F0037','El Mirador',4.5,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN37','DEP08',34);
INSERT INTO cafetrace.farm VALUES ('F0038','La Primavera 2',5.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN38','DEP08',34);
INSERT INTO cafetrace.farm VALUES ('F0039','El Refugio',6.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN39','DEP08',35);
INSERT INTO cafetrace.farm VALUES ('F0040','La Montaña 2',7.5,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN40','DEP08',35);
INSERT INTO cafetrace.farm VALUES ('F0041','El Porvenir',8.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN41','DEP09',36);
INSERT INTO cafetrace.farm VALUES ('F0042','La Cascada 2',10.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN42','DEP09',36);
INSERT INTO cafetrace.farm VALUES ('F0043','Villa Café',12.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN43','DEP09',37);
INSERT INTO cafetrace.farm VALUES ('F0044','El Edén 2',15.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN44','DEP09',37);
INSERT INTO cafetrace.farm VALUES ('F0045','La Cumbre',20.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN45','DEP09',38);
INSERT INTO cafetrace.farm VALUES ('F0046','El Nogal 2',1.5,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN01','DEP01',38);
INSERT INTO cafetrace.farm VALUES ('F0047','La Colina',2.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN02','DEP01',39);
INSERT INTO cafetrace.farm VALUES ('F0048','Villa Hermosa 2',2.5,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN03','DEP01',39);
INSERT INTO cafetrace.farm VALUES ('F0049','El Sendero',3.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN04','DEP01',40);
INSERT INTO cafetrace.farm VALUES ('F0050','La Aurora 2',3.5,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN05','DEP01',40);
INSERT INTO cafetrace.farm VALUES ('F0051','El Pinar',4.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN06','DEP02',41);
INSERT INTO cafetrace.farm VALUES ('F0052','La Reserva 2',4.5,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN07','DEP02',41);
INSERT INTO cafetrace.farm VALUES ('F0053','Villa Café Fino',5.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN08','DEP02',42);
INSERT INTO cafetrace.farm VALUES ('F0054','El Bosque 2',6.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN09','DEP02',42);
INSERT INTO cafetrace.farm VALUES ('F0055','La Fuente',7.5,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN10','DEP02',43);
INSERT INTO cafetrace.farm VALUES ('F0056','El Cerezal 2',8.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN11','DEP03',43);
INSERT INTO cafetrace.farm VALUES ('F0057','La Pradera',10.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN12','DEP03',44);
INSERT INTO cafetrace.farm VALUES ('F0058','Villa del Viento 2',12.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN13','DEP03',44);
INSERT INTO cafetrace.farm VALUES ('F0059','El Cedral',15.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN14','DEP03',45);
INSERT INTO cafetrace.farm VALUES ('F0060','La Vereda 2',20.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN15','DEP03',45);
INSERT INTO cafetrace.farm VALUES ('F0061','La Esperanza',1.5,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN16','DEP04',46);
INSERT INTO cafetrace.farm VALUES ('F0062','El Paraíso 2',2.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN17','DEP04',46);
INSERT INTO cafetrace.farm VALUES ('F0063','Villa del Sol',2.5,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN18','DEP04',47);
INSERT INTO cafetrace.farm VALUES ('F0064','La Palma 2',3.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN19','DEP04',47);
INSERT INTO cafetrace.farm VALUES ('F0065','El Rincón Verde',3.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN20','DEP04',48);
INSERT INTO cafetrace.farm VALUES ('F0066','La Cabaña 2',4.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN21','DEP05',48);
INSERT INTO cafetrace.farm VALUES ('F0067','El Mirador',4.5,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN22','DEP05',49);
INSERT INTO cafetrace.farm VALUES ('F0068','La Primavera 2',5.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN23','DEP05',49);
INSERT INTO cafetrace.farm VALUES ('F0069','El Refugio',6.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN24','DEP05',50);
INSERT INTO cafetrace.farm VALUES ('F0070','La Montaña 2',7.5,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN25','DEP05',50);
INSERT INTO cafetrace.farm VALUES ('F0071','El Porvenir',8.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN26','DEP06',51);
INSERT INTO cafetrace.farm VALUES ('F0072','La Cascada 2',10.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN27','DEP06',51);
INSERT INTO cafetrace.farm VALUES ('F0073','Villa Café',12.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN28','DEP06',52);
INSERT INTO cafetrace.farm VALUES ('F0074','El Edén 2',15.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN29','DEP06',52);
INSERT INTO cafetrace.farm VALUES ('F0075','La Cumbre',20.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN30','DEP06',53);
INSERT INTO cafetrace.farm VALUES ('F0076','El Nogal 2',1.5,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN31','DEP07',53);
INSERT INTO cafetrace.farm VALUES ('F0077','La Colina',2.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN32','DEP07',54);
INSERT INTO cafetrace.farm VALUES ('F0078','Villa Hermosa 2',2.5,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN33','DEP07',54);
INSERT INTO cafetrace.farm VALUES ('F0079','El Sendero',3.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN34','DEP07',55);
INSERT INTO cafetrace.farm VALUES ('F0080','La Aurora 2',3.5,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN35','DEP07',55);
INSERT INTO cafetrace.farm VALUES ('F0081','El Pinar',4.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN36','DEP08',56);
INSERT INTO cafetrace.farm VALUES ('F0082','La Reserva 2',4.5,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN37','DEP08',56);
INSERT INTO cafetrace.farm VALUES ('F0083','Villa Café Fino',5.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN38','DEP08',57);
INSERT INTO cafetrace.farm VALUES ('F0084','El Bosque 2',6.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN39','DEP08',57);
INSERT INTO cafetrace.farm VALUES ('F0085','La Fuente',7.5,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN40','DEP08',58);
INSERT INTO cafetrace.farm VALUES ('F0086','El Cerezal 2',8.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN41','DEP09',58);
INSERT INTO cafetrace.farm VALUES ('F0087','La Pradera',10.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN42','DEP09',59);
INSERT INTO cafetrace.farm VALUES ('F0088','Villa del Viento 2',12.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN43','DEP09',59);
INSERT INTO cafetrace.farm VALUES ('F0089','El Cedral',15.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN44','DEP09',60);
INSERT INTO cafetrace.farm VALUES ('F0090','La Vereda 2',20.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN45','DEP09',60);
INSERT INTO cafetrace.farm VALUES ('F0091','La Esperanza',1.5,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN01','DEP01',61);
INSERT INTO cafetrace.farm VALUES ('F0092','El Paraíso 2',2.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN02','DEP01',61);
INSERT INTO cafetrace.farm VALUES ('F0093','Villa del Sol',2.5,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN03','DEP01',62);
INSERT INTO cafetrace.farm VALUES ('F0094','La Palma 2',3.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN04','DEP01',62);
INSERT INTO cafetrace.farm VALUES ('F0095','El Rincón Verde',3.5,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN05','DEP01',63);
INSERT INTO cafetrace.farm VALUES ('F0096','La Cabaña 2',4.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN06','DEP02',63);
INSERT INTO cafetrace.farm VALUES ('F0097','El Mirador',4.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN07','DEP02',64);
INSERT INTO cafetrace.farm VALUES ('F0098','La Primavera 2',5.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN08','DEP02',64);
INSERT INTO cafetrace.farm VALUES ('F0099','El Refugio',6.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN09','DEP02',65);
INSERT INTO cafetrace.farm VALUES ('F0100','La Montaña 2',7.5,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN10','DEP02',65);
INSERT INTO cafetrace.farm VALUES ('F0101','El Porvenir',8.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN11','DEP03',66);
INSERT INTO cafetrace.farm VALUES ('F0102','La Cascada 2',10.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN12','DEP03',66);
INSERT INTO cafetrace.farm VALUES ('F0103','Villa Café',12.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN13','DEP03',67);
INSERT INTO cafetrace.farm VALUES ('F0104','El Edén 2',15.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN14','DEP03',67);
INSERT INTO cafetrace.farm VALUES ('F0105','La Cumbre',20.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN15','DEP03',68);
INSERT INTO cafetrace.farm VALUES ('F0106','El Nogal 2',1.5,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN16','DEP04',68);
INSERT INTO cafetrace.farm VALUES ('F0107','La Colina',2.0,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN17','DEP04',69);
INSERT INTO cafetrace.farm VALUES ('F0108','Villa Hermosa 2',2.5,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN18','DEP04',69);
INSERT INTO cafetrace.farm VALUES ('F0109','El Sendero',3.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN19','DEP04',70);
INSERT INTO cafetrace.farm VALUES ('F0110','La Aurora 2',3.5,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN20','DEP04',70);
INSERT INTO cafetrace.farm VALUES ('F0111','El Pinar',4.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN21','DEP05',71);
INSERT INTO cafetrace.farm VALUES ('F0112','La Reserva 2',4.5,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN22','DEP05',71);
INSERT INTO cafetrace.farm VALUES ('F0113','Villa Café Fino',5.0,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN23','DEP05',72);
INSERT INTO cafetrace.farm VALUES ('F0114','El Bosque 2',6.0,'Cultivo tecnificado bajo sombra con prácticas de agricultura sostenible certificadas.','MUN24','DEP05',72);
INSERT INTO cafetrace.farm VALUES ('F0115','La Fuente',7.5,'Predio en zona de reserva hídrica con microclima ideal para café de alta montaña.','MUN25','DEP05',73);
INSERT INTO cafetrace.farm VALUES ('F0116','El Cerezal 2',8.0,'Finca agroforestal con diversidad de cultivos asociados al café de especialidad.','MUN26','DEP06',73);
INSERT INTO cafetrace.farm VALUES ('F0117','La Pradera',10.0,'Cultivo orgánico en transición con adopción de prácticas agroecológicas integrales.','MUN27','DEP06',74);
INSERT INTO cafetrace.farm VALUES ('F0118','Villa del Viento 2',12.0,'Finca con sistema de riego por gravedad y beneficiadero propio de alta capacidad.','MUN28','DEP06',74);
INSERT INTO cafetrace.farm VALUES ('F0119','El Cedral',15.0,'Predio familiar dedicado exclusivamente al café Geisha y variedades de taza limpia.','MUN29','DEP06',75);
INSERT INTO cafetrace.farm VALUES ('F0120','La Vereda 2',20.0,'Finca en zona cafetera del Macizo Colombiano con altitud superior a 1800 m s.n.m.','MUN30','DEP06',75);
INSERT INTO cafetrace.farm VALUES ('F0121','La Esperanza',1.5,'Finca familiar con tradición cafetera de más de tres generaciones ubicada en zona de ladera.','MUN31','DEP07',76);

-- ============================================================
-- 8. BATCH (100 lotes)
-- ============================================================
INSERT INTO cafetrace.batch VALUES ('BAT0001','Castillo',500,150.0,18000,1400,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',78.0,'Caramelo, naranja, chocolate oscuro','F0001');
INSERT INTO cafetrace.batch VALUES ('BAT0002','Colombia',573,229.2,19300,1447,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',79.7,'Durazno, mora, panela','F0002');
INSERT INTO cafetrace.batch VALUES ('BAT0003','Caturra',646,323.0,20700,1494,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',81.4,'Jazmín, bergamota, limón','F0003');
INSERT INTO cafetrace.batch VALUES ('BAT0004','Bourbon',719,431.4,22000,1541,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',83.1,'Cereza, cacao, almendra','F0004');
INSERT INTO cafetrace.batch VALUES ('BAT0005','Typica',792,554.4,23300,1588,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',84.8,'Mango, maracuyá, miel','F0005');
INSERT INTO cafetrace.batch VALUES ('BAT0006','Geisha',865,692.0,24700,1635,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',86.5,'Vainilla, avellana, azúcar morena','F0006');
INSERT INTO cafetrace.batch VALUES ('BAT0007','Tabi',938,844.2,26000,1682,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',88.2,'Rosa, melocotón, almibar','F0007');
INSERT INTO cafetrace.batch VALUES ('BAT0008','Cenicafé 1',1011,303.3,27400,1729,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',89.9,'Ciruela, uva, melaza','F0008');
INSERT INTO cafetrace.batch VALUES ('BAT0009','Supremo',1084,433.6,28700,1776,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',91.6,'Cítrico, té negro, hierba','F0009');
INSERT INTO cafetrace.batch VALUES ('BAT0010','Pink Bourbon',1157,578.5,30000,1823,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',79.3,'Frambuesa, hibisco, lavanda','F0010');
INSERT INTO cafetrace.batch VALUES ('BAT0011','Sidra',1230,738.0,31400,1870,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',81.0,'Arándano, maple, nuez','F0011');
INSERT INTO cafetrace.batch VALUES ('BAT0012','Laurina',1303,912.1,32700,1917,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',82.7,'Toronja, manzana verde, coco','F0012');
INSERT INTO cafetrace.batch VALUES ('BAT0013','Java',1376,1100.8,34000,1964,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',84.4,'Canela, jengibre, tamarindo','F0013');
INSERT INTO cafetrace.batch VALUES ('BAT0014','Pacamara',1449,1304.1,35400,2011,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',86.1,'Maracuyá, papaya, toffee','F0014');
INSERT INTO cafetrace.batch VALUES ('BAT0015','Wush Wush',1522,456.6,36700,2058,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',87.8,'Guanábana, lychee, azahar','F0015');
INSERT INTO cafetrace.batch VALUES ('BAT0016','Castillo',1595,638.0,38100,2105,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',89.5,'Caramelo, naranja, chocolate oscuro','F0016');
INSERT INTO cafetrace.batch VALUES ('BAT0017','Colombia',1668,834.0,39400,2152,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',91.2,'Durazno, mora, panela','F0017');
INSERT INTO cafetrace.batch VALUES ('BAT0018','Caturra',1741,1044.6,40700,2199,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',78.9,'Jazmín, bergamota, limón','F0018');
INSERT INTO cafetrace.batch VALUES ('BAT0019','Bourbon',1814,1269.8,42100,2246,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',80.6,'Cereza, cacao, almendra','F0019');
INSERT INTO cafetrace.batch VALUES ('BAT0020','Typica',1887,1509.6,43400,2293,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',82.3,'Mango, maracuyá, miel','F0020');
INSERT INTO cafetrace.batch VALUES ('BAT0021','Geisha',1960,1764.0,44700,2340,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',84.0,'Vainilla, avellana, azúcar morena','F0021');
INSERT INTO cafetrace.batch VALUES ('BAT0022','Tabi',2033,609.9,46100,2387,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',85.7,'Rosa, melocotón, almibar','F0022');
INSERT INTO cafetrace.batch VALUES ('BAT0023','Cenicafé 1',2106,842.4,47400,2434,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',87.4,'Ciruela, uva, melaza','F0023');
INSERT INTO cafetrace.batch VALUES ('BAT0024','Supremo',2179,1089.5,48800,2481,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',89.1,'Cítrico, té negro, hierba','F0024');
INSERT INTO cafetrace.batch VALUES ('BAT0025','Pink Bourbon',2252,1351.2,18100,2528,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',90.8,'Frambuesa, hibisco, lavanda','F0025');
INSERT INTO cafetrace.batch VALUES ('BAT0026','Sidra',2325,1627.5,19400,2575,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',78.5,'Arándano, maple, nuez','F0026');
INSERT INTO cafetrace.batch VALUES ('BAT0027','Laurina',2398,1918.4,20800,1422,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',80.2,'Toronja, manzana verde, coco','F0027');
INSERT INTO cafetrace.batch VALUES ('BAT0028','Java',2471,2223.9,22100,1469,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',81.9,'Canela, jengibre, tamarindo','F0028');
INSERT INTO cafetrace.batch VALUES ('BAT0029','Pacamara',2544,763.2,23400,1516,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',83.6,'Maracuyá, papaya, toffee','F0029');
INSERT INTO cafetrace.batch VALUES ('BAT0030','Wush Wush',2617,1046.8,24800,1563,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',85.3,'Guanábana, lychee, azahar','F0030');
INSERT INTO cafetrace.batch VALUES ('BAT0031','Castillo',2690,1345.0,26100,1610,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',87.0,'Caramelo, naranja, chocolate oscuro','F0031');
INSERT INTO cafetrace.batch VALUES ('BAT0032','Colombia',2763,1657.8,27400,1657,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',88.7,'Durazno, mora, panela','F0032');
INSERT INTO cafetrace.batch VALUES ('BAT0033','Caturra',2836,1985.2,28800,1704,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',90.4,'Jazmín, bergamota, limón','F0033');
INSERT INTO cafetrace.batch VALUES ('BAT0034','Bourbon',2909,2327.2,30100,1751,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',78.1,'Cereza, cacao, almendra','F0034');
INSERT INTO cafetrace.batch VALUES ('BAT0035','Typica',2982,2683.8,31500,1798,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',79.8,'Mango, maracuyá, miel','F0035');
INSERT INTO cafetrace.batch VALUES ('BAT0036','Geisha',3055,916.5,32800,1845,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',81.5,'Vainilla, avellana, azúcar morena','F0036');
INSERT INTO cafetrace.batch VALUES ('BAT0037','Tabi',3128,1251.2,34100,1892,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',83.2,'Rosa, melocotón, almibar','F0037');
INSERT INTO cafetrace.batch VALUES ('BAT0038','Cenicafé 1',3201,1600.5,35500,1939,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',84.9,'Ciruela, uva, melaza','F0038');
INSERT INTO cafetrace.batch VALUES ('BAT0039','Supremo',3274,1964.4,36800,1986,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',86.6,'Cítrico, té negro, hierba','F0039');
INSERT INTO cafetrace.batch VALUES ('BAT0040','Pink Bourbon',3347,2342.9,38100,2033,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',88.3,'Frambuesa, hibisco, lavanda','F0040');
INSERT INTO cafetrace.batch VALUES ('BAT0041','Sidra',3420,2736.0,39500,2080,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',90.0,'Arándano, maple, nuez','F0041');
INSERT INTO cafetrace.batch VALUES ('BAT0042','Laurina',3493,3143.7,40800,2127,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',91.7,'Toronja, manzana verde, coco','F0042');
INSERT INTO cafetrace.batch VALUES ('BAT0043','Java',3566,1069.8,42200,2174,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',79.4,'Canela, jengibre, tamarindo','F0043');
INSERT INTO cafetrace.batch VALUES ('BAT0044','Pacamara',3639,1455.6,43500,2221,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',81.1,'Maracuyá, papaya, toffee','F0044');
INSERT INTO cafetrace.batch VALUES ('BAT0045','Wush Wush',3712,1856.0,44800,2268,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',82.8,'Guanábana, lychee, azahar','F0045');
INSERT INTO cafetrace.batch VALUES ('BAT0046','Castillo',3785,2271.0,46200,2315,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',84.5,'Caramelo, naranja, chocolate oscuro','F0046');
INSERT INTO cafetrace.batch VALUES ('BAT0047','Colombia',3858,2700.6,47500,2362,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',86.2,'Durazno, mora, panela','F0047');
INSERT INTO cafetrace.batch VALUES ('BAT0048','Caturra',3931,3144.8,48800,2409,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',87.9,'Jazmín, bergamota, limón','F0048');
INSERT INTO cafetrace.batch VALUES ('BAT0049','Bourbon',4004,3603.6,18200,2456,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',89.6,'Cereza, cacao, almendra','F0049');
INSERT INTO cafetrace.batch VALUES ('BAT0050','Typica',4077,1223.1,19500,2503,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',91.3,'Mango, maracuyá, miel','F0050');
INSERT INTO cafetrace.batch VALUES ('BAT0051','Geisha',4150,1660.0,20800,2550,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',79.0,'Vainilla, avellana, azúcar morena','F0051');
INSERT INTO cafetrace.batch VALUES ('BAT0052','Tabi',4223,2111.5,22200,2597,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',80.7,'Rosa, melocotón, almibar','F0052');
INSERT INTO cafetrace.batch VALUES ('BAT0053','Cenicafé 1',4296,2577.6,23500,1444,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',82.4,'Ciruela, uva, melaza','F0053');
INSERT INTO cafetrace.batch VALUES ('BAT0054','Supremo',4369,3058.3,24900,1491,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',84.1,'Cítrico, té negro, hierba','F0054');
INSERT INTO cafetrace.batch VALUES ('BAT0055','Pink Bourbon',4442,3553.6,26200,1538,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',85.8,'Frambuesa, hibisco, lavanda','F0055');
INSERT INTO cafetrace.batch VALUES ('BAT0056','Sidra',4515,4063.5,27500,1585,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',87.5,'Arándano, maple, nuez','F0056');
INSERT INTO cafetrace.batch VALUES ('BAT0057','Laurina',4588,1376.4,28900,1632,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',89.2,'Toronja, manzana verde, coco','F0057');
INSERT INTO cafetrace.batch VALUES ('BAT0058','Java',4661,1864.4,30200,1679,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',90.9,'Canela, jengibre, tamarindo','F0058');
INSERT INTO cafetrace.batch VALUES ('BAT0059','Pacamara',4734,2367.0,31500,1726,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',78.6,'Maracuyá, papaya, toffee','F0059');
INSERT INTO cafetrace.batch VALUES ('BAT0060','Wush Wush',4807,2884.2,32900,1773,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',80.3,'Guanábana, lychee, azahar','F0060');
INSERT INTO cafetrace.batch VALUES ('BAT0061','Castillo',4880,3416.0,34200,1820,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',82.0,'Caramelo, naranja, chocolate oscuro','F0061');
INSERT INTO cafetrace.batch VALUES ('BAT0062','Colombia',4953,3962.4,35600,1867,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',83.7,'Durazno, mora, panela','F0062');
INSERT INTO cafetrace.batch VALUES ('BAT0063','Caturra',526,473.4,36900,1914,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',85.4,'Jazmín, bergamota, limón','F0063');
INSERT INTO cafetrace.batch VALUES ('BAT0064','Bourbon',599,179.7,38200,1961,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',87.1,'Cereza, cacao, almendra','F0064');
INSERT INTO cafetrace.batch VALUES ('BAT0065','Typica',672,268.8,39600,2008,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',88.8,'Mango, maracuyá, miel','F0065');
INSERT INTO cafetrace.batch VALUES ('BAT0066','Geisha',745,372.5,40900,2055,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',90.5,'Vainilla, avellana, azúcar morena','F0066');
INSERT INTO cafetrace.batch VALUES ('BAT0067','Tabi',818,490.8,42200,2102,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',78.2,'Rosa, melocotón, almibar','F0067');
INSERT INTO cafetrace.batch VALUES ('BAT0068','Cenicafé 1',891,623.7,43600,2149,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',79.9,'Ciruela, uva, melaza','F0068');
INSERT INTO cafetrace.batch VALUES ('BAT0069','Supremo',964,771.2,44900,2196,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',81.6,'Cítrico, té negro, hierba','F0069');
INSERT INTO cafetrace.batch VALUES ('BAT0070','Pink Bourbon',1037,933.3,46300,2243,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',83.3,'Frambuesa, hibisco, lavanda','F0070');
INSERT INTO cafetrace.batch VALUES ('BAT0071','Sidra',1110,333.0,47600,2290,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',85.0,'Arándano, maple, nuez','F0071');
INSERT INTO cafetrace.batch VALUES ('BAT0072','Laurina',1183,473.2,48900,2337,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',86.7,'Toronja, manzana verde, coco','F0072');
INSERT INTO cafetrace.batch VALUES ('BAT0073','Java',1256,628.0,18300,2384,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',88.4,'Canela, jengibre, tamarindo','F0073');
INSERT INTO cafetrace.batch VALUES ('BAT0074','Pacamara',1329,797.4,19600,2431,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',90.1,'Maracuyá, papaya, toffee','F0074');
INSERT INTO cafetrace.batch VALUES ('BAT0075','Wush Wush',1402,981.4,20900,2478,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',91.8,'Guanábana, lychee, azahar','F0075');
INSERT INTO cafetrace.batch VALUES ('BAT0076','Castillo',1475,1180.0,22300,2525,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',79.5,'Caramelo, naranja, chocolate oscuro','F0076');
INSERT INTO cafetrace.batch VALUES ('BAT0077','Colombia',1548,1393.2,23600,2572,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',81.2,'Durazno, mora, panela','F0077');
INSERT INTO cafetrace.batch VALUES ('BAT0078','Caturra',1621,486.3,24900,1419,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',82.9,'Jazmín, bergamota, limón','F0078');
INSERT INTO cafetrace.batch VALUES ('BAT0079','Bourbon',1694,677.6,26300,1466,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',84.6,'Cereza, cacao, almendra','F0079');
INSERT INTO cafetrace.batch VALUES ('BAT0080','Typica',1767,883.5,27600,1513,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',86.3,'Mango, maracuyá, miel','F0080');
INSERT INTO cafetrace.batch VALUES ('BAT0081','Geisha',1840,1104.0,29000,1560,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',88.0,'Vainilla, avellana, azúcar morena','F0081');
INSERT INTO cafetrace.batch VALUES ('BAT0082','Tabi',1913,1339.1,30300,1607,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',89.7,'Rosa, melocotón, almibar','F0082');
INSERT INTO cafetrace.batch VALUES ('BAT0083','Cenicafé 1',1986,1588.8,31600,1654,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',91.4,'Ciruela, uva, melaza','F0083');
INSERT INTO cafetrace.batch VALUES ('BAT0084','Supremo',2059,1853.1,33000,1701,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',79.1,'Cítrico, té negro, hierba','F0084');
INSERT INTO cafetrace.batch VALUES ('BAT0085','Pink Bourbon',2132,639.6,34300,1748,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',80.8,'Frambuesa, hibisco, lavanda','F0085');
INSERT INTO cafetrace.batch VALUES ('BAT0086','Sidra',2205,882.0,35600,1795,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',82.5,'Arándano, maple, nuez','F0086');
INSERT INTO cafetrace.batch VALUES ('BAT0087','Laurina',2278,1139.0,37000,1842,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',84.2,'Toronja, manzana verde, coco','F0087');
INSERT INTO cafetrace.batch VALUES ('BAT0088','Java',2351,1410.6,38300,1889,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',85.9,'Canela, jengibre, tamarindo','F0088');
INSERT INTO cafetrace.batch VALUES ('BAT0089','Pacamara',2424,1696.8,39700,1936,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',87.6,'Maracuyá, papaya, toffee','F0089');
INSERT INTO cafetrace.batch VALUES ('BAT0090','Wush Wush',2497,1997.6,41000,1983,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',89.3,'Guanábana, lychee, azahar','F0090');
INSERT INTO cafetrace.batch VALUES ('BAT0091','Castillo',2570,2313.0,42300,2030,'Lote de café especial con notas frutales y acidez brillante, procesado en fermento anaeróbico por 72 horas.',91.0,'Caramelo, naranja, chocolate oscuro','F0091');
INSERT INTO cafetrace.batch VALUES ('BAT0092','Colombia',2643,792.9,43700,2077,'Café de altura con perfil dulce y cuerpo medio, cosechado selectivamente en el pico de madurez óptima.',78.7,'Durazno, mora, panela','F0092');
INSERT INTO cafetrace.batch VALUES ('BAT0093','Caturra',2716,1086.4,45000,2124,'Lote microlote con trazabilidad completa, notas a caramelo y panela, proceso lavado tradicional.',80.4,'Jazmín, bergamota, limón','F0093');
INSERT INTO cafetrace.batch VALUES ('BAT0094','Bourbon',2789,1394.5,46300,2171,'Café de especialidad con puntuación Q superior, fermentación controlada y secado en camas africanas.',82.1,'Cereza, cacao, almendra','F0094');
INSERT INTO cafetrace.batch VALUES ('BAT0095','Typica',2862,1717.2,47700,2218,'Lote experimental con proceso honey, notas a frutas tropicales y miel de caña, bajo en acidez.',83.8,'Mango, maracuyá, miel','F0095');
INSERT INTO cafetrace.batch VALUES ('BAT0096','Geisha',2935,2054.5,49000,2265,'Café gourmet de finca única con perfiles sensoriales complejos, secado solar en marquesinas.',85.5,'Vainilla, avellana, azúcar morena','F0096');
INSERT INTO cafetrace.batch VALUES ('BAT0097','Tabi',3008,2406.4,18400,2312,'Lote de exportación con clasificación European Preparation, granos de tamaño uniforme y alta densidad.',87.2,'Rosa, melocotón, almibar','F0097');
INSERT INTO cafetrace.batch VALUES ('BAT0098','Cenicafé 1',3081,2772.9,19700,2359,'Microlote de variedad patrimonial con proceso natural, notas vinosas y fermentación espontánea.',88.9,'Ciruela, uva, melaza','F0098');
INSERT INTO cafetrace.batch VALUES ('BAT0099','Supremo',3154,946.2,21000,2406,'Café de alta montaña sobre 1800 msnm, acidez málica pronunciada y notas florales delicadas.',90.6,'Cítrico, té negro, hierba','F0099');
INSERT INTO cafetrace.batch VALUES ('BAT0100','Pink Bourbon',3227,1290.8,22400,2453,'Lote con certificación orgánica en proceso, beneficio ecológico con tratamiento de aguas residuales.',78.3,'Frambuesa, hibisco, lavanda','F0100');

-- ============================================================
-- 9. PRODUCTIVE_PROCESS (100 procesos, uno por lote)
-- ============================================================
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-03-15','2024-03-16','2024-03-18','2024-03-19','2024-04-02','BAT0001');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-01','2024-04-02','2024-04-04','2024-04-05','2024-04-20','BAT0002');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-20','2024-04-21','2024-04-23','2024-04-24','2024-05-10','BAT0003');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-05','2024-05-06','2024-05-08','2024-05-09','2024-05-26','BAT0004');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-18','2024-05-19','2024-05-21','2024-05-22','2024-06-09','BAT0005');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-02','2024-06-03','2024-06-05','2024-06-06','2024-06-25','BAT0006');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-15','2024-06-16','2024-06-18','2024-06-19','2024-07-09','BAT0007');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-01','2024-07-02','2024-07-04','2024-07-05','2024-07-19','BAT0008');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-20','2024-07-21','2024-07-23','2024-07-24','2024-08-08','BAT0009');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-05','2024-08-06','2024-08-08','2024-08-09','2024-08-25','BAT0010');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-18','2024-08-19','2024-08-21','2024-08-22','2024-09-08','BAT0011');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-02','2024-09-03','2024-09-05','2024-09-06','2024-09-24','BAT0012');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-15','2024-09-16','2024-09-18','2024-09-19','2024-10-08','BAT0013');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-01','2024-10-02','2024-10-04','2024-10-05','2024-10-25','BAT0014');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-20','2024-10-21','2024-10-23','2024-10-24','2024-11-07','BAT0015');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-05','2024-11-06','2024-11-08','2024-11-09','2024-11-24','BAT0016');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-18','2024-11-19','2024-11-21','2024-11-22','2024-12-08','BAT0017');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-02','2024-12-03','2024-12-05','2024-12-06','2024-12-23','BAT0018');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-15','2024-12-16','2024-12-18','2024-12-19','2025-01-06','BAT0019');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2025-01-05','2025-01-06','2025-01-08','2025-01-09','2025-01-28','BAT0020');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-03-18','2024-03-19','2024-03-21','2024-03-22','2024-04-11','BAT0021');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-04','2024-04-05','2024-04-07','2024-04-08','2024-04-22','BAT0022');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-23','2024-04-24','2024-04-26','2024-04-27','2024-05-12','BAT0023');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-08','2024-05-09','2024-05-11','2024-05-12','2024-05-28','BAT0024');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-21','2024-05-22','2024-05-24','2024-05-25','2024-06-11','BAT0025');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-05','2024-06-06','2024-06-08','2024-06-09','2024-06-27','BAT0026');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-18','2024-06-19','2024-06-21','2024-06-22','2024-07-11','BAT0027');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-04','2024-07-05','2024-07-07','2024-07-08','2024-07-28','BAT0028');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-23','2024-07-24','2024-07-26','2024-07-27','2024-08-10','BAT0029');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-08','2024-08-09','2024-08-11','2024-08-12','2024-08-27','BAT0030');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-21','2024-08-22','2024-08-24','2024-08-25','2024-09-10','BAT0031');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-05','2024-09-06','2024-09-08','2024-09-09','2024-09-26','BAT0032');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-18','2024-09-19','2024-09-21','2024-09-22','2024-10-10','BAT0033');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-04','2024-10-05','2024-10-07','2024-10-08','2024-10-27','BAT0034');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-23','2024-10-24','2024-10-26','2024-10-27','2024-11-16','BAT0035');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-08','2024-11-09','2024-11-11','2024-11-12','2024-11-26','BAT0036');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-21','2024-11-22','2024-11-24','2024-11-25','2024-12-10','BAT0037');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-05','2024-12-06','2024-12-08','2024-12-09','2024-12-25','BAT0038');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-18','2024-12-19','2024-12-21','2024-12-22','2025-01-08','BAT0039');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2025-01-08','2025-01-09','2025-01-11','2025-01-12','2025-01-30','BAT0040');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-03-21','2024-03-22','2024-03-24','2024-03-25','2024-04-13','BAT0041');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-07','2024-04-08','2024-04-10','2024-04-11','2024-05-01','BAT0042');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-26','2024-04-27','2024-04-29','2024-04-30','2024-05-14','BAT0043');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-11','2024-05-12','2024-05-14','2024-05-15','2024-05-30','BAT0044');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-24','2024-05-25','2024-05-27','2024-05-28','2024-06-13','BAT0045');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-08','2024-06-09','2024-06-11','2024-06-12','2024-06-29','BAT0046');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-21','2024-06-22','2024-06-24','2024-06-25','2024-07-13','BAT0047');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-07','2024-07-08','2024-07-10','2024-07-11','2024-07-30','BAT0048');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-26','2024-07-27','2024-07-29','2024-07-30','2024-08-19','BAT0049');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-11','2024-08-12','2024-08-14','2024-08-15','2024-08-29','BAT0050');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-24','2024-08-25','2024-08-27','2024-08-28','2024-09-12','BAT0051');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-08','2024-09-09','2024-09-11','2024-09-12','2024-09-28','BAT0052');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-21','2024-09-22','2024-09-24','2024-09-25','2024-10-12','BAT0053');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-07','2024-10-08','2024-10-10','2024-10-11','2024-10-29','BAT0054');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-26','2024-10-27','2024-10-29','2024-10-30','2024-11-18','BAT0055');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-11','2024-11-12','2024-11-14','2024-11-15','2024-12-05','BAT0056');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-24','2024-11-25','2024-11-27','2024-11-28','2024-12-12','BAT0057');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-08','2024-12-09','2024-12-11','2024-12-12','2024-12-27','BAT0058');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-21','2024-12-22','2024-12-24','2024-12-25','2025-01-10','BAT0059');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2025-01-11','2025-01-12','2025-01-14','2025-01-15','2025-02-01','BAT0060');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-03-24','2024-03-25','2024-03-27','2024-03-28','2024-04-15','BAT0061');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-10','2024-04-11','2024-04-13','2024-04-14','2024-05-03','BAT0062');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-29','2024-04-30','2024-05-02','2024-05-03','2024-05-23','BAT0063');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-14','2024-05-15','2024-05-17','2024-05-18','2024-06-01','BAT0064');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-27','2024-05-28','2024-05-30','2024-05-31','2024-06-15','BAT0065');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-11','2024-06-12','2024-06-14','2024-06-15','2024-07-01','BAT0066');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-24','2024-06-25','2024-06-27','2024-06-28','2024-07-15','BAT0067');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-10','2024-07-11','2024-07-13','2024-07-14','2024-08-01','BAT0068');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-29','2024-07-30','2024-08-01','2024-08-02','2024-08-21','BAT0069');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-14','2024-08-15','2024-08-17','2024-08-18','2024-09-07','BAT0070');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-27','2024-08-28','2024-08-30','2024-08-31','2024-09-14','BAT0071');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-11','2024-09-12','2024-09-14','2024-09-15','2024-09-30','BAT0072');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-24','2024-09-25','2024-09-27','2024-09-28','2024-10-14','BAT0073');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-10','2024-10-11','2024-10-13','2024-10-14','2024-10-31','BAT0074');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-29','2024-10-30','2024-11-01','2024-11-02','2024-11-20','BAT0075');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-14','2024-11-15','2024-11-17','2024-11-18','2024-12-07','BAT0076');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-27','2024-11-28','2024-11-30','2024-12-01','2024-12-21','BAT0077');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-11','2024-12-12','2024-12-14','2024-12-15','2024-12-29','BAT0078');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-24','2024-12-25','2024-12-27','2024-12-28','2025-01-12','BAT0079');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2025-01-14','2025-01-15','2025-01-17','2025-01-18','2025-02-03','BAT0080');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-03-27','2024-03-28','2024-03-30','2024-03-31','2024-04-17','BAT0081');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-04-13','2024-04-14','2024-04-16','2024-04-17','2024-05-05','BAT0082');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-02','2024-05-03','2024-05-05','2024-05-06','2024-05-25','BAT0083');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-17','2024-05-18','2024-05-20','2024-05-21','2024-06-10','BAT0084');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-05-30','2024-05-31','2024-06-02','2024-06-03','2024-06-17','BAT0085');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-14','2024-06-15','2024-06-17','2024-06-18','2024-07-03','BAT0086');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-06-27','2024-06-28','2024-06-30','2024-07-01','2024-07-17','BAT0087');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-07-13','2024-07-14','2024-07-16','2024-07-17','2024-08-03','BAT0088');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-01','2024-08-02','2024-08-04','2024-08-05','2024-08-23','BAT0089');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-17','2024-08-18','2024-08-20','2024-08-21','2024-09-09','BAT0090');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-08-30','2024-08-31','2024-09-02','2024-09-03','2024-09-23','BAT0091');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-14','2024-09-15','2024-09-17','2024-09-18','2024-10-02','BAT0092');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-09-27','2024-09-28','2024-09-30','2024-10-01','2024-10-16','BAT0093');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-10-13','2024-10-14','2024-10-16','2024-10-17','2024-11-02','BAT0094');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-01','2024-11-02','2024-11-04','2024-11-05','2024-11-22','BAT0095');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-17','2024-11-18','2024-11-20','2024-11-21','2024-12-09','BAT0096');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-11-30','2024-12-01','2024-12-03','2024-12-04','2024-12-23','BAT0097');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-14','2024-12-15','2024-12-17','2024-12-18','2025-01-07','BAT0098');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2024-12-27','2024-12-28','2024-12-30','2024-12-31','2025-01-14','BAT0099');
INSERT INTO cafetrace.productive_process (harvest_date,pulping_date,fermentation_date,washing_date,drying_date,code_batch) VALUES ('2025-01-17','2025-01-18','2025-01-20','2025-01-21','2025-02-05','BAT0100');

-- ============================================================
-- 10. PHOTO (150 fotos, ~1-2 por lote)
-- ============================================================
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0001/foto_01_harvest.jpg','harvest','2024-03-17','Cosecha manual selectiva en plena madurez','BAT0001');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0002/foto_01_pulping.jpg','pulping','2024-04-03','Despulpado mecánico con despulpadora de cilindro','BAT0002');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0002/foto_02_fermentation.jpg','fermentation','2024-04-04','Fermentación en tanques de concreto','BAT0002');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0003/foto_01_fermentation.jpg','fermentation','2024-04-22','Fermentación en tanques de concreto','BAT0003');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0003/foto_02_washing.jpg','washing','2024-04-23','Lavado en canal de correteo con agua limpia','BAT0003');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0004/foto_01_washing.jpg','washing','2024-05-07','Lavado en canal de correteo con agua limpia','BAT0004');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0005/foto_01_drying.jpg','drying','2024-05-20','Secado en camas africanas elevadas','BAT0005');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0005/foto_02_harvest.jpg','harvest','2024-05-21','Clasificación manual postcosecha','BAT0005');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0006/foto_01_harvest.jpg','harvest','2024-06-04','Clasificación manual postcosecha','BAT0006');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0006/foto_02_pulping.jpg','pulping','2024-06-05','Control de humedad con medidor digital','BAT0006');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0007/foto_01_pulping.jpg','pulping','2024-06-17','Control de humedad con medidor digital','BAT0007');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0008/foto_01_fermentation.jpg','fermentation','2024-07-03','Almacenamiento en bodega ventilada','BAT0008');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0008/foto_02_washing.jpg','washing','2024-07-04','Cosecha manual selectiva en plena madurez','BAT0008');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0009/foto_01_washing.jpg','washing','2024-07-22','Cosecha manual selectiva en plena madurez','BAT0009');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0009/foto_02_drying.jpg','drying','2024-07-23','Despulpado mecánico con despulpadora de cilindro','BAT0009');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0010/foto_01_drying.jpg','drying','2024-08-07','Despulpado mecánico con despulpadora de cilindro','BAT0010');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0011/foto_01_harvest.jpg','harvest','2024-08-20','Fermentación en tanques de concreto','BAT0011');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0011/foto_02_pulping.jpg','pulping','2024-08-21','Lavado en canal de correteo con agua limpia','BAT0011');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0012/foto_01_pulping.jpg','pulping','2024-09-04','Lavado en canal de correteo con agua limpia','BAT0012');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0012/foto_02_fermentation.jpg','fermentation','2024-09-05','Secado en camas africanas elevadas','BAT0012');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0013/foto_01_fermentation.jpg','fermentation','2024-09-17','Secado en camas africanas elevadas','BAT0013');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0014/foto_01_washing.jpg','washing','2024-10-03','Clasificación manual postcosecha','BAT0014');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0014/foto_02_drying.jpg','drying','2024-10-04','Control de humedad con medidor digital','BAT0014');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0015/foto_01_drying.jpg','drying','2024-10-22','Control de humedad con medidor digital','BAT0015');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0015/foto_02_harvest.jpg','harvest','2024-10-23','Almacenamiento en bodega ventilada','BAT0015');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0016/foto_01_harvest.jpg','harvest','2024-11-07','Almacenamiento en bodega ventilada','BAT0016');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0017/foto_01_pulping.jpg','pulping','2024-11-20','Cosecha manual selectiva en plena madurez','BAT0017');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0017/foto_02_fermentation.jpg','fermentation','2024-11-21','Despulpado mecánico con despulpadora de cilindro','BAT0017');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0018/foto_01_fermentation.jpg','fermentation','2024-12-04','Despulpado mecánico con despulpadora de cilindro','BAT0018');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0018/foto_02_washing.jpg','washing','2024-12-05','Fermentación en tanques de concreto','BAT0018');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0019/foto_01_washing.jpg','washing','2024-12-17','Fermentación en tanques de concreto','BAT0019');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0020/foto_01_drying.jpg','drying','2025-01-07','Lavado en canal de correteo con agua limpia','BAT0020');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0020/foto_02_harvest.jpg','harvest','2025-01-08','Secado en camas africanas elevadas','BAT0020');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0021/foto_01_harvest.jpg','harvest','2024-03-20','Secado en camas africanas elevadas','BAT0021');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0021/foto_02_pulping.jpg','pulping','2024-03-21','Clasificación manual postcosecha','BAT0021');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0022/foto_01_pulping.jpg','pulping','2024-04-06','Clasificación manual postcosecha','BAT0022');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0023/foto_01_fermentation.jpg','fermentation','2024-04-25','Control de humedad con medidor digital','BAT0023');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0023/foto_02_washing.jpg','washing','2024-04-26','Almacenamiento en bodega ventilada','BAT0023');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0024/foto_01_washing.jpg','washing','2024-05-10','Almacenamiento en bodega ventilada','BAT0024');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0024/foto_02_drying.jpg','drying','2024-05-11','Cosecha manual selectiva en plena madurez','BAT0024');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0025/foto_01_drying.jpg','drying','2024-05-23','Cosecha manual selectiva en plena madurez','BAT0025');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0026/foto_01_harvest.jpg','harvest','2024-06-07','Despulpado mecánico con despulpadora de cilindro','BAT0026');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0026/foto_02_pulping.jpg','pulping','2024-06-08','Fermentación en tanques de concreto','BAT0026');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0027/foto_01_pulping.jpg','pulping','2024-06-20','Fermentación en tanques de concreto','BAT0027');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0027/foto_02_fermentation.jpg','fermentation','2024-06-21','Lavado en canal de correteo con agua limpia','BAT0027');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0028/foto_01_fermentation.jpg','fermentation','2024-07-06','Lavado en canal de correteo con agua limpia','BAT0028');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0029/foto_01_washing.jpg','washing','2024-07-25','Secado en camas africanas elevadas','BAT0029');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0029/foto_02_drying.jpg','drying','2024-07-26','Clasificación manual postcosecha','BAT0029');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0030/foto_01_drying.jpg','drying','2024-08-10','Clasificación manual postcosecha','BAT0030');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0030/foto_02_harvest.jpg','harvest','2024-08-11','Control de humedad con medidor digital','BAT0030');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0031/foto_01_harvest.jpg','harvest','2024-08-23','Control de humedad con medidor digital','BAT0031');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0032/foto_01_pulping.jpg','pulping','2024-09-07','Almacenamiento en bodega ventilada','BAT0032');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0032/foto_02_fermentation.jpg','fermentation','2024-09-08','Cosecha manual selectiva en plena madurez','BAT0032');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0033/foto_01_fermentation.jpg','fermentation','2024-09-20','Cosecha manual selectiva en plena madurez','BAT0033');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0033/foto_02_washing.jpg','washing','2024-09-21','Despulpado mecánico con despulpadora de cilindro','BAT0033');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0034/foto_01_washing.jpg','washing','2024-10-06','Despulpado mecánico con despulpadora de cilindro','BAT0034');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0035/foto_01_drying.jpg','drying','2024-10-25','Fermentación en tanques de concreto','BAT0035');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0035/foto_02_harvest.jpg','harvest','2024-10-26','Lavado en canal de correteo con agua limpia','BAT0035');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0036/foto_01_harvest.jpg','harvest','2024-11-10','Lavado en canal de correteo con agua limpia','BAT0036');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0036/foto_02_pulping.jpg','pulping','2024-11-11','Secado en camas africanas elevadas','BAT0036');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0037/foto_01_pulping.jpg','pulping','2024-11-23','Secado en camas africanas elevadas','BAT0037');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0038/foto_01_fermentation.jpg','fermentation','2024-12-07','Clasificación manual postcosecha','BAT0038');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0038/foto_02_washing.jpg','washing','2024-12-08','Control de humedad con medidor digital','BAT0038');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0039/foto_01_washing.jpg','washing','2024-12-20','Control de humedad con medidor digital','BAT0039');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0039/foto_02_drying.jpg','drying','2024-12-21','Almacenamiento en bodega ventilada','BAT0039');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0040/foto_01_drying.jpg','drying','2025-01-10','Almacenamiento en bodega ventilada','BAT0040');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0041/foto_01_harvest.jpg','harvest','2024-03-23','Cosecha manual selectiva en plena madurez','BAT0041');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0041/foto_02_pulping.jpg','pulping','2024-03-24','Despulpado mecánico con despulpadora de cilindro','BAT0041');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0042/foto_01_pulping.jpg','pulping','2024-04-09','Despulpado mecánico con despulpadora de cilindro','BAT0042');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0042/foto_02_fermentation.jpg','fermentation','2024-04-10','Fermentación en tanques de concreto','BAT0042');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0043/foto_01_fermentation.jpg','fermentation','2024-04-28','Fermentación en tanques de concreto','BAT0043');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0044/foto_01_washing.jpg','washing','2024-05-13','Lavado en canal de correteo con agua limpia','BAT0044');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0044/foto_02_drying.jpg','drying','2024-05-14','Secado en camas africanas elevadas','BAT0044');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0045/foto_01_drying.jpg','drying','2024-05-26','Secado en camas africanas elevadas','BAT0045');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0045/foto_02_harvest.jpg','harvest','2024-05-27','Clasificación manual postcosecha','BAT0045');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0046/foto_01_harvest.jpg','harvest','2024-06-10','Clasificación manual postcosecha','BAT0046');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0047/foto_01_pulping.jpg','pulping','2024-06-23','Control de humedad con medidor digital','BAT0047');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0047/foto_02_fermentation.jpg','fermentation','2024-06-24','Almacenamiento en bodega ventilada','BAT0047');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0048/foto_01_fermentation.jpg','fermentation','2024-07-09','Almacenamiento en bodega ventilada','BAT0048');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0048/foto_02_washing.jpg','washing','2024-07-10','Cosecha manual selectiva en plena madurez','BAT0048');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0049/foto_01_washing.jpg','washing','2024-07-28','Cosecha manual selectiva en plena madurez','BAT0049');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0050/foto_01_drying.jpg','drying','2024-08-13','Despulpado mecánico con despulpadora de cilindro','BAT0050');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0050/foto_02_harvest.jpg','harvest','2024-08-14','Fermentación en tanques de concreto','BAT0050');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0051/foto_01_harvest.jpg','harvest','2024-08-26','Fermentación en tanques de concreto','BAT0051');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0051/foto_02_pulping.jpg','pulping','2024-08-27','Lavado en canal de correteo con agua limpia','BAT0051');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0052/foto_01_pulping.jpg','pulping','2024-09-10','Lavado en canal de correteo con agua limpia','BAT0052');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0053/foto_01_fermentation.jpg','fermentation','2024-09-23','Secado en camas africanas elevadas','BAT0053');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0053/foto_02_washing.jpg','washing','2024-09-24','Clasificación manual postcosecha','BAT0053');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0054/foto_01_washing.jpg','washing','2024-10-09','Clasificación manual postcosecha','BAT0054');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0054/foto_02_drying.jpg','drying','2024-10-10','Control de humedad con medidor digital','BAT0054');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0055/foto_01_drying.jpg','drying','2024-10-28','Control de humedad con medidor digital','BAT0055');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0056/foto_01_harvest.jpg','harvest','2024-11-13','Almacenamiento en bodega ventilada','BAT0056');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0056/foto_02_pulping.jpg','pulping','2024-11-14','Cosecha manual selectiva en plena madurez','BAT0056');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0057/foto_01_pulping.jpg','pulping','2024-11-26','Cosecha manual selectiva en plena madurez','BAT0057');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0057/foto_02_fermentation.jpg','fermentation','2024-11-27','Despulpado mecánico con despulpadora de cilindro','BAT0057');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0058/foto_01_fermentation.jpg','fermentation','2024-12-10','Despulpado mecánico con despulpadora de cilindro','BAT0058');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0059/foto_01_washing.jpg','washing','2024-12-23','Fermentación en tanques de concreto','BAT0059');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0059/foto_02_drying.jpg','drying','2024-12-24','Lavado en canal de correteo con agua limpia','BAT0059');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0060/foto_01_drying.jpg','drying','2025-01-13','Lavado en canal de correteo con agua limpia','BAT0060');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0060/foto_02_harvest.jpg','harvest','2025-01-14','Secado en camas africanas elevadas','BAT0060');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0061/foto_01_harvest.jpg','harvest','2024-03-26','Secado en camas africanas elevadas','BAT0061');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0062/foto_01_pulping.jpg','pulping','2024-04-12','Clasificación manual postcosecha','BAT0062');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0062/foto_02_fermentation.jpg','fermentation','2024-04-13','Control de humedad con medidor digital','BAT0062');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0063/foto_01_fermentation.jpg','fermentation','2024-05-01','Control de humedad con medidor digital','BAT0063');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0063/foto_02_washing.jpg','washing','2024-05-02','Almacenamiento en bodega ventilada','BAT0063');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0064/foto_01_washing.jpg','washing','2024-05-16','Almacenamiento en bodega ventilada','BAT0064');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0065/foto_01_drying.jpg','drying','2024-05-29','Cosecha manual selectiva en plena madurez','BAT0065');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0065/foto_02_harvest.jpg','harvest','2024-05-30','Despulpado mecánico con despulpadora de cilindro','BAT0065');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0066/foto_01_harvest.jpg','harvest','2024-06-13','Despulpado mecánico con despulpadora de cilindro','BAT0066');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0066/foto_02_pulping.jpg','pulping','2024-06-14','Fermentación en tanques de concreto','BAT0066');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0067/foto_01_pulping.jpg','pulping','2024-06-26','Fermentación en tanques de concreto','BAT0067');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0068/foto_01_fermentation.jpg','fermentation','2024-07-12','Lavado en canal de correteo con agua limpia','BAT0068');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0068/foto_02_washing.jpg','washing','2024-07-13','Secado en camas africanas elevadas','BAT0068');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0069/foto_01_washing.jpg','washing','2024-07-31','Secado en camas africanas elevadas','BAT0069');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0069/foto_02_drying.jpg','drying','2024-08-01','Clasificación manual postcosecha','BAT0069');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0070/foto_01_drying.jpg','drying','2024-08-16','Clasificación manual postcosecha','BAT0070');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0071/foto_01_harvest.jpg','harvest','2024-08-29','Control de humedad con medidor digital','BAT0071');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0071/foto_02_pulping.jpg','pulping','2024-08-30','Almacenamiento en bodega ventilada','BAT0071');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0072/foto_01_pulping.jpg','pulping','2024-09-13','Almacenamiento en bodega ventilada','BAT0072');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0072/foto_02_fermentation.jpg','fermentation','2024-09-14','Cosecha manual selectiva en plena madurez','BAT0072');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0073/foto_01_fermentation.jpg','fermentation','2024-09-26','Cosecha manual selectiva en plena madurez','BAT0073');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0074/foto_01_washing.jpg','washing','2024-10-12','Despulpado mecánico con despulpadora de cilindro','BAT0074');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0074/foto_02_drying.jpg','drying','2024-10-13','Fermentación en tanques de concreto','BAT0074');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0075/foto_01_drying.jpg','drying','2024-10-31','Fermentación en tanques de concreto','BAT0075');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0075/foto_02_harvest.jpg','harvest','2024-11-01','Lavado en canal de correteo con agua limpia','BAT0075');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0076/foto_01_harvest.jpg','harvest','2024-11-16','Lavado en canal de correteo con agua limpia','BAT0076');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0077/foto_01_pulping.jpg','pulping','2024-11-29','Secado en camas africanas elevadas','BAT0077');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0077/foto_02_fermentation.jpg','fermentation','2024-11-30','Clasificación manual postcosecha','BAT0077');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0078/foto_01_fermentation.jpg','fermentation','2024-12-13','Clasificación manual postcosecha','BAT0078');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0078/foto_02_washing.jpg','washing','2024-12-14','Control de humedad con medidor digital','BAT0078');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0079/foto_01_washing.jpg','washing','2024-12-26','Control de humedad con medidor digital','BAT0079');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0080/foto_01_drying.jpg','drying','2025-01-16','Almacenamiento en bodega ventilada','BAT0080');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0080/foto_02_harvest.jpg','harvest','2025-01-17','Cosecha manual selectiva en plena madurez','BAT0080');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0081/foto_01_harvest.jpg','harvest','2024-03-29','Cosecha manual selectiva en plena madurez','BAT0081');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0081/foto_02_pulping.jpg','pulping','2024-03-30','Despulpado mecánico con despulpadora de cilindro','BAT0081');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0082/foto_01_pulping.jpg','pulping','2024-04-15','Despulpado mecánico con despulpadora de cilindro','BAT0082');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0083/foto_01_fermentation.jpg','fermentation','2024-05-04','Fermentación en tanques de concreto','BAT0083');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0083/foto_02_washing.jpg','washing','2024-05-05','Lavado en canal de correteo con agua limpia','BAT0083');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0084/foto_01_washing.jpg','washing','2024-05-19','Lavado en canal de correteo con agua limpia','BAT0084');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0084/foto_02_drying.jpg','drying','2024-05-20','Secado en camas africanas elevadas','BAT0084');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0085/foto_01_drying.jpg','drying','2024-06-01','Secado en camas africanas elevadas','BAT0085');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0086/foto_01_harvest.jpg','harvest','2024-06-16','Clasificación manual postcosecha','BAT0086');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0086/foto_02_pulping.jpg','pulping','2024-06-17','Control de humedad con medidor digital','BAT0086');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0087/foto_01_pulping.jpg','pulping','2024-06-29','Control de humedad con medidor digital','BAT0087');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0087/foto_02_fermentation.jpg','fermentation','2024-06-30','Almacenamiento en bodega ventilada','BAT0087');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0088/foto_01_fermentation.jpg','fermentation','2024-07-15','Almacenamiento en bodega ventilada','BAT0088');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0089/foto_01_washing.jpg','washing','2024-08-03','Cosecha manual selectiva en plena madurez','BAT0089');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0089/foto_02_drying.jpg','drying','2024-08-04','Despulpado mecánico con despulpadora de cilindro','BAT0089');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0090/foto_01_drying.jpg','drying','2024-08-19','Despulpado mecánico con despulpadora de cilindro','BAT0090');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0090/foto_02_harvest.jpg','harvest','2024-08-20','Fermentación en tanques de concreto','BAT0090');
INSERT INTO cafetrace.photo (file_path,stage,upload_date,description,code_batch) VALUES ('batches/BAT0091/foto_01_harvest.jpg','harvest','2024-09-01','Fermentación en tanques de concreto','BAT0091');

-- ============================================================
-- 11. CERTIFICATION (80 certificaciones)
-- ============================================================
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-03-16','2026-03-15','BAT0001');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-04-01','2026-03-31','BAT0002');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-04-19','2026-04-18','BAT0003');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-05-03','2026-05-02','BAT0004');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-05-15','2026-05-14','BAT0005');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-05-29','2026-05-28','BAT0006');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-06-10','2026-06-09','BAT0007');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-06-25','2026-06-24','BAT0008');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-07-13','2026-07-12','BAT0009');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-07-28','2026-07-27','BAT0010');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-08-09','2026-08-08','BAT0011');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-08-23','2026-08-22','BAT0012');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-09-04','2026-09-03','BAT0013');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-09-19','2026-09-18','BAT0014');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-10-07','2026-10-06','BAT0015');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-10-22','2026-10-21','BAT0016');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-11-03','2026-11-02','BAT0017');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-11-16','2026-11-15','BAT0018');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-11-28','2026-11-27','BAT0019');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-12-18','2026-12-17','BAT0020');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-02-24','2026-02-23','BAT0021');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-03-12','2026-03-11','BAT0022');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-03-30','2026-03-29','BAT0023');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-04-13','2026-04-12','BAT0024');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-04-25','2026-04-24','BAT0025');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-05-09','2026-05-08','BAT0026');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-05-21','2026-05-20','BAT0027');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-06-05','2026-06-04','BAT0028');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-06-23','2026-06-22','BAT0029');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-07-08','2026-07-07','BAT0030');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-07-20','2026-07-19','BAT0031');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-08-03','2026-08-02','BAT0032');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-08-15','2026-08-14','BAT0033');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-08-30','2026-08-29','BAT0034');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-09-17','2026-09-16','BAT0035');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-10-02','2026-10-01','BAT0036');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-10-14','2026-10-13','BAT0037');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-10-27','2026-10-26','BAT0038');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-11-08','2026-11-07','BAT0039');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-11-28','2026-11-27','BAT0040');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-02-04','2026-02-03','BAT0041');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-02-20','2026-02-19','BAT0042');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-03-10','2026-03-09','BAT0043');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-03-24','2026-03-23','BAT0044');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-04-05','2026-04-04','BAT0045');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-04-19','2026-04-18','BAT0046');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-05-01','2026-04-30','BAT0047');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-05-16','2026-05-15','BAT0048');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-06-03','2026-06-02','BAT0049');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-06-18','2026-06-17','BAT0050');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-06-30','2026-06-29','BAT0051');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-07-14','2026-07-13','BAT0052');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-07-26','2026-07-25','BAT0053');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-08-10','2026-08-09','BAT0054');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-08-28','2026-08-27','BAT0055');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-09-12','2026-09-11','BAT0056');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-09-24','2026-09-23','BAT0057');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-10-07','2026-10-06','BAT0058');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-10-19','2026-10-18','BAT0059');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-11-08','2026-11-07','BAT0060');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-01-15','2026-01-14','BAT0061');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-01-31','2026-01-30','BAT0062');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-02-18','2026-02-17','BAT0063');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-03-04','2026-03-03','BAT0064');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-03-16','2026-03-15','BAT0065');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-03-30','2026-03-29','BAT0066');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-04-11','2026-04-10','BAT0067');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-04-26','2026-04-25','BAT0068');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-05-14','2026-05-13','BAT0069');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-05-29','2026-05-28','BAT0070');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico USDA NOP','N','2023-06-10','2026-06-09','BAT0071');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Rainforest Alliance','Y','2023-06-24','2026-06-23','BAT0072');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('UTZ Certified','Y','2023-07-06','2026-07-05','BAT0073');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Fairtrade','Y','2023-07-21','2026-07-20','BAT0074');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('4C Association','Y','2023-08-08','2026-08-07','BAT0075');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Orgánico UE','N','2023-08-23','2026-08-22','BAT0076');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Bird Friendly','Y','2023-09-04','2026-09-03','BAT0077');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Café de Colombia','Y','2023-09-17','2026-09-16','BAT0078');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Cup of Excellence','Y','2023-09-29','2026-09-28','BAT0079');
INSERT INTO cafetrace.certification (type,is_certified,issue_date,expiry_date,code_batch) VALUES ('Q Grader Certified','Y','2023-10-19','2026-10-18','BAT0080');

-- ============================================================
-- 12. QR_CODE (100 códigos, uno por lote)
-- ============================================================
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0001-2025000','https://cafetrace.co/trazabilidad/bat0001','2024-04-04','PNG','BAT0001');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0002-2025001','https://cafetrace.co/trazabilidad/bat0002','2024-04-21','SVG','BAT0002');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0003-2025002','https://cafetrace.co/trazabilidad/bat0003','2024-05-10','PDF','BAT0003');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0004-2025003','https://cafetrace.co/trazabilidad/bat0004','2024-05-25','PNG','BAT0004');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0005-2025004','https://cafetrace.co/trazabilidad/bat0005','2024-06-07','SVG','BAT0005');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0006-2025005','https://cafetrace.co/trazabilidad/bat0006','2024-06-22','PDF','BAT0006');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0007-2025006','https://cafetrace.co/trazabilidad/bat0007','2024-07-05','PNG','BAT0007');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0008-2025007','https://cafetrace.co/trazabilidad/bat0008','2024-07-21','SVG','BAT0008');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0009-2025008','https://cafetrace.co/trazabilidad/bat0009','2024-08-09','PDF','BAT0009');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0010-2025009','https://cafetrace.co/trazabilidad/bat0010','2024-08-25','PNG','BAT0010');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0011-2025010','https://cafetrace.co/trazabilidad/bat0011','2024-09-07','SVG','BAT0011');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0012-2025011','https://cafetrace.co/trazabilidad/bat0012','2024-09-22','PDF','BAT0012');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0013-2025012','https://cafetrace.co/trazabilidad/bat0013','2024-10-05','PNG','BAT0013');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0014-2025013','https://cafetrace.co/trazabilidad/bat0014','2024-10-21','SVG','BAT0014');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0015-2025014','https://cafetrace.co/trazabilidad/bat0015','2024-11-09','PDF','BAT0015');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0016-2025015','https://cafetrace.co/trazabilidad/bat0016','2024-11-25','PNG','BAT0016');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0017-2025016','https://cafetrace.co/trazabilidad/bat0017','2024-12-08','SVG','BAT0017');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0018-2025017','https://cafetrace.co/trazabilidad/bat0018','2024-12-22','PDF','BAT0018');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0019-2025018','https://cafetrace.co/trazabilidad/bat0019','2025-01-04','PNG','BAT0019');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0020-2025019','https://cafetrace.co/trazabilidad/bat0020','2025-01-25','SVG','BAT0020');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0021-2025020','https://cafetrace.co/trazabilidad/bat0021','2024-04-07','PDF','BAT0021');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0022-2025021','https://cafetrace.co/trazabilidad/bat0022','2024-04-24','PNG','BAT0022');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0023-2025022','https://cafetrace.co/trazabilidad/bat0023','2024-05-13','SVG','BAT0023');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0024-2025023','https://cafetrace.co/trazabilidad/bat0024','2024-05-28','PDF','BAT0024');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0025-2025024','https://cafetrace.co/trazabilidad/bat0025','2024-06-10','PNG','BAT0025');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0026-2025025','https://cafetrace.co/trazabilidad/bat0026','2024-06-25','SVG','BAT0026');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0027-2025026','https://cafetrace.co/trazabilidad/bat0027','2024-07-08','PDF','BAT0027');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0028-2025027','https://cafetrace.co/trazabilidad/bat0028','2024-07-24','PNG','BAT0028');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0029-2025028','https://cafetrace.co/trazabilidad/bat0029','2024-08-12','SVG','BAT0029');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0030-2025029','https://cafetrace.co/trazabilidad/bat0030','2024-08-28','PDF','BAT0030');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0031-2025030','https://cafetrace.co/trazabilidad/bat0031','2024-09-10','PNG','BAT0031');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0032-2025031','https://cafetrace.co/trazabilidad/bat0032','2024-09-25','SVG','BAT0032');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0033-2025032','https://cafetrace.co/trazabilidad/bat0033','2024-10-08','PDF','BAT0033');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0034-2025033','https://cafetrace.co/trazabilidad/bat0034','2024-10-24','PNG','BAT0034');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0035-2025034','https://cafetrace.co/trazabilidad/bat0035','2024-11-12','SVG','BAT0035');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0036-2025035','https://cafetrace.co/trazabilidad/bat0036','2024-11-28','PDF','BAT0036');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0037-2025036','https://cafetrace.co/trazabilidad/bat0037','2024-12-11','PNG','BAT0037');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0038-2025037','https://cafetrace.co/trazabilidad/bat0038','2024-12-25','SVG','BAT0038');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0039-2025038','https://cafetrace.co/trazabilidad/bat0039','2025-01-07','PDF','BAT0039');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0040-2025039','https://cafetrace.co/trazabilidad/bat0040','2025-01-28','PNG','BAT0040');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0041-2025040','https://cafetrace.co/trazabilidad/bat0041','2024-04-10','SVG','BAT0041');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0042-2025041','https://cafetrace.co/trazabilidad/bat0042','2024-04-27','PDF','BAT0042');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0043-2025042','https://cafetrace.co/trazabilidad/bat0043','2024-05-16','PNG','BAT0043');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0044-2025043','https://cafetrace.co/trazabilidad/bat0044','2024-05-31','SVG','BAT0044');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0045-2025044','https://cafetrace.co/trazabilidad/bat0045','2024-06-13','PDF','BAT0045');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0046-2025045','https://cafetrace.co/trazabilidad/bat0046','2024-06-28','PNG','BAT0046');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0047-2025046','https://cafetrace.co/trazabilidad/bat0047','2024-07-11','SVG','BAT0047');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0048-2025047','https://cafetrace.co/trazabilidad/bat0048','2024-07-27','PDF','BAT0048');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0049-2025048','https://cafetrace.co/trazabilidad/bat0049','2024-08-15','PNG','BAT0049');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0050-2025049','https://cafetrace.co/trazabilidad/bat0050','2024-08-31','SVG','BAT0050');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0051-2025050','https://cafetrace.co/trazabilidad/bat0051','2024-09-13','PDF','BAT0051');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0052-2025051','https://cafetrace.co/trazabilidad/bat0052','2024-09-28','PNG','BAT0052');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0053-2025052','https://cafetrace.co/trazabilidad/bat0053','2024-10-11','SVG','BAT0053');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0054-2025053','https://cafetrace.co/trazabilidad/bat0054','2024-10-27','PDF','BAT0054');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0055-2025054','https://cafetrace.co/trazabilidad/bat0055','2024-11-15','PNG','BAT0055');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0056-2025055','https://cafetrace.co/trazabilidad/bat0056','2024-12-01','SVG','BAT0056');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0057-2025056','https://cafetrace.co/trazabilidad/bat0057','2024-12-14','PDF','BAT0057');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0058-2025057','https://cafetrace.co/trazabilidad/bat0058','2024-12-28','PNG','BAT0058');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0059-2025058','https://cafetrace.co/trazabilidad/bat0059','2025-01-10','SVG','BAT0059');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0060-2025059','https://cafetrace.co/trazabilidad/bat0060','2025-01-31','PDF','BAT0060');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0061-2025060','https://cafetrace.co/trazabilidad/bat0061','2024-04-13','PNG','BAT0061');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0062-2025061','https://cafetrace.co/trazabilidad/bat0062','2024-04-30','SVG','BAT0062');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0063-2025062','https://cafetrace.co/trazabilidad/bat0063','2024-05-19','PDF','BAT0063');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0064-2025063','https://cafetrace.co/trazabilidad/bat0064','2024-06-03','PNG','BAT0064');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0065-2025064','https://cafetrace.co/trazabilidad/bat0065','2024-06-16','SVG','BAT0065');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0066-2025065','https://cafetrace.co/trazabilidad/bat0066','2024-07-01','PDF','BAT0066');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0067-2025066','https://cafetrace.co/trazabilidad/bat0067','2024-07-14','PNG','BAT0067');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0068-2025067','https://cafetrace.co/trazabilidad/bat0068','2024-07-30','SVG','BAT0068');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0069-2025068','https://cafetrace.co/trazabilidad/bat0069','2024-08-18','PDF','BAT0069');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0070-2025069','https://cafetrace.co/trazabilidad/bat0070','2024-09-03','PNG','BAT0070');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0071-2025070','https://cafetrace.co/trazabilidad/bat0071','2024-09-16','SVG','BAT0071');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0072-2025071','https://cafetrace.co/trazabilidad/bat0072','2024-10-01','PDF','BAT0072');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0073-2025072','https://cafetrace.co/trazabilidad/bat0073','2024-10-14','PNG','BAT0073');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0074-2025073','https://cafetrace.co/trazabilidad/bat0074','2024-10-30','SVG','BAT0074');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0075-2025074','https://cafetrace.co/trazabilidad/bat0075','2024-11-18','PDF','BAT0075');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0076-2025075','https://cafetrace.co/trazabilidad/bat0076','2024-12-04','PNG','BAT0076');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0077-2025076','https://cafetrace.co/trazabilidad/bat0077','2024-12-17','SVG','BAT0077');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0078-2025077','https://cafetrace.co/trazabilidad/bat0078','2024-12-31','PDF','BAT0078');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0079-2025078','https://cafetrace.co/trazabilidad/bat0079','2025-01-13','PNG','BAT0079');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0080-2025079','https://cafetrace.co/trazabilidad/bat0080','2025-02-03','SVG','BAT0080');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0081-2025080','https://cafetrace.co/trazabilidad/bat0081','2024-04-16','PDF','BAT0081');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0082-2025081','https://cafetrace.co/trazabilidad/bat0082','2024-05-03','PNG','BAT0082');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0083-2025082','https://cafetrace.co/trazabilidad/bat0083','2024-05-22','SVG','BAT0083');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0084-2025083','https://cafetrace.co/trazabilidad/bat0084','2024-06-06','PDF','BAT0084');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0085-2025084','https://cafetrace.co/trazabilidad/bat0085','2024-06-19','PNG','BAT0085');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0086-2025085','https://cafetrace.co/trazabilidad/bat0086','2024-07-04','SVG','BAT0086');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0087-2025086','https://cafetrace.co/trazabilidad/bat0087','2024-07-17','PDF','BAT0087');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0088-2025087','https://cafetrace.co/trazabilidad/bat0088','2024-08-02','PNG','BAT0088');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0089-2025088','https://cafetrace.co/trazabilidad/bat0089','2024-08-21','SVG','BAT0089');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0090-2025089','https://cafetrace.co/trazabilidad/bat0090','2024-09-06','PDF','BAT0090');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0091-2025090','https://cafetrace.co/trazabilidad/bat0091','2024-09-19','PNG','BAT0091');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0092-2025091','https://cafetrace.co/trazabilidad/bat0092','2024-10-04','SVG','BAT0092');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0093-2025092','https://cafetrace.co/trazabilidad/bat0093','2024-10-17','PDF','BAT0093');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0094-2025093','https://cafetrace.co/trazabilidad/bat0094','2024-11-02','PNG','BAT0094');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0095-2025094','https://cafetrace.co/trazabilidad/bat0095','2024-11-21','SVG','BAT0095');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0096-2025095','https://cafetrace.co/trazabilidad/bat0096','2024-12-07','PDF','BAT0096');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0097-2025096','https://cafetrace.co/trazabilidad/bat0097','2024-12-20','PNG','BAT0097');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0098-2025097','https://cafetrace.co/trazabilidad/bat0098','2025-01-03','SVG','BAT0098');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0099-2025098','https://cafetrace.co/trazabilidad/bat0099','2025-01-16','PDF','BAT0099');
INSERT INTO cafetrace.qr_code (unique_code,url,generated_date,format,code_batch) VALUES ('CT-BAT0100-2025099','https://cafetrace.co/trazabilidad/bat0100','2025-02-06','PNG','BAT0100');

-- ============================================================
-- 13. INVOICE (60 facturas)
-- ============================================================
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00001','2024-06-01',0,'completed','2024-06-16',151);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00002','2024-06-06',0,'completed','2024-06-22',152);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00003','2024-06-11',0,'confirmed','2024-06-28',153);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00004','2024-06-16',0,'in_process',NULL,154);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00005','2024-06-21',0,'pending',NULL,155);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00006','2024-06-26',0,'completed','2024-07-16',156);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00007','2024-07-01',0,'completed','2024-07-22',157);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00008','2024-07-06',0,'completed','2024-07-28',158);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00009','2024-07-11',0,'confirmed','2024-08-03',159);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00010','2024-07-16',0,'in_process',NULL,160);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00011','2024-07-21',0,'pending',NULL,161);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00012','2024-07-26',0,'completed','2024-08-11',162);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00013','2024-07-31',0,'completed','2024-08-17',163);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00014','2024-08-05',0,'completed','2024-08-23',164);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00015','2024-08-10',0,'confirmed','2024-08-29',165);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00016','2024-08-15',0,'in_process',NULL,166);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00017','2024-08-20',0,'pending',NULL,167);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00018','2024-08-25',0,'completed','2024-09-16',168);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00019','2024-08-30',0,'completed','2024-09-22',169);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00020','2024-09-04',0,'completed','2024-09-28',170);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00021','2024-09-09',0,'confirmed','2024-09-24',171);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00022','2024-09-14',0,'in_process',NULL,172);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00023','2024-09-19',0,'pending',NULL,173);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00024','2024-09-24',0,'completed','2024-10-12',174);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00025','2024-09-29',0,'completed','2024-10-18',175);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00026','2024-10-04',0,'completed','2024-10-24',176);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00027','2024-10-09',0,'confirmed','2024-10-30',177);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00028','2024-10-14',0,'in_process',NULL,178);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00029','2024-10-19',0,'pending',NULL,179);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00030','2024-10-24',0,'completed','2024-11-17',180);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00031','2024-10-29',0,'completed','2024-11-13',181);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00032','2024-11-03',0,'completed','2024-11-19',182);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00033','2024-11-08',0,'confirmed','2024-11-25',183);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00034','2024-11-13',0,'in_process',NULL,184);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00035','2024-11-18',0,'pending',NULL,185);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00036','2024-11-23',0,'completed','2024-12-13',186);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00037','2024-11-28',0,'completed','2024-12-19',187);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00038','2024-12-03',0,'completed','2024-12-25',188);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00039','2024-12-08',0,'confirmed','2024-12-31',189);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00040','2024-12-13',0,'in_process',NULL,190);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00041','2024-12-18',0,'pending',NULL,191);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00042','2024-12-23',0,'completed','2025-01-08',192);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00043','2024-12-28',0,'completed','2025-01-14',193);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00044','2025-01-02',0,'completed','2025-01-20',194);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00045','2025-01-07',0,'confirmed','2025-01-26',195);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00046','2025-01-12',0,'in_process',NULL,196);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00047','2025-01-17',0,'pending',NULL,197);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00048','2025-01-22',0,'completed','2025-02-13',198);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00049','2025-01-27',0,'completed','2025-02-19',199);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00050','2025-02-01',0,'completed','2025-02-25',200);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00051','2025-02-06',0,'confirmed','2025-02-21',151);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00052','2025-02-11',0,'in_process',NULL,152);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00053','2025-02-16',0,'pending',NULL,153);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00054','2025-02-21',0,'completed','2025-03-11',154);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00055','2025-02-26',0,'completed','2025-03-17',155);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00056','2025-03-03',0,'completed','2025-03-23',156);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00057','2025-03-08',0,'confirmed','2025-03-29',157);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00058','2025-03-13',0,'in_process',NULL,158);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00059','2025-03-18',0,'pending',NULL,159);
INSERT INTO cafetrace.invoice (id_invoice,invoice_date,total_price,status,delivery_date,buyer_id) VALUES ('INV00060','2025-03-23',0,'completed','2025-04-16',160);

-- ============================================================
-- 14. INVOICE_DETAIL (76 detalles - cantidades corregidas)
-- ============================================================
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00001',7.5,18000,0,'INV00001','BAT0001');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00002',18.4,20700,0,'INV00002','BAT0003');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00003',25.9,22000,0,'INV00002','BAT0004');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00004',35.5,23300,0,'INV00003','BAT0005');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00005',46.4,24700,0,'INV00003','BAT0006');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00006',59.9,26000,0,'INV00004','BAT0007');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00007',22.4,27400,0,'INV00004','BAT0008');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00008',33.8,28700,0,'INV00005','BAT0009');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00009',62.7,31400,0,'INV00006','BAT0011');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00010',80.3,32700,0,'INV00006','BAT0012');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00011',101.3,34000,0,'INV00007','BAT0013');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00012',123.9,35400,0,'INV00007','BAT0014');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00013',45.2,36700,0,'INV00008','BAT0015');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00014',65.1,38100,0,'INV00008','BAT0016');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00015',88.4,39400,0,'INV00009','BAT0017');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00016',143.5,42100,0,'INV00010','BAT0019');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00017',175.1,43400,0,'INV00010','BAT0020');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00018',88.2,44700,0,'INV00011','BAT0021');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00019',32.3,46100,0,'INV00011','BAT0022');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00020',48.0,47400,0,'INV00012','BAT0023');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00021',65.4,48800,0,'INV00012','BAT0024');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00022',86.5,18100,0,'INV00013','BAT0025');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00023',136.2,20800,0,'INV00014','BAT0027');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00024',164.6,22100,0,'INV00014','BAT0028');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00025',59.5,23400,0,'INV00015','BAT0029');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00026',84.8,24800,0,'INV00015','BAT0030');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00027',114.3,26100,0,'INV00016','BAT0031');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00028',145.9,27400,0,'INV00016','BAT0032');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00029',182.6,28800,0,'INV00017','BAT0033');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00030',265.7,31500,0,'INV00018','BAT0035');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00031',93.5,32800,0,'INV00018','BAT0036');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00032',132.6,34100,0,'INV00019','BAT0037');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00033',174.5,35500,0,'INV00019','BAT0038');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00034',222.0,36800,0,'INV00020','BAT0039');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00035',271.8,38100,0,'INV00020','BAT0040');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00036',136.8,39500,0,'INV00021','BAT0041');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00037',61.0,42200,0,'INV00022','BAT0043');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00038',87.3,43500,0,'INV00022','BAT0044');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00039',118.8,44800,0,'INV00023','BAT0045');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00040',152.2,46200,0,'INV00023','BAT0046');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00041',191.7,47500,0,'INV00024','BAT0047');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00042',232.7,48800,0,'INV00024','BAT0048');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00043',281.1,18200,0,'INV00025','BAT0049');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00044',141.1,20800,0,'INV00026','BAT0051');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00045',185.8,22200,0,'INV00026','BAT0052');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00046',237.1,23500,0,'INV00027','BAT0053');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00047',290.5,24900,0,'INV00027','BAT0054');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00048',351.8,26200,0,'INV00028','BAT0055');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00049',414.5,27500,0,'INV00028','BAT0056');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00050',145.9,28900,0,'INV00029','BAT0057');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00051',267.5,31500,0,'INV00030','BAT0059');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00052',334.6,32900,0,'INV00030','BAT0060');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00053',409.9,34200,0,'INV00031','BAT0061');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00054',210.0,35600,0,'INV00031','BAT0062');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00055',27.0,36900,0,'INV00032','BAT0063');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00056',10.8,38200,0,'INV00032','BAT0064');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00057',17.2,39600,0,'INV00033','BAT0065');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00058',34.8,42200,0,'INV00034','BAT0067');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00059',46.2,43600,0,'INV00034','BAT0068');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00060',60.2,44900,0,'INV00035','BAT0069');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00061',75.6,46300,0,'INV00035','BAT0070');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00062',28.3,47600,0,'INV00036','BAT0071');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00063',41.6,48900,0,'INV00036','BAT0072');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00064',57.8,18300,0,'INV00037','BAT0073');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00065',97.2,20900,0,'INV00038','BAT0075');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00066',120.4,22300,0,'INV00038','BAT0076');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00067',147.7,23600,0,'INV00039','BAT0077');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00068',53.0,24900,0,'INV00039','BAT0078');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00069',76.6,26300,0,'INV00040','BAT0079');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00070',102.5,27600,0,'INV00040','BAT0080');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00071',55.2,29000,0,'INV00041','BAT0081');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00072',90.6,31600,0,'INV00042','BAT0083');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00073',111.2,33000,0,'INV00042','BAT0084');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00074',40.9,34300,0,'INV00043','BAT0085');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00075',59.1,35600,0,'INV00043','BAT0086');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail,quantity_kg,unit_price,subtotal,invoice_id,code_batch) VALUES ('DET00076',80.9,37000,0,'INV00044','BAT0087');

-- ============================================================
-- FIN DEL SCRIPT DML
-- Total aproximado de registros insertados: 1252
-- ============================================================



-- ============================================================
-- CaféTrace - Script de Verificación Post-Carga
-- Ejecutar en Supabase SQL Editor después del DML
-- ============================================================

-- ── 1. CONTEO POR TABLA ─────────────────────────────────────
SELECT 'department'         AS tabla, COUNT(*) AS registros FROM cafetrace.department
UNION ALL
SELECT 'municipality',       COUNT(*) FROM cafetrace.municipality
UNION ALL
SELECT 'person',             COUNT(*) FROM cafetrace.person
UNION ALL
SELECT 'farmer',             COUNT(*) FROM cafetrace.farmer
UNION ALL
SELECT 'buyer',              COUNT(*) FROM cafetrace.buyer
UNION ALL
SELECT 'admin',              COUNT(*) FROM cafetrace.admin
UNION ALL
SELECT 'farm',               COUNT(*) FROM cafetrace.farm
UNION ALL
SELECT 'batch',              COUNT(*) FROM cafetrace.batch
UNION ALL
SELECT 'productive_process', COUNT(*) FROM cafetrace.productive_process
UNION ALL
SELECT 'photo',              COUNT(*) FROM cafetrace.photo
UNION ALL
SELECT 'certification',      COUNT(*) FROM cafetrace.certification
UNION ALL
SELECT 'qr_code',            COUNT(*) FROM cafetrace.qr_code
UNION ALL
SELECT 'invoice',            COUNT(*) FROM cafetrace.invoice
UNION ALL
SELECT 'invoice_detail',     COUNT(*) FROM cafetrace.invoice_detail
ORDER BY tabla;

-- ── 2. VERIFICAR TRIGGERS: subtotal calculado automáticamente ─
SELECT 
    id_invoice_detail,
    quantity_kg,
    unit_price,
    subtotal,
    (quantity_kg * unit_price) AS esperado,
    CASE WHEN subtotal = quantity_kg * unit_price 
         THEN '✓ OK' ELSE '✗ ERROR' END AS trigger_subtotal
FROM cafetrace.invoice_detail
LIMIT 10;

-- ── 3. VERIFICAR TRIGGER: total_price en invoice actualizado ──
SELECT 
    i.id_invoice,
    i.total_price,
    COALESCE(SUM(d.subtotal), 0) AS suma_detalles,
    CASE WHEN i.total_price = COALESCE(SUM(d.subtotal), 0)
         THEN '✓ OK' ELSE '✗ ERROR' END AS trigger_total
FROM cafetrace.invoice i
LEFT JOIN cafetrace.invoice_detail d ON d.invoice_id = i.id_invoice
GROUP BY i.id_invoice, i.total_price
ORDER BY i.id_invoice
LIMIT 10;

-- ── 4. VERIFICAR TRIGGER: stock descontado correctamente ──────
SELECT
    b.code_batch,
    b.total_weight,
    b.available_weight,
    COALESCE(SUM(d.quantity_kg), 0)          AS kg_vendidos,
    b.total_weight - COALESCE(SUM(d.quantity_kg), 0) AS stock_esperado,
    CASE 
        WHEN b.available_weight = b.total_weight - COALESCE(SUM(d.quantity_kg), 0)
        THEN '✓ OK' ELSE '✗ ERROR' 
    END AS trigger_stock
FROM cafetrace.batch b
LEFT JOIN cafetrace.invoice_detail d ON d.code_batch = b.code_batch
GROUP BY b.code_batch, b.total_weight, b.available_weight
HAVING COALESCE(SUM(d.quantity_kg), 0) > 0
ORDER BY b.code_batch
LIMIT 10;

-- ── 5. VERIFICAR INTEGRIDAD REFERENCIAL ──────────────────────
-- Farmers sin persona padre (debe ser 0)
SELECT 'farmers sin person' AS check_fk, COUNT(*) AS problemas
FROM cafetrace.farmer f
WHERE NOT EXISTS (SELECT 1 FROM cafetrace.person p WHERE p.id = f.id_farmer)
UNION ALL
-- Farms sin farmer (debe ser 0)
SELECT 'farms sin farmer', COUNT(*)
FROM cafetrace.farm fa
WHERE NOT EXISTS (SELECT 1 FROM cafetrace.farmer fr WHERE fr.id_farmer = fa.farmer_id)
UNION ALL
-- Batches sin farm (debe ser 0)
SELECT 'batches sin farm', COUNT(*)
FROM cafetrace.batch b
WHERE NOT EXISTS (SELECT 1 FROM cafetrace.farm fa WHERE fa.id_farm = b.farm_id)
UNION ALL
-- Procesos sin batch (debe ser 0)
SELECT 'procesos sin batch', COUNT(*)
FROM cafetrace.productive_process pp
WHERE NOT EXISTS (SELECT 1 FROM cafetrace.batch b WHERE b.code_batch = pp.code_batch)
UNION ALL
-- Invoice_detail sin invoice (debe ser 0)
SELECT 'detalles sin invoice', COUNT(*)
FROM cafetrace.invoice_detail d
WHERE NOT EXISTS (SELECT 1 FROM cafetrace.invoice i WHERE i.id_invoice = d.invoice_id);

-- ── 6. VERIFICAR FECHAS PRODUCTIVAS (orden correcto) ─────────
SELECT 
    code_batch,
    harvest_date,
    pulping_date,
    fermentation_date,
    washing_date,
    drying_date,
    CASE WHEN pulping_date >= harvest_date
          AND fermentation_date >= pulping_date
          AND washing_date >= fermentation_date
          AND drying_date >= washing_date
         THEN '✓ OK' ELSE '✗ ERROR' END AS fechas_ok
FROM cafetrace.productive_process
ORDER BY code_batch
LIMIT 10;

-- ── 7. VISTA GENERAL: trazabilidad completa de un lote ───────
SELECT
    b.code_batch,
    b.variety                           AS variedad,
    b.total_weight                      AS peso_total_kg,
    b.available_weight                  AS disponible_kg,
    b.price_kg                          AS precio_kg,
    b.altitude                          AS altitud_msnm,
    b.quality_score                     AS puntaje_calidad,
    f.name                              AS finca,
    m.name                              AS municipio,
    d.name                              AS departamento,
    CONCAT(p.first_name,' ',p.last_name_1) AS caficultor,
    pp.harvest_date                     AS fecha_cosecha,
    pp.drying_date                      AS fecha_secado,
    c.type                              AS certificacion,
    c.is_certified                      AS certificado
FROM cafetrace.batch b
JOIN cafetrace.farm f       ON f.id_farm        = b.farm_id
JOIN cafetrace.municipality m ON m.id_municipality = f.municipality_id
JOIN cafetrace.department d  ON d.id_department  = m.department_id
JOIN cafetrace.farmer fr     ON fr.id_farmer      = f.farmer_id
JOIN cafetrace.person p      ON p.id              = fr.id_farmer
LEFT JOIN cafetrace.productive_process pp ON pp.code_batch = b.code_batch
LEFT JOIN cafetrace.certification c       ON c.code_batch  = b.code_batch
ORDER BY b.code_batch
LIMIT 5;

-- ── 8. RESUMEN DE VENTAS POR COMPRADOR ───────────────────────
SELECT
    CONCAT(p.first_name,' ',p.last_name_1) AS comprador,
    bu.company_name                         AS empresa,
    COUNT(DISTINCT i.id_invoice)            AS total_facturas,
    SUM(d.quantity_kg)                      AS kg_comprados,
    SUM(i.total_price)                      AS valor_total_cop
FROM cafetrace.buyer bu
JOIN cafetrace.person p         ON p.id          = bu.id_buyer
JOIN cafetrace.invoice i        ON i.buyer_id    = bu.id_buyer
JOIN cafetrace.invoice_detail d ON d.invoice_id  = i.id_invoice
GROUP BY p.first_name, p.last_name_1, bu.company_name
ORDER BY valor_total_cop DESC
LIMIT 10;

-- ============================================================
-- Si todos los checks muestran ✓ OK y los conteos son correctos,
-- la carga fue exitosa y los triggers funcionan perfectamente.
-- ============================================================