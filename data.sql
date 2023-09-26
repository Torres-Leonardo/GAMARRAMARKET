-- Crear secuencia para las columnas identity
CREATE SEQUENCE persona_seq START WITH 200 INCREMENT BY 1;
CREATE SEQUENCE categoria_seq START WITH 10 INCREMENT BY 10;
CREATE SEQUENCE venta_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE venta_detalle_seq START WITH 300 INCREMENT BY 1;

-- Crear tabla persona
CREATE TABLE persona (
    idper NUMBER PRIMARY KEY,
    dniper VARCHAR2(8),
    nomper VARCHAR2(80),
    apeper VARCHAR2(80),
    emaper VARCHAR2(80),
    celper CHAR(9),
    tipper CHAR(1) CHECK (tipper IN ('C', 'V')),
    estper CHAR(1) DEFAULT 'A' CHECK (estper IN ('A', 'I')),
    fecnacper VARCHAR2(10)
);

-- Crear tabla categoria
CREATE TABLE categoria (
    idcat NUMBER PRIMARY KEY,
    nomcat VARCHAR2(80)
);

-- Crear tabla producto
CREATE TABLE producto (
    codpro VARCHAR2(3) PRIMARY KEY,
    nompro VARCHAR2(80),
    prepro NUMBER(8,2),
    stockpro VARCHAR2(3),
    idcatpro CHAR(2),
    estpro CHAR(1) DEFAULT 'A' CHECK (estpro IN ('A', 'I'))
);

-- Crear tabla venta
CREATE TABLE venta (
    idven NUMBER PRIMARY KEY,
    fecven VARCHAR2(10),
    idvend CHAR(3),
    idcli CHAR(3),
    tippagven CHAR(1) CHECK (tippagven IN ('E', 'T')),
    estven CHAR(1) DEFAULT 'A' CHECK (estven IN ('A', 'I'))
);

-- Crear tabla venta_detalle
CREATE TABLE venta_Detalle (
    idvendet NUMBER PRIMARY KEY,
    idven CHAR(1),
    codpro CHAR(3),
    canvendet VARCHAR2(2)
);

-- Datos de la tabla persona
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL,'77889955' ,'Alberto', 'Solano Pariona', 'alberto.pariona@epresa.com', '99845632', 'V', 'A', '10/02/1970');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL,'45781233' ,'Alicia', 'García Campos', '', '', 'C', 'A', '20/03/1980');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL,'15487922' ,'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', 'C', 'A', '06/06/1986');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL,'22116633' ,'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '', 'V', 'A', '10/02/1970');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL,'88741589' ,'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263', 'C', 'A', '25/07/1981');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '45122587', 'Mario', 'Barrios Martinez', 'mario.barrios@outlook.com', '98652587', 'C', 'A', '10/10/1987');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '15258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', 'C', 'A', '06/06/1990');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '47142536', 'Alejandro', 'Jimenez Huapaya', '', '941525365', 'C', 'A', '01/06/1989');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '985814723', 'C', 'A', '01/10/1991');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '45772587', 'Mario', 'Rodriguez Mayo', 'mario.rodriguez@outlook.com', '912662587', 'C', 'A', '10/11/1987');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '87952514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', 'C', 'A', '21/12/1988');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '74142585', 'Pedro Alberto', 'Candela Valenzuela', 'pedro.candela@gmail.com', '94148525', 'C', 'A', '30/06/1995');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '53298147', 'Angel Manuel', 'Rojas Avila', 'angel.rojas@outlook.com', '', 'C', 'A', '02/03/1975');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '11453265', 'Hilario Fabiano', 'Avila Huapaya', '', '985514326', 'C', 'A', '02/05/2000');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '75747218', 'Octavio Adan', 'Marquez Osorio', 'octavio.marquez@yahoo.es', '966223141', 'C', 'A', '22/09/2000');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '55869321', 'Manolo Enrique', 'Vasquez Saravia', 'manolo.vasquez@outlook.es', '966223141', 'C', 'A', '22/09/2000');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '41552567', 'Genoveva Pilar', 'Ortiz Quispe', 'genoveva.ortiz@outlook.es', '92564137', 'C', 'A', '12/04/2003');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '49985471', 'Oscar César', 'Quiroz Zavala', '', '988223145', 'C', 'A', '12/10/2004');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '44992217', 'Verónica', 'Romero Vargas', 'veronica.romero@yahoo.com', '', 'C', 'A', '25/08/2002');

-- Datos de la tabla categoría
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Abarrotes');
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Carne y pollo');
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Higiene y limpieza');
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Bebidas y licores');
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Dulces y snacks');
INSERT INTO categoria (idcat, nomcat)
VALUES
(categoria_seq.NEXTVAL, 'Electrodomésticos');

--Datos de la tabla producto
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P01', 'Arroz', '4,65', '50', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P02', 'Azúcar', '3,45', '60', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P03', 'Pollo fresco', '8,7', '20', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P04', 'Lomo fino', '18,5', '40', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P05', 'Detergente Opal', '8,75', '60', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P06', 'Suavizante Ariel', '7,85', '30', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P07', 'Six pack cerveza en lata', '19,85', '150', '40', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P08', 'Pack Johnie Walker Black', '119,75', '150', '40', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P09', 'Ron Barceló gran añejo', '68,95', '150', '40', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P10', 'Filete de pechuga', '25,55', '50', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P11', 'Deditos de pechuga de pollo', '12,75', '120', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P12', 'Hamburguesa premium parrillera', '28,75', '150', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P13', 'Nugget de pollo', '10,9', '100', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P14', 'Tiras de pechuga de pollo', '13,5', '250', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P15', 'Galletas Oreo', '6,88', '50', '50', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P16', 'Galleta Choco Donuts', '4,9', '90', '50', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P17', 'Huevo de pascua', '3,4', '70', '50', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P18', 'Bombones de chocolate', '35,9', '100', '50', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P19', 'Detergente en polvo opal 6KG', '50,25', '250', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P20', 'Detergente Marsella Aromaterapia 4KG', '46,1', '150', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P21', 'Detergente líquido aroma bebé 5L', '83,85', '200', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P22', 'Jabón para lavar Caricia 200G', '7,75', '90', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P23', 'Lejía tradicional 18KG', '24,75', '200', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P24', 'Jabón para lavar - Bolívar', '6,8', '100', '30', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P25', 'Pack de menestras de lenteja', '14,5', '120', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P26', 'Mayonesa Alacena 850GR', '16,9', '90', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P27', 'Aceite de oliva extra virgen', '32,5', '145', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P28', 'Fideos tallarín 500G', '3,9', '45', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P29', 'Crema de avellanas con cacao', '7,8', '200', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P30', 'Harina de trigo sin preparar', '8,1', '100', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P31', 'Maicena Universal 180GR', '2,9', '85', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P32', 'Harina de maíz blanco', '10,5', '100', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P33', 'Leche condensada nestlé', '6,2', '135', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P34', 'Duraznos en almibar', '13,6', '180', '10', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P35', 'Chicharrón de cerdo', '29,5', '165', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P36', 'Apanado de pollo', '37,95', '130', '20', 'A');
INSERT INTO producto (codpro, nompro, prepro, stockpro, idcatpro, estpro)
VALUES
('P37', 'Sopa de carne', '9,6', '170', '20', 'A');

-- Datos de la tabla venta
INSERT INTO venta (idven, fecven, idvend, idcli, tippagven, estven)
VALUES
(venta_seq.NEXTVAL, '25/04/2023', '200', '202', 'E', 'A');
INSERT INTO venta (idven, fecven, idvend, idcli, tippagven, estven)
VALUES
(venta_seq.NEXTVAL, '25/04/2023', '200', '204', 'T', 'A');
INSERT INTO venta (idven, fecven, idvend, idcli, tippagven, estven)
VALUES
(venta_seq.NEXTVAL, '25/04/2023', '203', '205', 'T', 'A');
INSERT INTO venta (idven, fecven, idvend, idcli, tippagven, estven)
VALUES
(venta_seq.NEXTVAL, '25/04/2023', '203', '206', 'E', 'A');

-- Datos de la tabla venta_detalle
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '1', 'P01', '2');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '1', 'P04', '4');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '2', 'P06', '12');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '2', 'P08', '6');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '2', 'P11', '16');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '3', 'P15', '8');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '4', 'P09', '5');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '4', 'P14', '13');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '4', 'P20', '10');
INSERT INTO venta_detalle (idvendet, idven, codpro, canvendet)
VALUES
(venta_detalle_seq.NEXTVAL, '4', 'P21', '13');

--Actualizar número de MARIO RODRÍGUEZ MAYO
UPDATE persona
SET celper = '92288110'
WHERE nomper = 'Mario' AND apeper = 'Rodriguez Mayo';

--Cliente ya tiene N° de CELULAR
UPDATE persona
SET celper = '977226604'
WHERE dniper = '53298147';

--Borra lógicamente a clientes
UPDATE persona
SET estper = 'I'
WHERE dniper = '11453265';
UPDATE persona
SET estper = 'I'
WHERE dniper = '15487922';
UPDATE persona
SET estper = 'I'
WHERE dniper = '49985471';

--Los clientes perdieron su celular
UPDATE persona
SET celper = ''
WHERE dniper = '87952514';
UPDATE persona
SET celper = ''
WHERE dniper = '55869321';
UPDATE persona
SET celper = ''
WHERE dniper = '74142585';

--Reactivación de correo
UPDATE persona
SET emaper = 'oscar.quiroz@yahoo.es'
WHERE dniper = '49985471';

--Agregar clientes
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '68225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', '', 'V', 'A', '13/10/2001');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '15753595', 'Daniela', 'Solis Vargas', 'daniela.soliz@outlook.com', '', 'C', 'A', '09/11/1993');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '76314895', 'Miltón Gregorio', 'Vasquez Iturrizaga', 'milton.gregorio@yahoo.es', '974815233', 'C', 'A', '22/06/2004');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '84725001', 'Verónica', 'Ancajima Araujo', 'veronica.ancajima@yahoo.com', '', 'C', 'A', '07/11/1980');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', 'V', 'A', '06/06/2006');
INSERT INTO persona (idper, dniper, nomper, apeper, emaper, celper, tipper, estper, fecnacper)
VALUES
(persona_seq.NEXTVAL, '51436952', 'Luhana', 'Ortiz Rodriguez', 'luhana.ortiz@outlook.com', '960405017', 'C', 'A', '25/11/1980');

--Actualizar precio 
UPDATE producto
SET prepro = '3,5'
WHERE nompro = 'Maicena Universal 180GR';

--Actualizar producto
UPDATE producto
SET nompro = 'Detergente Opal 1/2Kg'
WHERE nompro = 'Detergente Opal';

--Eliminar físicamente
DELETE FROM producto
WHERE nompro = 'Apanado de pollo';
DELETE FROM producto
WHERE nompro = 'Sopa de carne';
DELETE FROM producto
WHERE codpro = 'P13';
DELETE FROM producto
WHERE codpro = 'P16';
DELETE FROM producto
WHERE codpro = 'P19';

--Eliminar físicamente precios menores o igual a 10
/* DELETE FROM producto
WHERE CAST(REPLACE(prepro, ',', '.') AS NUMBER) <= 10; */

--Eliminar físicamente
DELETE FROM categoria
WHERE nomcat = 'Electrodomésticos';
