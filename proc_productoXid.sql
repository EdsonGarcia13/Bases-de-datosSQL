CREATE OR REPLACE FUNCTION mostrar_nombre_product(id_producto_in integer)
RETURNS varchar AS $$
DECLARE
    nombre_producto_tabla varchar;
BEGIN
    SELECT nombre_producto INTO nombre_producto_tabla
    FROM producto
    WHERE id_producto = id_producto_in;
    
    RETURN nombre_producto_tabla;
END;
$$ LANGUAGE plpgsql;

SELECT mostrar_nombre_product(3);
