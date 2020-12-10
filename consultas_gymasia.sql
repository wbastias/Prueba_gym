
-- FUNCIONALIDAD: Comprar pase diario 
-- Consulta: Insertar un pase con id_cliente en la tabla pase
-- Caso: Cliente Claudelle compra pase diario platinum 
INSERT INTO pase
	(fk_idCte,fk_idCat,fecha_pase)
VALUES
	(2,3,'2021-01-02');
	
	
-- FUNCIONALIDAD:Comprar suscripcion
-- Consulta: Insertar nuevo cliente
-- Cómo: solicitar info de cliente, tipo de suscripcion y fecha de inicio del plan. (La fecha de finalización se ajusta mediante la suscripción seleccionada)
-- Cliente David se inscribe con un plan VIP entre 25/12/2020 y 24/11/2021
INSERT INTO cliente 
	(fk_idSuscripcion, nombre_cte, apellido_cte, telefono_cte, email_Cte, fechaPago_cte, pagado_cte,fechaISusc_cte, fechaFSusc_cte) 
VALUES 
	(5,'David','Torres', '364-269-7066','dtorres@gmail.com','2020-12-05',True,'2020-12-25','2021-11-24');


	
-- FUNCIONALIDAD: Comprar productos
-- Consultas:
	-- generar transaccion con el id cliente y fecha
	-- obtener producto agua mineral con id cliente, id_pdcto y cantidad
	-- actualizar stock en gym (descontar cantidad comprada en inventario_pdcto)
-- Cómo: el cliente genera una transación que consiste en comprar un agua mineral 

INSERT INTO transaccion (fk_idCte, fecha_tx) VALUES (2, '2020-12-09');
INSERT INTO pdcto_x_tx (fk_idTx, fk_idPdcto, cantidad_pdctoTx) VALUES ('2020-12-09',1,1);
UPDATE producto SET id_pdcto = 1 WHERE inventario_pdcto = 19;


-- FUNCIONALIDAD:ordenar listado de productos por precio
-- Consultas:listar los precios de los productos de manera ascendente
-- COmo: Un cliente ingresa a la pagina del gym revisa la lista de productos disponibles
-- de menor a mayor precio
SELECT * producto ORDER BY precio_pdcto ASC;


-- FUNCIONALIDAD: Contidad de productos vendidos
-- Consultas: Caso 1: Cantidad productos vendidos diarias
              Caso 2: Total dinero en ventas diarias --> join transaccion - pdcto_x_tx y producto
-- COmo:
--caso1
FROM * FROM transaccion
JOIN pdcto_x_tx
ON transaccion.id_tx = pdcto_x_tx.fk_idTx

--caso2
FROM * FROM pdcto_x_tx
LEFT JOIN producto
ON pdcto_x_tx.fk_idPdcto = producto.id_pdcto
WHERE SUM(antidad_pdctoTx*precio_pdcto);



-- FUNCIONALIDAD:Clientes por suscripción
-- Consultas: contar la cantidad de clientes VIP
-- Como: Se desea saber la cantidad de clientes que tienen la suscripcion VIP
SELECT COUNT(nombre_suscripcion) FROM suscripcion
WHERE nombre_suscripcion LIKE 'VIP';

	