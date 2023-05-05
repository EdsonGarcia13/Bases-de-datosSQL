El script utilizado es: 

CREATE TABLE "cliente" (
  "id_cliente" SERIAL PRIMARY KEY,
  "Nombre_cliente" varchar,
  "Direccion_cliente" varchar,
  "telefono_cliente" varchar
);

CREATE TABLE "venta" (
  "id_venta" SERIAL PRIMARY KEY,
  "id_cliente" integer,
  UNIQUE ("id_venta")
);

CREATE TABLE "producto" (
  "id_producto" SERIAL PRIMARY KEY,
  "id_venta" integer,
  "nombre_producto" varchar,
  "precio_producto" integer,
  "fecha_venta" Date,
  UNIQUE ("id_producto", "id_venta"),
  FOREIGN KEY ("id_venta") REFERENCES "venta" ("id_venta")
);

CREATE TABLE "marca" (
  "ID_marca" SERIAL PRIMARY KEY,
  "Marca_producto" varchar,
  "id_producto" integer,
  "id_venta" integer,
  FOREIGN KEY ("id_producto", "id_venta") REFERENCES "producto" ("id_producto", "id_venta")
);

ALTER TABLE "venta" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");
ALTER TABLE "producto" ADD FOREIGN KEY ("id_venta") REFERENCES "venta" ("id_venta");
