SELECT * FROM equipo;
INSERT INTO equipo VALUES (01, "ORION FC", "2019-03-12", "CARLOS EREDIA");

SELECT * FROM partidos;
INSERT INTO partidos VALUES (1000, "ORION FC", "LIBERTAD FC", "2024-10-03:12:00:00", "2024-10-03", "SOACHA", "01-00", 01);
INSERT INTO partidos VALUES (1001, "ORION FC", "JUVENTUS FC", "2024-10-06:01:00:00", "2024-10-06", "SIBATE", "01-01", 01);
INSERT INTO partidos VALUES (1002, "ORION FC", "KILMES FC", "2024-10-09:05:00:00", "2024-10-09", "SOACHA", "01-03", 01);
INSERT INTO partidos VALUES (1003, "ORION FC", "BOGOTA FC", "2024-10-14:10:00:00", "2024-10-14", "BOGOTA", "02-02", 01);
INSERT INTO partidos VALUES (1004, "ORION FC", "NACIONAL FC", "2024-10-17:12:00:00", "2024-10-17", "MEDELLIN", "01-00", 01);

SELECT * FROM torneos;
INSERT INTO torneos VALUES (2000, "BOM BOM BUN", 32, "MOSQUERA", "2024-07-20", "MACNELLY TORRES", 01);
INSERT INTO torneos VALUES (2001, "PONY MALTA", 18, "BOGOTA", "2024-08-10", "CAMILO SANCHEZ", 01);
INSERT INTO torneos VALUES (2002, "INDEPORTES", 4, "SOACHA", "2024-10-08", "CAMILO RINCON", 01);

SELECT * FROM plantilla;
INSERT INTO plantilla VALUES (101, 11, 08, 01);

SELECT * FROM dt;
INSERT INTO dt VALUES (201, "CARLOS EREDIA", 312983475, "CARLITOS02@GMAIL.COM", "CLL 2 NORTE #10-40", 01);

SELECT * FROM asistentedt;
INSERT INTO asistentedt VALUES (301, "FELIPE CABUYA", 320745273, "FELIPE2139@GMAIL.COM", "CLL 5 NORTE #09-54", 201);

select * from registro;
INSERT INTO registro VALUES (3001, "MARIA SANCHEZ", "mariasasa@gmail.com", "MMARIA2012", "MMARIA2012", "JEFA DE HINCHADA", 201, 301);

-- SENCILLAS 
SELECT * FROM torneos where EQUIPOS > 10;

SELECT LUGAR, FECHA FROM partidos where LUGAR LIKE "S%" AND FECHA >= "2024-10-09";

-- JOINS 

select NOMBRE from equipo  Join torneos ON equipo.ID = torneos.ID;
