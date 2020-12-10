
-- FUNCIONALIDAD: Comprar pase diario 
-- Consulta: Insertar un pase con id_cliente en la tabla pase
-- Caso: Cliente Claudelle compra pase diario platinum 
INSERT INTO pase
	(fk_idCte,fk_idCat,fecha_pase)
VALUES
	(2,3,'2021-01-02')
	
	
-- FUNCIONALIDAD:Comprar suscripcion
-- Consulta: Insertar nuevo cliente
-- Cómo: solicitar info de cliente, tipo de suscripcion y fecha de inicio del plan. (La fecha de finalización se ajusta mediante la suscripción seleccionada)
-- Cliente David se inscribe con un plan VIP entre 25/12/2020 y 24/11/2021
INSERT INTO cliente 
	(fk_idSuscripcion, nombre_cte, apellido_cte, telefono_cte, email_Cte, fechaPago_cte, pagado_cte,fechaISusc_cte, fechaFSusc_cte) 
VALUES 
	(5,'David','Torres', '364-269-7066','dtorres@gmail.com','2020-12-05',True,'2020-12-25','2021-11-24')

	
-- FUNCIONALIDAD: Comprar productos
-- Consultas:
	-- insert en transaccion con el id_cte, fecha del sistema
	-- insert pdcto_x_tx con id_tx, id_pdcto y cantidad
	-- update en producto (descontar cantidad comprada en inventario_pdcto
-- Cómo: 
INSERT INTO transaccion (fk_idCte, fecha_tx) VALUES (2, '2020-12-09');
INSERT INTO pdcto_x_tx (fk_idTx, fk_idPdcto, cantidad_pdctoTx) VALUES ('2020-12-09',1,1);
UPDATE producto SET id_pdcto = 1 WHERE inventario_pdcto = 19;
-- 

-- FUNCIONALIDAD:ordenar listado productos por precio
-- Consultas:
	-- select a la tabla de productos order_by asc o desc segun eleccion del usuario
SELECT * FROM producto ORDER BY precio_pdcto ASC;

-- FUNCIONALIDAD: stock productos ordenados por nombre
SELECT id_pdcto, nombre_pdcto, inventario_pdcto
from producto
order by nombre_pdcto 
-- Consultas:
-- 

-- FUNCIONALIDAD:Clientes por suscripción
-- Consultas: 
	--  Select tabla clientes groupby fk_idSuscripcion
SELECT fk_idsuscripcion, COUNT(id_cte)
FROM cliente 
GROUP BY fk_idsuscripcion
ORDER BY (fk_idsuscripcion) ASC
	