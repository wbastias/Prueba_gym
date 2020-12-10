--CREACIÓN TABLA SUSCRIPCION
--Tipos de suscripcion:
-- trimestral
-- semestral
-- anual
-- free pass
-- VIP
CREATE TABLE suscripcion(
	id_suscripcion SERIAL,
	nombre_suscripcion VARCHAR(10),
	precio_suscripcion INT,
	PRIMARY KEY(id_suscripcion)
);


--CREACIÓN DE LA TABLA CLIENTE
--Formato telefono (+56aaa)nnnn nnnn donde a codigo area
CREATE TABLE cliente(
	id_cte SERIAL,
	fk_idSuscripcion INT,
	nombre_cte VARCHAR(25),
	apellido_cte VARCHAR(25),
	telefono_cte VARCHAR(12),
	email_cte VARCHAR(45),
	fechaPago_cte DATE,
	pagado_cte BOOL,
	fechaISusc_cte DATE,
	fechaFSusc_cte DATE,
	PRIMARY KEY (id_cte),
	FOREIGN KEY(fk_idSuscripcion) REFERENCES suscripcion(id_suscripcion)	
);

--CREACION DE LA TABLA CATEGORIA PASE
-- Categorias
-- basico    4990
-- silver    7990
-- platinum  9990
-- gold      14990
CREATE TABLE categoria_pase(
	id_cat SERIAL,
	nombre_cat VARCHAR(20),
	precio_cat INT,
	PRIMARY KEY (id_cat)
);

--CREACION TABLA PASE
CREATE TABLE pase(
	id_pase SERIAL,
	fk_idCte INT,
	fk_idCat INT,
	fecha_pase DATE,
	PRIMARY KEY (id_pase),
	FOREIGN KEY(fk_idCte) REFERENCES cliente(id_cte),
	FOREIGN KEY(fk_idCat) REFERENCES categoria_pase(id_cat)	
);

--CREACION TABLA TRANSACCIÓN
CREATE TABLE transaccion(
	id_tx SERIAL,
	fk_idCte INT,
	fecha_tx DATE,
	PRIMARY KEY (id_tx),
	FOREIGN KEY(fk_idCte) REFERENCES cliente(id_cte)	
);

--CREACION TABLA PRODUCTO
CREATE TABLE producto(
	id_pdcto SERIAL,
	nombre_pdcto VARCHAR(45),
	precio_pdcto INT,
	inventario_pdcto INT,
	PRIMARY KEY(id_pdcto)
);

-- CREACION TABLA pdcto_x_tx
CREATE TABLE pdcto_x_tx(
	fk_idPdcto INT REFERENCES producto(id_pdcto) ON UPDATE CASCADE 
	ON DELETE CASCADE,
	fk_idTx INT REFERENCES transaccion(id_tx) ON UPDATE CASCADE 
	ON DELETE CASCADE,
	cantidad_pdctoTx INT,
	CONSTRAINT pxtx_pkey PRIMARY KEY (fk_idPdcto, fk_idTx)
);










