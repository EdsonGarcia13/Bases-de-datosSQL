CREATE OR REPLACE FUNCTION buscar_cliente_por_nombre(nom varchar)
RETURNS TABLE(id_cliente INTEGER, nombre_cliente VARCHAR, direccion_cliente VARCHAR, telefono_cliente VARCHAR) AS $$
BEGIN
  RETURN QUERY SELECT * FROM cliente WHERE "Nombre_cliente" ILIKE '%' || nom || '%';
END;
$$ LANGUAGE plpgsql;

SELECT * FROM buscar_cliente_por_nombre('Raul');

