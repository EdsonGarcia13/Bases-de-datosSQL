-- insertando clientes
INSERT INTO "cliente" ("Nombre_cliente", "Direccion_cliente", "telefono_cliente") 
VALUES ('Juan Perez', 'Calle 1 #123', '555-1234'),
       ('Maria Rodriguez', 'Calle 2 #456', '555-5678'),
       ('Pedro Gomez', 'Calle 3 #789', '555-9012'),
       ('Ana Torres', 'Calle 4 #012', '555-3456'),
       ('Jose Lopez', 'Calle 5 #345', '555-7890');

-- insertando ventas
INSERT INTO "venta" ("id_cliente") 
VALUES (1), (3), (2), (4), (5);

-- insertando productos
INSERT INTO "producto" ("id_venta", "nombre_producto", "precio_producto", "fecha_venta")
VALUES (1, 'Producto A', 10, '2023-05-01'),
       (2, 'Producto B', 20, '2023-05-02'),
       (3, 'Producto C', 30, '2023-05-03'),
       (4, 'Producto D', 40, '2023-05-04'),
       (5, 'Producto E', 50, '2023-05-05');

-- insertando marcas
INSERT INTO "marca" ("Marca_producto", "id_producto", "id_venta")
VALUES ('Marca 1', 1, 1),
       ('Marca 2', 2, 2),
       ('Marca 3', 3, 3),
       ('Marca 4', 4, 4),
       ('Marca 5', 5, 5);