SELECT cliente.Nombre_cliente FROM cliente ORDER BY cliente.id_cliente ASC;

SELECT * FROM cliente ORDER BY "Nombre_cliente" ASC;

UPDATE cliente SET "Nombre_cliente" = 'Raul Perez' WHERE id_cliente = 1;

select * from producto

UPDATE producto SET fecha_venta = '2022-05-06' WHERE id_venta = 1;

SELECT fecha_venta 
FROM producto 
WHERE extract(year from fecha_venta) = 2022;

SELECT * FROM marca



