--INSERTS

-- INSERT TABLA SUSCRIPCION
--Tipos de suscripcion:
-- trimestral 120000
-- semestral 100000
-- anual 198990
-- free pass 229990
-- VIP 279990
INSERT INTO suscripcion
	(nombre_suscripcion,precio_suscripcion)
VALUES
	('trimestral',120000),
	('semestral',100000),
	('anual',198990),
	('free pass',229990),
	('VIP',279990)
	

--INSERT DE LA TABLA CLIENTE
--Formato telefono (+56aaa)nnnn nnnn donde a codigo area
INSERT INTO cliente 
	(fk_idSuscripcion, nombre_cte, apellido_cte, telefono_cte, email_Cte, fechaPago_cte, pagado_cte,fechaISusc_cte, fechaFSusc_cte) 
VALUES 
	(1, 'Leontyne', 'Stansell', '364-269-7066', 'lstansell0@1und1.de', '2019-12-29', False, '2019-12-29', '2020-03-29'),
	(1, 'Claudelle', 'Hakewell', '351-751-7319', 'chakewell1@cocolog-nifty.com', '2020-09-16', True, '2020-09-16', '2020-12-16'),
	(1, 'Nelle', 'Hegley', '578-741-8731', 'nhegley2@freewebs.com', '2020-01-26', True, '2020-01-26', '2021-04-26'),
	(1, 'Rawley', 'Pillans', '342-451-6216', 'rpillans3@mapquest.com', '2020-05-07', False, '2020-05-07', '2020-08-07'),
	(1, 'Kata', 'Warcop', '886-332-6138', 'kwarcop4@xing.com', '2020-12-25', False, '2020-12-25', '2021-03-25'),
	(2, 'Brennen', 'Cawthorne', '700-557-4113', 'bcawthorne5@mashable.com', '2020-03-28', True, '2020-03-28', '2020-12-28'),
	(2, 'Renado', 'Walne', '553-374-8666', 'rwalne6@slate.com', '2020-08-22', True, '2020-08-22', '2021-02-28'),
	(2, 'Willa', 'Ramshaw', '999-321-5558', 'wramshaw7@newyorker.com', '2020-08-31', True, '2020-08-31', '2021-02-28'),
	(2, 'Lucita', 'Benard', '701-359-3170', 'lbenard8@discuz.net', '2020-06-06', True, '2020-06-06', '2021-12-17'),
	(2, 'Nerty', 'Lattka', '390-763-2233', 'nlattka9@hatena.ne.jp', '2020-06-07', False, '2020-06-07', '2020-12-07'),
	(3, 'Rory', 'Woofendell', '866-677-8377', 'rwoofendella@jalbum.net', '2020-03-03', True, '2020-03-03', '2021-03-03'),
	(3, 'Davon', 'Pedrollo', '615-578-3216', 'dpedrollob@abc.net.au', '2019-01-08', True, '2019-01-08', '2020-01-08'),
	(3, 'Dian', 'Warmington', '729-605-7771', 'dwarmingtonc@sun.com', '2020-01-08', True, '2020-01-08', '2021-01-08'),
	(3, 'Killian', 'Stidson', '110-471-0809', 'kstidsond@jigsy.com', '2020-06-26', True, '2020-06-26', '2021-06-26'),
	(3, 'Albertine', 'Yerson', '443-367-0368', 'ayersone@godaddy.com', '2020-03-30', True, '2020-03-30', '2021-03-30'),
	(4, 'Dolf', 'Worner', '209-917-7521', 'dwornerf@zimbio.com', '2020-01-25', True, '2020-01-25', '2021-01-25'),
	(4, 'Jacquenetta', 'Pounder', '731-877-6725', 'jpounderg@illinois.edu', '2020-05-18', True, '2020-05-18', '2021-05-18'),
	(4, 'Pandora', 'Badrock', '207-628-8226', 'pbadrockh@nasa.gov', '2020-10-04', True, '2020-10-04', '2021-10-04'),
	(5, 'Brandy', 'Larcombe', '798-780-5624', 'blarcombei@loc.gov', '2020-11-04', True, '2020-11-04', '2021-11-04'),
	(5, 'Zulema', 'McAlpin', '508-651-2561', 'zmcalpinj@booking.com', '2020-05-03', True, '2020-05-03', '2021-05-03')



--INSERT DE LA TABLA CATEGORIA PASE
-- Categorias
-- basico    4990
-- silver    7990
-- platinum  9990
-- gold      14990
INSERT INTO categoria_pase
	(nombre_cat,precio_cat)
VALUES
	('basico',4990),
	('silver',7990),
	('platinum',9990),
	('gold',14990)


--INSERT TABLA PASE
INSERT INTO pase
	(fk_idCte,fk_idCat,fecha_pase)
VALUES
	(3,2,'2020-11-20'),
	(7,1,'2020-12-20')


--INSERT TABLA TRANSACCION
INSERT INTO transaccion
	(fk_idCte,fecha_tx)
VALUES
	(1,'2019-12-29'),
	(2,'2020-09-16'),
	(2,'2020-10-07'),
	(5,'2020-12-25'),
	(7,'2020-08-22'),
	(9,'2020-06-06'),
	(11,'2020-03-03'),
	(13,'2020-01-08'),
	(17,'2020-05-18'),
	(16,'2020-01-25'),
	(18,'2020-10-04')


--CREACION TABLA PRODUCTO 
-- 10 productos: 1 agua mineral, 2 bebida energética, 3 barra proteina, 
-- 4 batido proteina,5 guantes,6 toalla,7 Smart watch,
-- 8 L-glutamina,9 Creatine,10 L-Carnitina

INSERT INTO producto
	(nombre_pdcto,precio_pdcto,inventario_pdcto)
VALUES
	('agua mineral',990,20),
	('bebida energética',1350,40),
	('barra proteina',1190,45),
	('batido proteina',11890,14),
	('guantes',5990,12),
	('toalla',3990,17),
	('Smart watch',19990,5),
	('L-glutamina',13490,10),
	('Creatine',9490,9),
	('L-Carnitina',12490,11)


-- INSERT TABLA pdcto_x_tx
INSERT INTO pdcto_x_tx
	(fk_idPdcto,fk_idTx,cantidad_pdctoTx)
VALUES
	(1,1,3),
	(1,2,1),
	(2,3,2),
	(2,4,1),
	(2,5,1),
	(5,6,1),
	(6,7,1),
	(8,8,2),
	(8,9,1),
	(10,9,2),
	(1,10,3),
	(1,11,2),
	(2,11,2)
	
	