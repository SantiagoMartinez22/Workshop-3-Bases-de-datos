use workshop3;
select * from oficinas;
INSERT INTO oficinas (ciudad_oficina, pais_oficina, region_oficina, codigo_postal, telefono, direccion)
VALUES
('Madrid', 'España', 'Norte', 10001, 123490, '123 Calle Principal'),
('Londres', 'Reino Unido', 'Europa', 23456, 2345901, '456 High Street'),
('Tokio', 'Japón', 'Asia', 100-0001, 345672, '789 Dirección Principal'),
('Sídney', 'Australia', 'Oceanía', 2947, 4567823, '321 Main Street'),
('México D.F.', 'México', 'América', 11930, 561234, '987 Avenida Principal'),
('París', 'Francia', 'Europa', 75001, 67845, '654 Rue Principale'),
('Roma', 'Italia', 'Europa', 00184, 78956, '321 Via Principale'),
('Río de Janeiro', 'Brasil', 'América', 203930, 8901234567, '987 Rua Principal'),
('Pekín', 'China', 'Asia', 100000, 903338, '654 Main Street'),
('Berlín', 'Alemania', 'Europa', 10115, 123490, '123 Hauptstraße');
select * from oficinas;

select * from gamas;
INSERT INTO gamas (descripcion, imagen_gama)
VALUES
('Gama Alta', 'imagen_gama_alta.png'),
('Gama Media', 'imagen_gama_media.png'),
('Gama Baja', 'imagen_gama_baja.png'),
('Gama Premium', 'imagen_gama_premium.png'),
('Gama Deportiva', 'imagen_gama_deportiva.png'),
('Gama Ejecutiva', 'imagen_gama_ejecutiva.png'),
('Gama Familiar', 'imagen_gama_familiar.png'),
('Gama SUV', 'imagen_gama_suv.png'),
('Gama Híbrida', 'imagen_gama_hibrida.png'),
('Gama Eléctrica', 'imagen_gama_electrica.png');
select * from gamas;

select * from productos;
INSERT INTO productos (nombre_producto, gama_producto, checkdimensiones, provedor_producto, descripcion, cantidad_stock, precio_venta, precio_provedor)
VALUES
  ('Cortadora de césped', 1, 1, 'Makita', 'Ideal para mantener el césped corto y limpio', 20, 99.99, 75.00),
  ('Podadora de setos', 2, 1, 'Black+Decker', 'Perfecta para dar forma a los setos y arbustos', 15, 59.99, 45.00),
  ('Manguera de riego', 3, 1, 'Gardena', 'Manguera resistente y flexible para regar tu jardín', 30, 19.99, 12.99),
  ('Fertilizante líquido', 4, 0, 'Scotts', 'Ayuda a mantener tus plantas sanas y nutridas', 50, 12.99, 8.99),
  ('Maceta de cerámica', 5, 1, 'Vondom', 'Elegante maceta para decorar tus plantas de interior', 25, 29.99, 22.50),
  ('Aspersor de jardín', 6, 1, 'Rain Bird', 'Riega tu jardín de manera eficiente y uniforme', 10, 39.99, 28.99),
  ('Sopladora de hojas', 7, 0, 'WORX', 'Elimina fácilmente las hojas y residuos del jardín', 8, 79.99, 65.00),
  ('Semillas de flores', 8, 1, 'Ferry Morse', 'Variedad de semillas para crear un jardín colorido', 100, 4.99, 3.50),
  ('Insecticida natural', 9, 1, 'Neudorff', 'Protege tus plantas de plagas de manera ecológica', 40, 9.99, 7.50),
  ('Escoba de jardín', 10, 0, 'Fiskars', 'Recoge hojas y residuos de forma rápida y eficiente', 12, 24.99, 19.99);
  select * from productos;


select * from empleados;
  INSERT INTO empleados (cod_oficina, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_jefe, puesto_empleado)
VALUES
  (11, 'Juan', 'Gómez', 'Sánchez', 1234, 'juan.gomez@example.com', NULL, 'Gerente'),
  (11, 'María', 'López', 'Rodríguez', 5678, 'maria.lopez@example.com', 1, 'Supervisor'),
  (12, 'Pedro', 'Martínez', 'González', 4321, 'pedro.martinez@example.com', 1, 'Supervisor'),
  (12, 'Laura', 'Fernández', 'Hernández', 8765, 'laura.fernandez@example.com', 1, 'Supervisor'),
  (13, 'Carlos', 'García', 'Pérez', 9876, 'carlos.garcia@example.com', 2, 'Asistente'),
  (13, 'Ana', 'Torres', 'Rojas', 6543, 'ana.torres@example.com', 2, 'Asistente'),
  (14, 'Luis', 'Díaz', 'Jiménez', 7890, 'luis.diaz@example.com', 3, 'Asistente'),
  (14, 'Elena', 'Vargas', 'López', 2109, 'elena.vargas@example.com', 3, 'Asistente'),
  (15, 'José', 'Ramírez', 'Soto', 5432, 'jose.ramirez@example.com', 2, 'Asistente'),
  (15, 'Sara', 'González', 'Flores', 1098, 'sara.gonzalez@example.com', 2, 'Asistente');
  
  INSERT INTO empleados (cod_oficina, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_jefe, puesto_empleado)
VALUES(12,'David','Vargas','soto',2233,'davidvs@gmail.com',null,'Representante de ventas');
INSERT INTO empleados (cod_oficina, nombre_empleado, apellido1_empleado, apellido2_empleado, extension_empleado, email_empleado, codigo_jefe, puesto_empleado)
VALUES(11,'Andrea','Vargas','soto',2433,'andreadvs@gmail.com',null,'Representante de ventas');
  
  
  
  select * from clientes;
  INSERT INTO clientes (nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, direccion1, direccion2, ciudad, region, pais, codigo_postal, limite_credito, codigo_empleado)
VALUES
  ('Jardineria 1', 'Andres', 'Gomez', '123456789', '987654321', 'Cll 49c', 'Piso 2', 'Medellin', 'Antioquia', 'Colombia', 12345, 1000.00, 41),
  ('Jardines y flores', 'Andrea', 'Perez', '987654321', '123456789', 'Avenida Central 2', 'Oficina 10', 'Madrid', 'Europa', 'España', 54321, 5000.00, 42),
  ('Jardineria exito', 'Ruben', 'Hoyos', '555555555', '999999999', 'Calle Secundaria 3', 'Apartamento 5', 'Moscu', 'Europa', 'Rusisa', 67890, 2000.00, 41),
   ('Jardineria la 46', 'Jairo', 'Garia', '4356236', '98765456', 'Cll 47c #3', 'Piso 8', 'Barcelona', 'Europa', 'España', 54321, 10000.00, 43),
  ('Jardines y floristeria', 'Juan', 'Torres', '31199999', '987678', 'Avenida paralela 2', 'Oficina 5', 'Moscu', 'Europa', 'Rusia', 5436621, 15000.00, 43),
  ('Deposito el o', 'Sara', 'Diaz', '785555', '97699999', 'Calle principal 33', 'Apartamento 2', 'Medellin', 'Antioquia', 'Colombia', 67850, 12000.00, 41);
  
  



select * from pago;
INSERT INTO pago (codigo_cliente, forma_pago, fecha_pago, total_x_pago)
VALUES
  (1, 'Tarjeta de Crédito', '2023-07-01', 100.50),
  (1, 'Transferencia Bancaria', '2023-07-02', 150.75),
  (2, 'PayPal', '2023-07-03', 75.25),
  (2, 'Efectivo', '2023-07-04', 200.00),
  (3, 'Cheque', '2023-07-05', 175.80),
  (3, 'Tarjeta de Débito', '2023-07-06', 90.60),
  (4, 'Transferencia Bancaria', '2023-07-07', 300.25),
  (4, 'Efectivo', '2023-07-08', 50.00),
  (5, 'Tarjeta de Crédito', '2023-07-09', 125.90),
  (5, 'PayPal', '2023-07-10', 80.30);
	INSERT INTO pago (codigo_cliente, forma_pago, fecha_pago, total_x_pago)
	VALUES (2, 'PayPal', '2008-07-10', 103.30);


INSERT INTO pedidos (codigo_cliente, fecha_pedido, fecha_esperada, fecha_entregada, estado, comentarios)
VALUES
  (3, '2008-07-10', '2008-07-15', '2008-07-14', 'Entregado', 'Comentario 13'),
  (4, '2009-05-20', '2009-05-25', '2009-05-24', 'En proceso', 'Comentario 14'),
  (1, '2023-01-01', '2023-01-05', '2023-01-04', 'En proceso', 'Entrega rápida y excelente servicio al cliente.'),
  (2, '2023-01-02', '2023-01-06', '2023-01-05', 'Entregado', 'Producto recibido en perfectas condiciones. ¡Muy satisfecho!'),
  (3, '2023-01-03', '2023-01-07', '2023-01-06', 'En proceso', 'El pedido llegó antes de lo esperado. ¡Gracias por la eficiencia!'),
  (4, '2023-01-04', '2023-01-08', '2023-01-07', 'Entregado', 'El estado del pedido fue actualizado de manera oportuna. Buen seguimiento.'),
  (5, '2023-01-05', '2023-01-09', '2023-01-08', 'Pendiente', 'Comunicación clara y precisa durante todo el proceso de envío.'),
  (1, '2023-01-06', '2023-01-10', '2023-01-09', 'Entregado', 'El artículo cumple con todas mis expectativas. ¡Recomendado!'),
  (2, '2023-01-07', '2023-01-11', '2023-01-10', 'Pendiente', 'El paquete llegó un poco dañado, pero el producto está bien.'),
  (6, '2008-01-08', '2008-01-12', '2008-01-11', 'Entregado', 'El pedido tardó más de lo esperado en ser entregado. Un poco decepcionado.'),
  (4, '2008-01-09', '2008-01-13', '2008-01-14', 'Pendiente', '¡Excelente calidad a un precio razonable! Muy contento con mi compra.'),
  (5, '2009-03-10', '2009-03-14', '2009-03-13', 'En proceso', 'Hubo un pequeño error en el pedido, pero se resolvió rápidamente.');

select* from pedidos;


insert into DetallesPedidos (cantidad, precio_unitario, codigo_pedido, codigo_producto) values (12, 610495.8, 1, 1);
insert into DetallesPedidos (cantidad, precio_unitario, codigo_pedido, codigo_producto) values (6, 1291562.2, 3, 2);
insert into DetallesPedidos (cantidad, precio_unitario, codigo_pedido, codigo_producto) values (87, 1476458.0, 3, 3);
insert into DetallesPedidos (cantidad, precio_unitario, codigo_pedido, codigo_producto) values (37, 327386.7, 4, 4);
insert into DetallesPedidos (cantidad, precio_unitario, codigo_pedido, codigo_producto) values (63, 444943.4, 4, 2);


update empleados
set codigo_jefe=7
where codigo_empleado=42 or codigo_empleado=50;
